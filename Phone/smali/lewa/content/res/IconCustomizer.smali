.class public Llewa/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/content/res/IconCustomizer$IconConfig;,
        Llewa/content/res/IconCustomizer$CustomizedIconsListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ATOP:I = 0x96

.field private static final ALPHA_MIN:I = 0xe6

.field public static final CUSTOMIZED_ICON_PATH:Ljava/lang/String; = null

.field public static final CUSTOMIZED_ICON_STAMP:Ljava/lang/String; = null

.field public static final FANCY_ICONS_INNER_PATH:Ljava/lang/String; = "fancy_icons/"

.field private static final ICON_ALIAS:Ljava/lang/String; = "/system/etc/icon_alias.config"

.field private static final ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "icon_transform.config"

.field private static final LOG_TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final MOD_BUILT_IN_ICONS:Ljava/lang/String; = "/system/media/theme/mod_icons"

.field private static final MOD_EXTRA_ICONS_DIR:Ljava/lang/String; = "/data/data/com.lewa.market/files/mod_icons/"

.field private static final MOD_ICONS_NAME:Ljava/lang/String; = "mod_icons"

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sCanvasForTransformBitmap:Landroid/graphics/Canvas;

.field private static sContext:Landroid/content/Context;

.field public static final sCustomizedIconHeight:I

.field public static final sCustomizedIconRect:Landroid/graphics/Rect;

.field public static final sCustomizedIconWidth:I

.field private static final sDensity:I

.field private static final sIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

.field private static sIconMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconTransformMatrix:Landroid/graphics/Matrix;

.field private static sModIcons:Ljava/util/zip/ZipFile;

.field private static sPaintForBackground:Landroid/graphics/Paint;

.field private static sPaintForBitmap:Landroid/graphics/Paint;

.field private static sPaintForMask:Landroid/graphics/Paint;

.field private static final sRawIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sScaledDensity:I

.field private static sSystemResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 68
    sget-boolean v0, Llewa/os/Process;->IS_SYSTEM:Z

    if-eqz v0, :cond_1

    const-string v0, "/data/system/customized_icons/"

    :goto_0
    sput-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".stamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    .line 94
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Llewa/content/res/IconCustomizer;->sDensity:I

    .line 96
    sget v0, Llewa/content/res/IconCustomizer;->sDensity:I

    invoke-static {v0}, Llewa/content/res/IconCustomizer;->scaleDensity(I)I

    move-result v0

    sput v0, Llewa/content/res/IconCustomizer;->sScaledDensity:I

    .line 100
    const/16 v0, 0x60

    invoke-static {v0}, Llewa/content/res/IconCustomizer;->scalePixel(I)I

    move-result v0

    sput v0, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 102
    sget v0, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sput v0, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Llewa/content/res/IconCustomizer;->sCustomizedIconRect:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 113
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 115
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Llewa/content/res/IconCustomizer;->sPaintForBitmap:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Llewa/content/res/IconCustomizer;->sPaintForBackground:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Llewa/content/res/IconCustomizer;->sPaintForMask:Landroid/graphics/Paint;

    .line 127
    sput-object v5, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    .line 129
    sput-object v5, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 132
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    const-string v1, "/system/etc/icon_alias.config"

    invoke-static {v0, v1}, Llewa/content/res/IconAlias;->loadAlias(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 133
    sget-object v0, Llewa/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 134
    sget-object v0, Llewa/content/res/IconCustomizer;->sPaintForBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 135
    sget-object v0, Llewa/content/res/IconCustomizer;->sPaintForMask:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 136
    sget-boolean v0, Llewa/os/Shell;->sLoaded:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    const/16 v1, 0x1ff

    invoke-static {v0, v1}, Llewa/os/Shell;->mkdirs(Ljava/lang/String;I)Z

    .line 138
    :cond_0
    return-void

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Llewa/os/Process;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    return-void
.end method

.method public static addIconMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 157
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public static checkModIcons()V
    .locals 15

    .prologue
    .line 190
    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 192
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v14, "/system/media/theme/mod_icons"

    invoke-interface {v13, v14}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v13

    iget-wide v8, v13, Llibcore/io/StructStat;->st_size:J

    .line 193
    .local v8, stamp:J
    const-wide/16 v5, 0x0

    .line 194
    .local v5, modifiedTime:J
    new-instance v3, Ljava/io/File;

    const-string v13, "/data/data/com.lewa.market/files/mod_icons/"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v3, extra:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 197
    :cond_0
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v14, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-interface {v13, v14}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v13

    iget-wide v0, v13, Llibcore/io/StructStat;->st_ctime:J

    .line 198
    .local v0, createdTime:J
    cmp-long v13, v5, v0

    if-gtz v13, :cond_3

    .line 199
    new-instance v10, Ljava/io/File;

    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v10, stampFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 201
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 202
    .local v7, reader:Ljava/io/BufferedReader;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 203
    .local v11, stampLast:J
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 204
    cmp-long v13, v8, v11

    if-nez v13, :cond_2

    .line 222
    .end local v0           #createdTime:J
    .end local v3           #extra:Ljava/io/File;
    .end local v5           #modifiedTime:J
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #stamp:J
    .end local v10           #stampFile:Ljava/io/File;
    .end local v11           #stampLast:J
    :goto_0
    return-void

    .line 207
    .restart local v0       #createdTime:J
    .restart local v3       #extra:Ljava/io/File;
    .restart local v5       #modifiedTime:J
    .restart local v8       #stamp:J
    .restart local v10       #stampFile:Ljava/io/File;
    :cond_1
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Llewa/os/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    const/16 v14, 0x1ff

    invoke-static {v13, v14}, Llewa/os/Shell;->chmod(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v0           #createdTime:J
    .end local v3           #extra:Ljava/io/File;
    .end local v5           #modifiedTime:J
    .end local v8           #stamp:J
    .end local v10           #stampFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 220
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "IconCustomizer"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #createdTime:J
    .restart local v3       #extra:Ljava/io/File;
    .restart local v5       #modifiedTime:J
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v8       #stamp:J
    .restart local v10       #stampFile:Ljava/io/File;
    .restart local v11       #stampLast:J
    :cond_2
    const/4 v13, 0x0

    :try_start_1
    invoke-static {v13}, Llewa/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 216
    .end local v0           #createdTime:J
    .end local v3           #extra:Ljava/io/File;
    .end local v5           #modifiedTime:J
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #stamp:J
    .end local v10           #stampFile:Ljava/io/File;
    .end local v11           #stampLast:J
    :cond_3
    :goto_1
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v14, "/system/media/theme/mod_icons"

    invoke-interface {v13, v14}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v13

    iget-wide v8, v13, Llibcore/io/StructStat;->st_size:J

    .line 217
    .restart local v8       #stamp:J
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Llewa/os/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    const/16 v14, 0x1ff

    invoke-static {v13, v14}, Llewa/os/Shell;->chmod(Ljava/lang/String;I)Z

    goto :goto_0

    .line 214
    .end local v8           #stamp:J
    :cond_4
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    const/16 v14, 0x1ff

    invoke-static {v13, v14}, Llewa/os/Shell;->mkdirs(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static clearCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    sget-object v1, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 226
    :try_start_0
    sget-object v0, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 227
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 229
    :try_start_1
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    sput-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    .line 232
    sput-object v2, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 233
    return-void

    .line 227
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 230
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 236
    sget-boolean v0, Llewa/os/Shell;->sLoaded:Z

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v0, "IconCustomizer"

    const-string v1, "clearCustomizedIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-static {v0}, Llewa/os/Shell;->remove(Ljava/lang/String;)Z

    .line 241
    sget-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    const/16 v1, 0x1ff

    invoke-static {v0, v1}, Llewa/os/Shell;->mkdirs(Ljava/lang/String;I)Z

    .line 242
    invoke-static {}, Llewa/content/res/IconCustomizer;->clearCache()V

    goto :goto_0

    .line 244
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/os/Shell;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modCover"

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 470
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 471
    .local v3, baseWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 472
    .local v7, baseHeight:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 473
    .local v1, basePixels:[I
    sget-object v9, Llewa/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 474
    .local v9, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v9, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 475
    if-eqz p1, :cond_0

    .line 476
    sget-object v0, Llewa/content/res/IconCustomizer;->sCustomizedIconRect:Landroid/graphics/Rect;

    sget-object v4, Llewa/content/res/IconCustomizer;->sPaintForMask:Landroid/graphics/Paint;

    invoke-virtual {v9, p1, v11, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 477
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 478
    if-eqz p2, :cond_1

    .line 479
    sget-object v10, Llewa/content/res/IconCustomizer;->sPaintForBackground:Landroid/graphics/Paint;

    .line 480
    .local v10, p:Landroid/graphics/Paint;
    invoke-static {v3, v7, v1}, Llewa/content/res/IconCustomizer;->getAverageColor(II[I)I

    move-result v8

    .line 481
    .local v8, bgColor:I
    const v0, 0xffffff

    and-int/2addr v0, v8

    if-eqz v0, :cond_3

    .line 482
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v8, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 486
    :goto_0
    sget-object v0, Llewa/content/res/IconCustomizer;->sCustomizedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v9, p2, v11, v0, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 488
    .end local v8           #bgColor:I
    .end local v10           #p:Landroid/graphics/Paint;
    :cond_1
    if-eqz p3, :cond_2

    .line 489
    sget-object v0, Llewa/content/res/IconCustomizer;->sCustomizedIconRect:Landroid/graphics/Rect;

    sget-object v2, Llewa/content/res/IconCustomizer;->sPaintForBitmap:Landroid/graphics/Paint;

    invoke-virtual {v9, p3, v11, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 490
    :cond_2
    return-object p0

    .line 484
    .restart local v8       #bgColor:I
    .restart local v10       #p:Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modCover"

    .prologue
    .line 435
    invoke-static {p1}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 436
    .local v2, mask:Landroid/graphics/Bitmap;
    invoke-static {p2}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    .local v0, background:Landroid/graphics/Bitmap;
    invoke-static {p3}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 438
    .local v1, cover:Landroid/graphics/Bitmap;
    invoke-static {p0, v2, v0, v1}, Llewa/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private static composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modCover"

    .prologue
    .line 443
    invoke-static {}, Llewa/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 444
    sget-object v6, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v6, v6, Llewa/content/res/IconCustomizer$IconConfig;->filters:Ljava/util/List;

    if-eqz v6, :cond_1

    sget-object v6, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v6, v6, Llewa/content/res/IconCustomizer$IconConfig;->filters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 445
    invoke-static {p0}, Llewa/graphics/BitmapInfo;->getBitmapInfo(Landroid/graphics/Bitmap;)Llewa/graphics/BitmapInfo;

    move-result-object v4

    .line 446
    .local v4, imgData:Llewa/graphics/BitmapInfo;
    sget-object v6, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v6, v6, Llewa/content/res/IconCustomizer$IconConfig;->filters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/graphics/IBitmapFilter;

    .line 447
    .local v2, filter:Llewa/graphics/IBitmapFilter;
    invoke-interface {v2, v4}, Llewa/graphics/IBitmapFilter;->process(Llewa/graphics/BitmapInfo;)V

    goto :goto_0

    .line 449
    .end local v2           #filter:Llewa/graphics/IBitmapFilter;
    :cond_0
    invoke-static {v4}, Llewa/graphics/BitmapInfo;->getBitmap(Llewa/graphics/BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 451
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #imgData:Llewa/graphics/BitmapInfo;
    :cond_1
    sget-object v6, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    if-eqz v6, :cond_2

    .line 452
    sget-object v6, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, v6}, Llewa/content/res/IconCustomizer;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 453
    :cond_2
    invoke-static {p1}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 454
    .local v5, mask:Landroid/graphics/Bitmap;
    invoke-static {p2}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 455
    .local v0, background:Landroid/graphics/Bitmap;
    invoke-static {p3}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 456
    .local v1, cover:Landroid/graphics/Bitmap;
    invoke-static {p0, v5, v0, v1}, Llewa/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "icon"
    .parameter "ratio"

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x4000

    .line 404
    sget v6, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 405
    .local v6, targetWidth:I
    sget v5, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 408
    .local v5, targetHeight:I
    instance-of v7, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    move-object v1, p0

    .line 409
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 410
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 411
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    if-nez v7, :cond_0

    .line 412
    sget-object v7, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 413
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 414
    .local v4, sourceWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 419
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .local v3, sourceHeight:I
    :goto_0
    invoke-virtual {p0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 420
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Llewa/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 423
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 425
    int-to-float v7, v6

    int-to-float v8, v4

    mul-float/2addr v8, p1

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    int-to-float v8, v5

    int-to-float v9, v3

    mul-float/2addr v9, p1

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 427
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 428
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 429
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 430
    return-object v0

    .line 416
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #sourceHeight:I
    .end local v4           #sourceWidth:I
    :cond_1
    move v4, v6

    .line 417
    .restart local v4       #sourceWidth:I
    move v3, v5

    .restart local v3       #sourceHeight:I
    goto :goto_0
.end method

.method private static ensureIconConfigLoaded()V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_0

    .line 250
    invoke-static {}, Llewa/content/res/IconCustomizer;->loadIconConfig()Llewa/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    sput-object v0, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    .line 251
    invoke-static {}, Llewa/content/res/IconCustomizer;->makeIconMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sput-object v0, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 253
    :cond_0
    return-void
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "base"

    .prologue
    .line 494
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llewa/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "base"
    .parameter "mask"
    .parameter "background"
    .parameter "cover"
    .parameter "cropOutside"

    .prologue
    .line 505
    invoke-static {p0, p4}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 506
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, p3}, Llewa/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "base"
    .parameter "cropOutside"

    .prologue
    .line 498
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const-string v2, "icon_background.png"

    const-string v3, "icon_cover.png"

    invoke-static {v0, v1, v2, v3}, Llewa/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateShortcutDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 516
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 517
    .local v0, base:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v2

    invoke-static {v0, v2}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 518
    .local v1, icon:Landroid/graphics/Bitmap;
    const-string v2, "icon_mask.png"

    const-string v3, "icon_shortcut_background.png"

    const-string v4, "icon_shortcut_cover.png"

    invoke-static {v1, v2, v3, v4}, Llewa/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static generateShortcutDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "base"

    .prologue
    .line 510
    const/4 v1, 0x0

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 511
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const-string v2, "icon_shortcut_background.png"

    const-string v3, "icon_shortcut_cover.png"

    invoke-static {v0, v1, v2, v3}, Llewa/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method private static getAverageColor(II[I)I
    .locals 18
    .parameter "height"
    .parameter "width"
    .parameter "pixels"

    .prologue
    .line 881
    const/16 v5, 0xe6

    .line 883
    .local v5, minAlpha:I
    const/16 v13, 0xa

    .line 886
    .local v13, stride:I
    const v6, 0x3e4ccccd

    .line 889
    .local v6, minSaturation:F
    div-int/lit8 v1, p1, 0xa

    .line 890
    .local v1, hSamples:I
    div-int/lit8 v14, p0, 0xa

    .line 893
    .local v14, vSamples:I
    const/4 v15, 0x3

    new-array v12, v15, [F

    fill-array-data v12, :array_0

    .line 898
    .local v12, sampleTotals:[F
    const/4 v15, 0x3

    new-array v2, v15, [F

    .line 900
    .local v2, hsv:[F
    const/4 v11, 0x0

    .line 901
    .local v11, sampleSize:I
    move v4, v14

    .local v4, j:I
    div-int v9, p0, v14

    .local v9, sV:I
    :goto_0
    move/from16 v0, p0

    if-ge v4, v0, :cond_2

    .line 903
    mul-int v7, v4, p1

    .line 904
    .local v7, s:I
    move v3, v1

    .local v3, i:I
    div-int v8, p1, v1

    .local v8, sH:I
    :goto_1
    move/from16 v0, p1

    if-ge v3, v0, :cond_1

    .line 906
    add-int v15, v7, v3

    aget v10, p2, v15

    .line 908
    .local v10, sample:I
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    const/16 v16, 0xe6

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 909
    invoke-static {v10, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 910
    const/4 v15, 0x1

    aget v15, v2, v15

    cmpl-float v15, v15, v6

    if-ltz v15, :cond_0

    .line 912
    const/4 v15, 0x0

    aget v16, v12, v15

    const/16 v17, 0x0

    aget v17, v2, v17

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 913
    const/4 v15, 0x1

    aget v16, v12, v15

    const/16 v17, 0x1

    aget v17, v2, v17

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 914
    const/4 v15, 0x2

    aget v16, v12, v15

    const/16 v17, 0x2

    aget v17, v2, v17

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 915
    add-int/lit8 v11, v11, 0x1

    .line 904
    :cond_0
    add-int/2addr v3, v8

    goto :goto_1

    .line 901
    .end local v10           #sample:I
    :cond_1
    add-int/2addr v4, v9

    goto :goto_0

    .line 920
    .end local v3           #i:I
    .end local v7           #s:I
    .end local v8           #sH:I
    :cond_2
    if-nez v11, :cond_3

    .line 921
    const/4 v15, 0x0

    .line 928
    :goto_2
    return v15

    .line 923
    :cond_3
    const/4 v15, 0x0

    aget v16, v12, v15

    int-to-float v0, v11

    move/from16 v17, v0

    div-float v16, v16, v17

    aput v16, v12, v15

    .line 924
    const/4 v15, 0x1

    aget v16, v12, v15

    int-to-float v0, v11

    move/from16 v17, v0

    div-float v16, v16, v17

    aput v16, v12, v15

    .line 925
    const/4 v15, 0x2

    aget v16, v12, v15

    int-to-float v0, v11

    move/from16 v17, v0

    div-float v16, v16, v17

    aput v16, v12, v15

    .line 928
    const/16 v15, 0x96

    invoke-static {v15, v12}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v15

    goto :goto_2

    .line 893
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static getContentRatio(Landroid/graphics/drawable/Drawable;)F
    .locals 4
    .parameter "icon"

    .prologue
    .line 869
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 870
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 871
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Llewa/util/ImageUtils;->findMaxSide(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 872
    .local v1, side:I
    if-lez v1, :cond_0

    .line 873
    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 875
    :goto_0
    return v2

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #side:I
    :cond_0
    const/high16 v2, -0x4080

    goto :goto_0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 565
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, v0, v1, v2}, Llewa/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 571
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 573
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 581
    .local v0, className:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    invoke-static {p0, v1, v0, v2}, Llewa/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    return-object v2

    .line 574
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_1

    .line 575
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 576
    .restart local v1       #packageName:Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0

    .line 578
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 579
    .restart local v1       #packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 606
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 609
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 610
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Llewa/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 611
    :cond_0
    return-object v0
.end method

.method private static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "resId"

    .prologue
    .line 586
    invoke-static {p1, p2}, Llewa/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 587
    .local v1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 588
    const-string v2, "lewa.png"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_0
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 590
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_1

    .line 591
    invoke-static {p0, p1, p3}, Llewa/content/res/IconCustomizer;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v1, v2}, Llewa/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 593
    :cond_1
    return-object v0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "original"

    .prologue
    .line 598
    invoke-static {p1, p2}, Llewa/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 599
    .local v1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 600
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 601
    invoke-static {p0, v1, p3}, Llewa/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 602
    :cond_0
    return-object v0
.end method

.method public static getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 623
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 616
    .local v1, filename:Ljava/lang/String;
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 617
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 618
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 619
    :cond_0
    return-object v0
.end method

.method private static declared-synchronized getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 10
    .parameter "context"
    .parameter
    .parameter "original"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v6, Llewa/content/res/IconCustomizer;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Llewa/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 629
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 630
    .local v2, filename:Ljava/lang/String;
    const/4 v1, 0x0

    .line 631
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 632
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-boolean v7, v7, Llewa/content/res/IconCustomizer$IconConfig;->isComposeThemeIcon:Z

    invoke-static {v5, v7}, Llewa/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 631
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 634
    :cond_0
    if-nez v1, :cond_4

    .line 635
    const/4 v0, 0x0

    .line 636
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v5, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-boolean v5, v5, Llewa/content/res/IconCustomizer$IconConfig;->isUseModIcon:Z

    if-eqz v5, :cond_1

    .line 637
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 638
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Llewa/content/res/IconCustomizer;->getModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 637
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 640
    .end local v4           #j:I
    :cond_1
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 641
    const/4 v5, 0x0

    invoke-static {p2, v5}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v5

    invoke-static {p2, v5}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 642
    :cond_2
    if-eqz v0, :cond_3

    .line 643
    const-string v5, "IconCustomizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generate customized icon for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v5, "icon_mask.png"

    const-string v7, "icon_background.png"

    const-string v8, "icon_cover.png"

    invoke-static {v0, v5, v7, v8}, Llewa/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 646
    invoke-static {v2, v0, p0}, Llewa/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 648
    :cond_3
    invoke-static {v0}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 650
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz v1, :cond_5

    .line 651
    sget-object v7, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 652
    :try_start_1
    sget-object v5, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    :cond_5
    monitor-exit v6

    return-object v1

    .line 653
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 628
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #i:I
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 523
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-static {p0, v0, v1}, Llewa/content/res/IconCustomizer;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 528
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 529
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p2}, Llewa/content/res/IconCustomizer;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 531
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method private static getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 536
    sget v0, Llewa/content/res/IconCustomizer;->sScaledDensity:I

    invoke-static {p0, p1, v0}, Llewa/content/res/IconCustomizer;->getDrawableForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "res"
    .parameter "resId"
    .parameter "density"

    .prologue
    .line 541
    :try_start_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 542
    .local v4, value:Landroid/util/TypedValue;
    const/4 v5, 0x1

    invoke-virtual {p0, p1, p2, v4, v5}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 543
    const/4 v3, 0x0

    .line 544
    .local v3, isColorDrawable:Z
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_0

    .line 546
    const/4 v3, 0x1

    .line 548
    :cond_0
    if-nez v3, :cond_1

    .line 549
    iget-object v5, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, file:Ljava/lang/String;
    const-string v5, ".xml"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 551
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iget v6, v4, Landroid/util/TypedValue;->assetCookie:I

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 553
    .local v2, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    invoke-static {p0, v4, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 554
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #isColorDrawable:Z
    .end local v4           #value:Landroid/util/TypedValue;
    :goto_0
    return-object v0

    .line 559
    :catch_0
    move-exception v5

    .line 561
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 558
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "name"

    .prologue
    .line 822
    sget-object v2, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 823
    :try_start_0
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 824
    .local v0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    monitor-exit v2

    .line 827
    :goto_0
    return-object v1

    .line 826
    :cond_0
    monitor-exit v2

    .line 827
    const/4 v1, 0x0

    goto :goto_0

    .line 826
    .end local v0           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "filename"

    .prologue
    .line 808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, pathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 810
    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 812
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 818
    :goto_0
    return-object v3

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 818
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 813
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 700
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getFancyIconRelativePath(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    .line 950
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 951
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 952
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 959
    .local v0, className:Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Llewa/content/res/IconCustomizer;->getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v0           #className:Ljava/lang/String;
    .end local v1           #packageName:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 953
    :cond_0
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_1

    .line 954
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 955
    .restart local v1       #packageName:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0

    .line 957
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 932
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 933
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v4

    .line 934
    .local v4, res:Llewa/content/res/ThemeResources;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 935
    .local v1, name:Ljava/lang/String;
    const-string v5, ".png"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 936
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".png"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 937
    :cond_1
    invoke-virtual {v4, v1}, Llewa/content/res/ThemeResources;->hasFancyIcon(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 938
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fancy_icons/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 939
    .local v3, relativePath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "manifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llewa/content/res/ThemeResources;->hasIcon(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 944
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #relativePath:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 1000
    if-nez p1, :cond_0

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1005
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3
    .parameter "path"

    .prologue
    .line 660
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 662
    const/16 v2, 0x1a4

    invoke-static {p0, v2}, Llewa/os/Shell;->chmod(Ljava/lang/String;I)Z

    .line 663
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v2

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getIconConfig()Llewa/content/res/IconCustomizer$IconConfig;
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Llewa/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 257
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    return-object v0
.end method

.method private static getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "name"

    .prologue
    .line 831
    sget-object v2, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 832
    :try_start_0
    sget-object v1, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 833
    .local v0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    monitor-exit v2

    .line 836
    :goto_0
    return-object v1

    .line 835
    :cond_0
    monitor-exit v2

    .line 836
    const/4 v1, 0x0

    goto :goto_0

    .line 835
    .end local v0           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getIconFromTheme(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filename"
    .parameter "compose"

    .prologue
    .line 840
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v1

    sget-object v2, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Llewa/content/res/ThemeResources;->getDensityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Llewa/content/res/ThemeResources;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 842
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 843
    sget v1, Llewa/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 849
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 850
    invoke-static {v0}, Llewa/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 851
    if-eqz p1, :cond_2

    const-string v1, "icon_mask_theme.png"

    const-string v2, "icon_background_theme.png"

    const-string v3, "icon_cover_theme.png"

    invoke-static {v0, v1, v2, v3}, Llewa/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 854
    :goto_1
    return-object v1

    .line 845
    :cond_1
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v1

    sget-object v2, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v2, p0}, Llewa/content/res/ThemeResources;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_0

    .line 847
    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 851
    goto :goto_1

    .line 854
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .local v2, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-object v2

    .line 970
    :cond_1
    invoke-static {}, Llewa/content/res/ThemeResources;->isIconV4()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 971
    if-eqz p1, :cond_2

    .line 972
    invoke-static {p1}, Llewa/content/res/IconCustomizer;->getV4IconName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    sget-object v3, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 974
    .local v1, mappingName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 975
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    .end local v1           #mappingName:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Llewa/content/res/IconCustomizer;->getV4IconName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    sget-object v3, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 979
    .restart local v1       #mappingName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 980
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 982
    .end local v1           #mappingName:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, fileName:Ljava/lang/String;
    sget-object v3, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 984
    .restart local v1       #mappingName:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 985
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    if-eqz p1, :cond_5

    .line 988
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    sget-object v3, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mappingName:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 993
    .restart local v1       #mappingName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static getModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "fileName"

    .prologue
    .line 754
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.lewa.market/files/mod_icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .local v2, iconFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Llewa/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 799
    :goto_0
    return-object v0

    .line 759
    :catch_0
    move-exception v4

    .line 762
    :cond_0
    :goto_1
    sget-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    .line 763
    new-instance v2, Ljava/io/File;

    .end local v2           #iconFile:Ljava/io/File;
    const-string v4, "/system/media/theme/mod_icons"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .restart local v2       #iconFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 766
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipFile;

    const-string v5, "/system/media/theme/mod_icons"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    sput-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 771
    :cond_1
    :goto_2
    sget-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;

    if-eqz v4, :cond_3

    .line 772
    const/4 v3, 0x0

    .line 774
    .local v3, is:Ljava/io/InputStream;
    :try_start_2
    sget-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 775
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_2

    .line 776
    sget-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 777
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Llewa/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 782
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 785
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_3
    :goto_3
    sget-object v4, Llewa/content/res/IconCustomizer;->sContext:Landroid/content/Context;

    if-eqz v4, :cond_5

    .line 786
    const/4 v3, 0x0

    .line 788
    .restart local v3       #is:Ljava/io/InputStream;
    :try_start_3
    sget-object v4, Llewa/content/res/IconCustomizer;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mod_icons/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 789
    if-eqz v3, :cond_4

    .line 790
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Llewa/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 791
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 796
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 779
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 782
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 780
    :catch_2
    move-exception v4

    .line 782
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :catchall_0
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 796
    :cond_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 799
    .end local v3           #is:Ljava/io/InputStream;
    :cond_5
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 794
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v4

    .line 796
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    :catchall_1
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 767
    .end local v3           #is:Ljava/io/InputStream;
    :catch_4
    move-exception v4

    goto :goto_2

    .line 758
    :catch_5
    move-exception v4

    goto/16 :goto_1
.end method

.method public static getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filename"

    .prologue
    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    invoke-static {p0}, Llewa/content/res/IconCustomizer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 740
    if-nez v0, :cond_0

    .line 741
    const/4 v1, 0x0

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 742
    if-nez v0, :cond_0

    .line 743
    invoke-static {p0}, Llewa/content/res/IconCustomizer;->getModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 746
    :cond_0
    if-eqz v0, :cond_1

    .line 747
    sget-object v2, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 748
    :try_start_0
    sget-object v1, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    monitor-exit v2

    .line 750
    :cond_1
    return-object v0

    .line 749
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .locals 2
    .parameter "icon"
    .parameter "cropOutside"

    .prologue
    .line 704
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getScaleRatioRaw(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->baseScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private static getScaleRatioRaw(Landroid/graphics/drawable/Drawable;Z)F
    .locals 9
    .parameter "icon"
    .parameter "cropOutside"

    .prologue
    const/high16 v7, 0x3f80

    .line 708
    invoke-static {}, Llewa/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 709
    instance-of v6, p0, Landroid/graphics/drawable/PaintDrawable;

    if-nez v6, :cond_3

    .line 712
    instance-of v6, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 713
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 714
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 715
    .local v5, sourceWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 720
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v4, sourceHeight:I
    :goto_0
    if-lez v5, :cond_3

    if-lez v5, :cond_3

    .line 721
    sget v6, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v6, v6

    int-to-float v8, v5

    div-float v3, v6, v8

    .line 722
    .local v3, ratioW:F
    sget v6, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v6, v6

    int-to-float v8, v4

    div-float v2, v6, v8

    .line 723
    .local v2, ratioH:F
    if-eqz p1, :cond_1

    .line 724
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 733
    .end local v2           #ratioH:F
    .end local v3           #ratioW:F
    .end local v4           #sourceHeight:I
    .end local v5           #sourceWidth:I
    :goto_1
    return v6

    .line 717
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 718
    .restart local v5       #sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .restart local v4       #sourceHeight:I
    goto :goto_0

    .line 725
    .restart local v2       #ratioH:F
    .restart local v3       #ratioW:F
    :cond_1
    invoke-static {p0}, Llewa/content/res/IconCustomizer;->getContentRatio(Landroid/graphics/drawable/Drawable;)F

    move-result v1

    .line 726
    .local v1, contentRatio:F
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_2

    const/high16 v6, 0x4000

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_2

    .line 727
    const v6, 0x3f666666

    mul-float/2addr v6, v1

    goto :goto_1

    .line 729
    :cond_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_1

    .end local v1           #contentRatio:F
    .end local v2           #ratioH:F
    .end local v3           #ratioW:F
    .end local v4           #sourceHeight:I
    .end local v5           #sourceWidth:I
    :cond_3
    move v6, v7

    .line 733
    goto :goto_1
.end method

.method private static getV4IconName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hdpiSizeToCurrent(F)F
    .locals 2
    .parameter "pixelSize"

    .prologue
    .line 400
    sget v0, Llewa/content/res/IconCustomizer;->sDensity:I

    int-to-float v0, v0

    const/high16 v1, 0x4370

    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static loadIconAlias(Ljava/lang/String;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 146
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 147
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-static {v0, p0}, Llewa/content/res/IconAlias;->loadAlias(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private static loadIconConfig()Llewa/content/res/IconCustomizer$IconConfig;
    .locals 24

    .prologue
    .line 261
    new-instance v5, Llewa/content/res/IconCustomizer$IconConfig;

    invoke-direct {v5}, Llewa/content/res/IconCustomizer$IconConfig;-><init>()V

    .line 262
    .local v5, config:Llewa/content/res/IconCustomizer$IconConfig;
    const/4 v13, 0x0

    .line 264
    .local v13, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v21

    const-string v22, "icon_transform.config"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Llewa/content/res/ThemeResources;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 265
    if-nez v13, :cond_0

    .line 364
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 366
    :goto_0
    return-object v5

    .line 267
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    .line 269
    .local v9, doc:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_17

    .line 270
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 271
    .local v8, configs:Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .local v12, i:I
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .local v3, N:I
    :goto_1
    if-ge v12, v3, :cond_17

    .line 272
    invoke-interface {v8, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 273
    .local v16, node:Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 274
    move-object/from16 v0, v16

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v11, v0

    .line 275
    .local v11, ele:Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    .line 276
    .local v15, name:Ljava/lang/String;
    const-string v21, "IconFilters"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 277
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->filters:Ljava/util/List;

    .line 271
    .end local v11           #ele:Lorg/w3c/dom/Element;
    .end local v15           #name:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 278
    .restart local v11       #ele:Lorg/w3c/dom/Element;
    .restart local v15       #name:Ljava/lang/String;
    :cond_2
    const-string v21, "IconShadow"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 279
    const-string v21, "radius"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 280
    .local v20, radius:Ljava/lang/String;
    const-string v21, "color"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, color:Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 282
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sget-object v22, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->shadowRadius:F

    .line 285
    :cond_3
    if-eqz v4, :cond_1

    const-string v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 286
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->shadowColor:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 361
    .end local v3           #N:I
    .end local v4           #color:Ljava/lang/String;
    .end local v8           #configs:Lorg/w3c/dom/NodeList;
    .end local v9           #doc:Lorg/w3c/dom/Element;
    .end local v11           #ele:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #node:Lorg/w3c/dom/Node;
    .end local v20           #radius:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 362
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v21, "IconCustomizer"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 288
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v3       #N:I
    .restart local v8       #configs:Lorg/w3c/dom/NodeList;
    .restart local v9       #doc:Lorg/w3c/dom/Element;
    .restart local v11       #ele:Lorg/w3c/dom/Element;
    .restart local v12       #i:I
    .restart local v15       #name:Ljava/lang/String;
    .restart local v16       #node:Lorg/w3c/dom/Node;
    :cond_4
    :try_start_3
    const-string v21, "Config"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 289
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, configName:Ljava/lang/String;
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, configValue:Ljava/lang/String;
    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    .line 292
    const-string v21, "UseModIcon"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 293
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->isUseModIcon:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 364
    .end local v3           #N:I
    .end local v6           #configName:Ljava/lang/String;
    .end local v7           #configValue:Ljava/lang/String;
    .end local v8           #configs:Lorg/w3c/dom/NodeList;
    .end local v9           #doc:Lorg/w3c/dom/Element;
    .end local v11           #ele:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #node:Lorg/w3c/dom/Node;
    :catchall_0
    move-exception v21

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v21

    .line 294
    .restart local v3       #N:I
    .restart local v6       #configName:Ljava/lang/String;
    .restart local v7       #configValue:Ljava/lang/String;
    .restart local v8       #configs:Lorg/w3c/dom/NodeList;
    .restart local v9       #doc:Lorg/w3c/dom/Element;
    .restart local v11       #ele:Lorg/w3c/dom/Element;
    .restart local v12       #i:I
    .restart local v15       #name:Ljava/lang/String;
    .restart local v16       #node:Lorg/w3c/dom/Node;
    :cond_5
    :try_start_4
    const-string v21, "ComposeThemeIcon"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 295
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->isComposeThemeIcon:Z

    goto/16 :goto_2

    .line 296
    :cond_6
    const-string v21, "BaseScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 297
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->baseScale:F

    goto/16 :goto_2

    .line 300
    .end local v6           #configName:Ljava/lang/String;
    .end local v7           #configValue:Ljava/lang/String;
    :cond_7
    const-string v21, "PointsMapping"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 301
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v18, pointsMappingFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v19, pointsMappingTo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 304
    .local v17, points:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, j:I
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, M:I
    :goto_3
    if-ge v14, v2, :cond_9

    .line 305
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 306
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 307
    move-object/from16 v0, v16

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v11, v0

    .line 308
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    .line 309
    const-string v21, "Point"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 310
    const-string v21, "fromX"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v21, "fromY"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v21, "toX"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const-string v21, "toY"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 321
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingTo:[F

    .line 322
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v14, v21, -0x1

    :goto_4
    if-ltz v14, :cond_a

    .line 323
    iget-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingTo:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    aput v21, v22, v14

    .line 322
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 325
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    .line 326
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v14, v21, -0x1

    :goto_5
    if-ltz v14, :cond_1

    .line 327
    iget-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    aput v21, v22, v14

    .line 326
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 329
    .end local v2           #M:I
    .end local v14           #j:I
    .end local v17           #points:Lorg/w3c/dom/NodeList;
    .end local v18           #pointsMappingFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v19           #pointsMappingTo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_b
    const-string v21, "ScaleX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 330
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->scaleX:F

    goto/16 :goto_2

    .line 331
    :cond_c
    const-string v21, "ScaleY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 332
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->scaleY:F

    goto/16 :goto_2

    .line 333
    :cond_d
    const-string v21, "ScaleX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 334
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->scaleX:F

    goto/16 :goto_2

    .line 335
    :cond_e
    const-string v21, "SkewX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 336
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->skewX:F

    goto/16 :goto_2

    .line 337
    :cond_f
    const-string v21, "SkewY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 338
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->skewY:F

    goto/16 :goto_2

    .line 339
    :cond_10
    const-string v21, "TransX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 340
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->transX:F

    goto/16 :goto_2

    .line 342
    :cond_11
    const-string v21, "TransY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 343
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->transY:F

    goto/16 :goto_2

    .line 345
    :cond_12
    const-string v21, "RotateX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 346
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->rotateX:F

    goto/16 :goto_2

    .line 347
    :cond_13
    const-string v21, "RotateY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 348
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->rotateY:F

    goto/16 :goto_2

    .line 349
    :cond_14
    const-string v21, "RotateZ"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 350
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->rotateZ:F

    goto/16 :goto_2

    .line 351
    :cond_15
    const-string v21, "CameraX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 352
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->cameraX:F

    goto/16 :goto_2

    .line 354
    :cond_16
    const-string v21, "CameraY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 355
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->cameraY:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 364
    .end local v3           #N:I
    .end local v8           #configs:Lorg/w3c/dom/NodeList;
    .end local v11           #ele:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #node:Lorg/w3c/dom/Node;
    :cond_17
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0
.end method

.method private static loadIconFilters(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 15
    .parameter "configs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List",
            "<",
            "Llewa/graphics/IBitmapFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Llewa/graphics/IBitmapFilter;>;"
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v6, v0, :cond_3

    .line 372
    invoke-interface {p0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 373
    invoke-interface {p0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 374
    .local v2, ele:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, name:Ljava/lang/String;
    const-string v13, "Filter"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 376
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 377
    .local v4, filterChildren:Lorg/w3c/dom/NodeList;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v12, paramEntrys:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .local v7, j:I
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .local v1, O:I
    :goto_1
    if-ge v7, v1, :cond_1

    .line 379
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 380
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 381
    .local v11, paramEle:Lorg/w3c/dom/Element;
    const-string v13, "Param"

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 382
    new-instance v10, Ljava/util/AbstractMap$SimpleEntry;

    const-string v13, "name"

    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "value"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    .local v10, param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v10           #param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #paramEle:Lorg/w3c/dom/Element;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 389
    :cond_1
    const-string v13, "name"

    invoke-interface {v2, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, filterName:Ljava/lang/String;
    invoke-static {v5, v12}, Llewa/graphics/IBitmapFilter$Factory;->create(Ljava/lang/String;Ljava/util/List;)Llewa/graphics/IBitmapFilter;

    move-result-object v3

    .line 391
    .local v3, filter:Llewa/graphics/IBitmapFilter;
    if-eqz v3, :cond_2

    .line 392
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v1           #O:I
    .end local v2           #ele:Lorg/w3c/dom/Element;
    .end local v3           #filter:Llewa/graphics/IBitmapFilter;
    .end local v4           #filterChildren:Lorg/w3c/dom/NodeList;
    .end local v5           #filterName:Ljava/lang/String;
    .end local v7           #j:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #paramEntrys:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 396
    :cond_3
    return-object v8
.end method

.method private static makeIconMatrix()Landroid/graphics/Matrix;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x4000

    .line 1047
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1048
    .local v0, matrix:Landroid/graphics/Matrix;
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    if-eqz v1, :cond_0

    .line 1049
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    sget-object v3, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v3, v3, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingTo:[F

    sget-object v4, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v4, v4, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    array-length v4, v4

    div-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 1064
    :goto_0
    return-object v0

    .line 1053
    :cond_0
    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    .line 1054
    .local v6, camera:Landroid/graphics/Camera;
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->rotateX:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 1055
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->rotateY:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1056
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->rotateZ:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 1057
    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1058
    sget v1, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Llewa/content/res/IconCustomizer$IconConfig;->cameraX:F

    sub-float/2addr v1, v2

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Llewa/content/res/IconCustomizer$IconConfig;->cameraY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1060
    sget v1, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Llewa/content/res/IconCustomizer$IconConfig;->cameraX:F

    add-float/2addr v1, v2

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Llewa/content/res/IconCustomizer$IconConfig;->cameraY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1062
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->scaleX:F

    sget-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Llewa/content/res/IconCustomizer$IconConfig;->scaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1063
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->skewX:F

    sget-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Llewa/content/res/IconCustomizer$IconConfig;->skewY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto :goto_0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1009
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llewa/content/res/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Llewa/content/res/IconCustomizer$CustomizedIconsListener;)V

    .line 1010
    return-void
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Llewa/content/res/IconCustomizer$CustomizedIconsListener;)V
    .locals 12
    .parameter "context"
    .parameter "l"

    .prologue
    .line 1013
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1014
    .local v5, launcherIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1015
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1016
    .local v8, pm:Landroid/content/pm/PackageManager;
    sget-boolean v9, Llewa/os/Process;->IS_SYSTEM:Z

    .line 1017
    .local v9, processIcon:Z
    const/4 v10, 0x0

    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1018
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    .line 1019
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {p1, v10}, Llewa/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    .line 1020
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1021
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1022
    .local v4, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v4, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1023
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_1

    .line 1024
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1025
    .local v7, packageName:Ljava/lang/String;
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1026
    .local v1, className:Ljava/lang/String;
    invoke-static {v7, v1}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1027
    invoke-static {p0, v7, v1, v3}, Llewa/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1029
    .end local v1           #className:Ljava/lang/String;
    .end local v7           #packageName:Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 1030
    invoke-interface {p1, v2}, Llewa/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    .line 1020
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1033
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #info:Landroid/content/pm/ActivityInfo;
    :cond_3
    if-eqz p1, :cond_4

    .line 1034
    invoke-interface {p1}, Llewa/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    .line 1035
    :cond_4
    return-void
.end method

.method private static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 6
    .parameter "fileName"
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Llewa/os/Process;->IS_SYSTEM:Z

    if-eqz v3, :cond_1

    const-string v3, "/cache/"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    .line 676
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 677
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 678
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, target:Ljava/lang/String;
    invoke-static {v1, v2}, Llewa/os/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 681
    const/16 v3, 0x1a4

    invoke-static {v2, v3}, Llewa/os/Shell;->chmod(Ljava/lang/String;I)Z

    .line 682
    invoke-static {v1}, Llewa/os/Shell;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 687
    .end local v2           #target:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 689
    .end local v1           #path:Ljava/lang/String;
    :goto_1
    return-void

    .line 672
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 684
    :catch_0
    move-exception v3

    .line 687
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 685
    :catch_1
    move-exception v3

    .line 687
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"
    .parameter "dr"
    .parameter "context"

    .prologue
    .line 693
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 694
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p3}, Llewa/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 697
    :cond_0
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "icon"

    .prologue
    .line 858
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    if-eq v1, v2, :cond_1

    .line 860
    :cond_0
    sget v1, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 862
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v1, Llewa/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 865
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private static scaleDensity(I)I
    .locals 4
    .parameter "densityDpi"

    .prologue
    .line 161
    sparse-switch p0, :sswitch_data_0

    .line 172
    const-wide/high16 v0, 0x3ff8

    int-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    return v0

    .line 163
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 165
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    .line 167
    :sswitch_2
    const/16 v0, 0x140

    goto :goto_0

    .line 170
    :sswitch_3
    const/16 v0, 0x1e0

    goto :goto_0

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_3
    .end sparse-switch
.end method

.method private static scalePixel(I)I
    .locals 3
    .parameter "px"

    .prologue
    .line 177
    sget v0, Llewa/content/res/IconCustomizer;->sDensity:I

    .line 178
    .local v0, density:I
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_0

    .line 179
    const/16 v2, 0x54

    .line 182
    :goto_0
    return v2

    .line 181
    :cond_0
    mul-int v2, p0, v0

    div-int/lit16 v1, v2, 0xf0

    .line 182
    .local v1, i:I
    rem-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 803
    sput-object p0, Llewa/content/res/IconCustomizer;->sContext:Landroid/content/Context;

    .line 804
    invoke-static {}, Llewa/content/res/IconCustomizer;->checkModIcons()V

    .line 805
    return-void
.end method

.method private static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "base"
    .parameter "matrix"

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    .local v0, outBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 463
    sget-object v1, Llewa/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 464
    sget-object v1, Llewa/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    sget-object v2, Llewa/content/res/IconCustomizer;->sPaintForBitmap:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 465
    return-object v0
.end method
