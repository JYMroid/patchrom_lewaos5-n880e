.class public Landroid/app/backup/WallpaperBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "WallpaperBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final STAGE_FILE:Ljava/lang/String; = "/data/system/users/0/wallpaper-tmp"

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupHelper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String; = "/data/system/users/0/wallpaper"

.field public static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String; = "/data/system/users/0/wallpaper_info.xml"

.field public static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# instance fields
.field mContext:Landroid/content/Context;

.field mDesiredMinHeight:D

.field mDesiredMinWidth:D

.field mFiles:[Ljava/lang/String;

.field mKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "files"
    .parameter "keys"

    .prologue
    const-wide/16 v6, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p1, p0, Landroid/app/backup/WallpaperBackupHelper;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    .line 73
    iput-object p3, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    .line 76
    const-string v4, "wallpaper"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 77
    .local v3, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    .line 78
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    .line 80
    iget-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    cmpg-double v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 81
    :cond_0
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 82
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 83
    .local v0, d:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 84
    .local v1, size:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 85
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    .line 86
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    .line 92
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #size:Landroid/graphics/Point;
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_1
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/backup/WallpaperBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/app/backup/WallpaperBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/users/0/wallpaper"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, f:Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    .line 165
    .end local v0           #f:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v2, "/data/system/wallpaper_info.xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/users/0/wallpaper_info.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    goto :goto_0
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
