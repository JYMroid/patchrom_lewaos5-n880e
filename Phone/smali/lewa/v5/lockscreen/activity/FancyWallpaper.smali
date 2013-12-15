.class public Llewa/v5/lockscreen/activity/FancyWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "FancyWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;

    invoke-direct {v0, p0, p0}, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;-><init>(Llewa/v5/lockscreen/activity/FancyWallpaper;Landroid/content/Context;)V

    return-object v0
.end method
