.class public Llewa/laml/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# static fields
.field public static final LAML_PREFERENCES:Ljava/lang/String; = "LamlPreferences"


# instance fields
.field public final mContext:Landroid/content/Context;

.field private mController:Llewa/laml/RendererController;

.field public final mFactory:Llewa/laml/elements/ScreenElementFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mParent:Llewa/laml/ScreenContext;

.field public final mResourceManager:Llewa/laml/ResourceManager;

.field public mRoot:Llewa/laml/ScreenElementRoot;

.field public final mVariables:Llewa/laml/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceLoader;)V
    .locals 1
    .parameter "context"
    .parameter "loader"

    .prologue
    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Landroid/os/Handler;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "loader"
    .parameter "h"

    .prologue
    .line 34
    new-instance v0, Llewa/laml/ResourceManager;

    invoke-direct {v0, p2}, Llewa/laml/ResourceManager;-><init>(Llewa/laml/ResourceLoader;)V

    new-instance v1, Llewa/laml/elements/ScreenElementFactory;

    invoke-direct {v1}, Llewa/laml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1, p3}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/elements/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "factory"

    .prologue
    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "factory"
    .parameter "h"

    .prologue
    .line 43
    new-instance v0, Llewa/laml/ResourceManager;

    invoke-direct {v0, p2}, Llewa/laml/ResourceManager;-><init>(Llewa/laml/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3, p4}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;)V
    .locals 2
    .parameter "context"
    .parameter "resourceMgr"

    .prologue
    .line 47
    new-instance v0, Llewa/laml/elements/ScreenElementFactory;

    invoke-direct {v0}, Llewa/laml/elements/ScreenElementFactory;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "h"

    .prologue
    .line 51
    new-instance v0, Llewa/laml/elements/ScreenElementFactory;

    invoke-direct {v0}, Llewa/laml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"

    .prologue
    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"
    .parameter "h"

    .prologue
    .line 60
    new-instance v5, Llewa/laml/data/Variables;

    invoke-direct {v5}, Llewa/laml/data/Variables;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;Llewa/laml/data/Variables;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;Llewa/laml/data/Variables;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"
    .parameter "h"
    .parameter "v"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, rawContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 67
    move-object v0, p1

    .line 68
    :cond_0
    iput-object v0, p0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    .line 70
    iput-object p3, p0, Llewa/laml/ScreenContext;->mFactory:Llewa/laml/elements/ScreenElementFactory;

    .line 71
    iput-object p4, p0, Llewa/laml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p5, p0, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    .line 73
    return-void
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 76
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    invoke-virtual {v0, p1}, Llewa/laml/RendererController;->createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    invoke-virtual {v0, p1}, Llewa/laml/ScreenContext;->createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->doneRender()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->doneRender()V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llewa/laml/ScreenContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRenderController()Llewa/laml/RendererController;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    return-object v0
.end method

.method public isGlobalThread()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    iget-boolean v0, v0, Llewa/laml/RendererController;->mGlobal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 105
    iget-object v0, p0, Llewa/laml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->requestUpdate()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->requestUpdate()V

    goto :goto_0
.end method

.method public setParentContext(Llewa/laml/ScreenContext;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 117
    iput-object p1, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    .line 118
    return-void
.end method

.method public setRenderController(Llewa/laml/RendererController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 121
    iput-object p1, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    .line 122
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->shouldUpdate()Z

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->shouldUpdate()Z

    move-result v0

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
