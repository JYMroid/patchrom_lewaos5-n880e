.class Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "FancyWallpaper.java"

# interfaces
.implements Llewa/laml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/v5/lockscreen/activity/FancyWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FancyEngine"
.end annotation


# static fields
.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private mContext:Llewa/laml/ScreenContext;

.field private mListener:Llewa/laml/SingleRootListener;

.field protected mRendererController:Llewa/laml/RendererController;

.field private mResourceMgr:Llewa/laml/LifecycleResourceManager;

.field protected mRoot:Llewa/laml/ScreenElementRoot;

.field private mThread:Llewa/laml/RenderThread;

.field final synthetic this$0:Llewa/v5/lockscreen/activity/FancyWallpaper;


# direct methods
.method public constructor <init>(Llewa/v5/lockscreen/activity/FancyWallpaper;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    .line 45
    iput-object p1, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->this$0:Llewa/v5/lockscreen/activity/FancyWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 46
    new-instance v1, Llewa/v5/lockscreen/WallpaperResourceLoader;

    invoke-direct {v1}, Llewa/v5/lockscreen/WallpaperResourceLoader;-><init>()V

    .line 47
    .local v1, res:Llewa/v5/lockscreen/WallpaperResourceLoader;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Llewa/v5/lockscreen/WallpaperResourceLoader;->setLocal(Ljava/util/Locale;)Llewa/laml/ResourceLoader;

    .line 48
    new-instance v0, Llewa/laml/LifecycleResourceManager;

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x36ee80

    invoke-direct/range {v0 .. v5}, Llewa/laml/LifecycleResourceManager;-><init>(Llewa/laml/ResourceLoader;JJ)V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mResourceMgr:Llewa/laml/LifecycleResourceManager;

    .line 49
    new-instance v0, Llewa/laml/ScreenContext;

    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mResourceMgr:Llewa/laml/LifecycleResourceManager;

    new-instance v3, Llewa/v5/lockscreen/LockScreenElementFactory;

    invoke-direct {v3}, Llewa/v5/lockscreen/LockScreenElementFactory;-><init>()V

    invoke-direct {v0, p2, v2, v3}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;)V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mContext:Llewa/laml/ScreenContext;

    .line 50
    new-instance v0, Llewa/laml/ScreenElementRoot;

    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mContext:Llewa/laml/ScreenContext;

    invoke-direct {v0, v2}, Llewa/laml/ScreenElementRoot;-><init>(Llewa/laml/ScreenContext;)V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 51
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->load()Z

    .line 52
    new-instance v0, Llewa/laml/SingleRootListener;

    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v0, v2, p0}, Llewa/laml/SingleRootListener;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/RendererController$IRenderable;)V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mListener:Llewa/laml/SingleRootListener;

    .line 53
    new-instance v0, Llewa/laml/RendererController;

    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mListener:Llewa/laml/SingleRootListener;

    invoke-direct {v0, v2}, Llewa/laml/RendererController;-><init>(Llewa/laml/RendererController$Listener;)V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRendererController:Llewa/laml/RendererController;

    .line 54
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v2}, Llewa/laml/ScreenElementRoot;->setRenderController(Llewa/laml/RendererController;)V

    .line 55
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->init()V

    .line 56
    new-instance v0, Llewa/laml/RenderThread;

    invoke-direct {v0}, Llewa/laml/RenderThread;-><init>()V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    .line 57
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->start()V

    .line 58
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v2}, Llewa/laml/RenderThread;->addRendererController(Llewa/laml/RendererController;)V

    .line 59
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public cleanUp(Z)V
    .locals 2
    .parameter "keepResource"

    .prologue
    .line 99
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Llewa/laml/ScreenElementRoot;->setKeepResource(Z)V

    .line 100
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->setRenderController(Llewa/laml/RendererController;)V

    .line 101
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->setStop()V

    .line 103
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    iget-object v1, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->removeRendererController(Llewa/laml/RendererController;)V

    .line 104
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->finish()V

    .line 106
    :cond_0
    return-void
.end method

.method public doRender()V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 111
    .local v1, holder:Landroid/view/SurfaceHolder;
    const/4 v0, 0x0

    .line 113
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v2}, Llewa/laml/RenderThread;->isStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 121
    :cond_0
    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    iget-object v2, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2, v0}, Llewa/laml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_3
    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 122
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_4
    throw v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->cleanUp(Z)V

    .line 96
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 85
    const-string v0, "view_width"

    iget-object v1, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    int-to-double v2, p3

    iget-object v4, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v4}, Llewa/laml/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 87
    const-string v0, "view_height"

    iget-object v1, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    int-to-double v2, p4

    iget-object v4, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v4}, Llewa/laml/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 89
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->doRender()V

    .line 90
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 74
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 75
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 80
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mThread:Llewa/laml/RenderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llewa/laml/RenderThread;->setPaused(Z)V

    .line 81
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->selfResume()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyWallpaper$FancyEngine;->mRendererController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->selfPause()V

    goto :goto_0
.end method
