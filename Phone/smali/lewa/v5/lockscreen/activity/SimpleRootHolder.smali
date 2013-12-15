.class public Llewa/v5/lockscreen/activity/SimpleRootHolder;
.super Ljava/lang/Object;
.source "SimpleRootHolder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimpleRootHolder"


# instance fields
.field private mContext:Llewa/laml/ScreenContext;

.field private mResourceMgr:Llewa/laml/LifecycleResourceManager;

.field private mRoot:Llewa/v5/lockscreen/LockScreenRoot;

.field private mThread:Llewa/laml/RenderThread;

.field private mViewList:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Llewa/v5/lockscreen/activity/FancyLockScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mViewList:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public cleanUp(Llewa/v5/lockscreen/activity/FancyLockScreen;)V
    .locals 3
    .parameter "ls"

    .prologue
    .line 33
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p1}, Llewa/v5/lockscreen/activity/FancyLockScreen;->cleanUpView()V

    .line 35
    const-string v0, "SimpleRootHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mRoot:Llewa/v5/lockscreen/LockScreenRoot;

    invoke-virtual {v0}, Llewa/v5/lockscreen/LockScreenRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0}, Llewa/laml/data/Variables;->reset()V

    .line 38
    const-string v0, "SimpleRootHolder"

    const-string v1, "cleanUp finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/v5/lockscreen/activity/FancyLockScreen;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/FancyLockScreen;->rebindView()V

    .line 41
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mRoot:Llewa/v5/lockscreen/LockScreenRoot;

    invoke-virtual {v0}, Llewa/v5/lockscreen/LockScreenRoot;->init()V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mRoot:Llewa/v5/lockscreen/LockScreenRoot;

    .line 47
    iput-object v1, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mContext:Llewa/laml/ScreenContext;

    .line 48
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mResourceMgr:Llewa/laml/LifecycleResourceManager;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mResourceMgr:Llewa/laml/LifecycleResourceManager;

    invoke-virtual {v0}, Llewa/laml/LifecycleResourceManager;->clear()V

    .line 50
    iput-object v1, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mResourceMgr:Llewa/laml/LifecycleResourceManager;

    .line 52
    :cond_0
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mThread:Llewa/laml/RenderThread;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->setStop()V

    .line 54
    iput-object v1, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mThread:Llewa/laml/RenderThread;

    .line 56
    :cond_1
    return-void
.end method

.method public createView(Landroid/content/Context;)Llewa/v5/lockscreen/FancyLockScreenView;
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    new-instance v0, Llewa/v5/lockscreen/FancyLockScreenView;

    iget-object v1, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mRoot:Llewa/v5/lockscreen/LockScreenRoot;

    iget-object v2, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mThread:Llewa/laml/RenderThread;

    invoke-direct {v0, p1, v1, v2}, Llewa/v5/lockscreen/FancyLockScreenView;-><init>(Landroid/content/Context;Llewa/v5/lockscreen/LockScreenRoot;Llewa/laml/RenderThread;)V

    .line 60
    .local v0, view:Llewa/v5/lockscreen/FancyLockScreenView;
    const-string v1, "SimpleRootHolder"

    const-string v2, "createView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v0
.end method

.method public getContext()Llewa/laml/ScreenContext;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mContext:Llewa/laml/ScreenContext;

    return-object v0
.end method

.method public getRoot()Llewa/v5/lockscreen/LockScreenRoot;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mRoot:Llewa/v5/lockscreen/LockScreenRoot;

    return-object v0
.end method

.method public getThread()Llewa/laml/RenderThread;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mThread:Llewa/laml/RenderThread;

    return-object v0
.end method

.method public init(Landroid/content/Context;Llewa/v5/lockscreen/activity/FancyLockScreen;)V
    .locals 6
    .parameter "context"
    .parameter "ls"

    .prologue
    .line 77
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mRoot:Llewa/v5/lockscreen/LockScreenRoot;

    if-nez v0, :cond_0

    .line 78
    new-instance v1, Llewa/v5/lockscreen/LockScreenResourceLoader;

    invoke-direct {v1}, Llewa/v5/lockscreen/LockScreenResourceLoader;-><init>()V

    .line 79
    .local v1, res:Llewa/v5/lockscreen/LockScreenResourceLoader;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Llewa/v5/lockscreen/LockScreenResourceLoader;->setLocal(Ljava/util/Locale;)Llewa/laml/ResourceLoader;

    .line 80
    new-instance v0, Llewa/laml/LifecycleResourceManager;

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x36ee80

    invoke-direct/range {v0 .. v5}, Llewa/laml/LifecycleResourceManager;-><init>(Llewa/laml/ResourceLoader;JJ)V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mResourceMgr:Llewa/laml/LifecycleResourceManager;

    .line 81
    new-instance v0, Llewa/laml/ScreenContext;

    iget-object v2, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mResourceMgr:Llewa/laml/LifecycleResourceManager;

    new-instance v3, Llewa/v5/lockscreen/LockScreenElementFactory;

    invoke-direct {v3}, Llewa/v5/lockscreen/LockScreenElementFactory;-><init>()V

    invoke-direct {v0, p1, v2, v3}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;)V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mContext:Llewa/laml/ScreenContext;

    .line 82
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mContext:Llewa/laml/ScreenContext;

    new-instance v2, Llewa/v5/lockscreen/LockScreenRoot;

    iget-object v3, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mContext:Llewa/laml/ScreenContext;

    invoke-direct {v2, v3}, Llewa/v5/lockscreen/LockScreenRoot;-><init>(Llewa/laml/ScreenContext;)V

    iput-object v2, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mRoot:Llewa/v5/lockscreen/LockScreenRoot;

    iput-object v2, v0, Llewa/laml/ScreenContext;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 83
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mRoot:Llewa/v5/lockscreen/LockScreenRoot;

    const-string v2, "/data/system/face/lockscreen.config"

    invoke-virtual {v0, v2}, Llewa/v5/lockscreen/LockScreenRoot;->setConfig(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mRoot:Llewa/v5/lockscreen/LockScreenRoot;

    invoke-virtual {v0}, Llewa/v5/lockscreen/LockScreenRoot;->load()Z

    .line 85
    new-instance v0, Llewa/laml/RenderThread;

    invoke-direct {v0}, Llewa/laml/RenderThread;-><init>()V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mThread:Llewa/laml/RenderThread;

    .line 86
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mThread:Llewa/laml/RenderThread;

    invoke-virtual {v0}, Llewa/laml/RenderThread;->start()V

    .line 87
    const-string v0, "SimpleRootHolder"

    const-string v2, "create root"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v1           #res:Llewa/v5/lockscreen/LockScreenResourceLoader;
    :cond_0
    iget-object v0, p0, Llewa/v5/lockscreen/activity/SimpleRootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "SimpleRootHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method
