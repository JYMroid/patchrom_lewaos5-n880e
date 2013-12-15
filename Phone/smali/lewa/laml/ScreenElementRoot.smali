.class public Llewa/laml/ScreenElementRoot;
.super Llewa/laml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Llewa/laml/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/ScreenElementRoot$OnExternCommandListener;,
        Llewa/laml/ScreenElementRoot$FramerateHelper;
    }
.end annotation


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field public static final DEFAULT_RES_DENSITY:I = 0xf0

.field public static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final MATRIX_WIDTH:I = 0x2d0

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private DEFAULT_FRAME_RATE:F

.field private mCheckPoint:J

.field private mConfig:Llewa/laml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field protected mContext:Llewa/laml/ScreenContext;

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field public mElementGroup:Llewa/laml/elements/ElementGroup;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Llewa/laml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCommandManager:Llewa/laml/ExternalCommandManager;

.field private mExtraMatrix:Landroid/graphics/Matrix;

.field private mExtraScale:F

.field private mFinished:Z

.field protected mFrameRate:F

.field private mFrameRateVar:Llewa/laml/util/IndexedNumberVariable;

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFramerateHelper:Llewa/laml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field private mKeepResource:Z

.field private mMatrixScale:F

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Llewa/laml/util/IndexedNumberVariable;

.field private mNoAutoScale:Z

.field protected mNormalFrameRate:F

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawAttrs:Ljava/util/HashMap;
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

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:F

.field protected mRawTargetDensity:I

.field private mRawWidth:F

.field private mScale:F

.field protected mScaleByDensity:Z

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mShowFramerate:Z

.field private mSoundManager:Llewa/laml/SoundManager;

.field private mTargetDensity:I

.field private mTouchBeginTime:Llewa/laml/util/IndexedNumberVariable;

.field private mTouchBeginX:Llewa/laml/util/IndexedNumberVariable;

.field private mTouchBeginY:Llewa/laml/util/IndexedNumberVariable;

.field private mTouchX:Llewa/laml/util/IndexedNumberVariable;

.field private mTouchY:Llewa/laml/util/IndexedNumberVariable;

.field protected mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

.field private mWidth:F


# direct methods
.method public constructor <init>(Llewa/laml/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0, v0}, Llewa/laml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 52
    const/high16 v0, 0x41f0

    iput v0, p0, Llewa/laml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/ScreenElementRoot;->mShowFramerate:Z

    .line 110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mRawTargetDensity:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 148
    iget v0, p0, Llewa/laml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mNormalFrameRate:F

    .line 152
    const/high16 v0, 0x3f80

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mMatrixScale:F

    .line 156
    iput-object p1, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    .line 157
    iput-object p0, p0, Llewa/laml/elements/ScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 158
    new-instance v0, Llewa/laml/data/VariableUpdaterManager;

    invoke-direct {v0, p1}, Llewa/laml/data/VariableUpdaterManager;-><init>(Llewa/laml/ScreenContext;)V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    .line 159
    new-instance v0, Llewa/laml/ScreenElementRoot$FramerateHelper;

    invoke-direct {v0}, Llewa/laml/ScreenElementRoot$FramerateHelper;-><init>()V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mFramerateHelper:Llewa/laml/ScreenElementRoot$FramerateHelper;

    .line 160
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "touch_x"

    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mTouchX:Llewa/laml/util/IndexedNumberVariable;

    .line 161
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "touch_y"

    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mTouchY:Llewa/laml/util/IndexedNumberVariable;

    .line 162
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_x"

    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mTouchBeginX:Llewa/laml/util/IndexedNumberVariable;

    .line 164
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_y"

    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mTouchBeginY:Llewa/laml/util/IndexedNumberVariable;

    .line 166
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_time"

    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mTouchBeginTime:Llewa/laml/util/IndexedNumberVariable;

    .line 168
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "intercept_sys_touch"

    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Llewa/laml/util/IndexedNumberVariable;

    .line 170
    new-instance v0, Llewa/laml/SoundManager;

    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v2, v2, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-direct {v0, v1, v2}, Llewa/laml/SoundManager;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;)V

    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mSoundManager:Llewa/laml/SoundManager;

    .line 171
    return-void
.end method

.method private initCamera(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 432
    new-instance v1, Landroid/content/Intent;

    const-string v3, "lewa.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 434
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 435
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "lewa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 437
    const-string v3, "native_camera"

    iget-object v4, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3, v4, v5}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v3, "native_camera"

    iget-object v4, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    const-wide/high16 v5, 0x3ff0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3, v4, v5}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    goto :goto_0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 174
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    new-instance v4, Llewa/laml/util/ConfigFile;

    invoke-direct {v4}, Llewa/laml/util/ConfigFile;-><init>()V

    iput-object v4, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    .line 177
    iget-object v4, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    invoke-virtual {v4, p1}, Llewa/laml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 178
    const/4 v4, 0x0

    iput-object v4, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    goto :goto_0

    .line 180
    :cond_2
    iget-object v4, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v3, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    .line 181
    .local v3, vs:Llewa/laml/data/Variables;
    iget-object v4, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    invoke-virtual {v4}, Llewa/laml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/util/ConfigFile$Variable;

    .line 182
    .local v2, v:Llewa/laml/util/ConfigFile$Variable;
    iget-object v4, v2, Llewa/laml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v5, "string"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    iget-object v4, v2, Llewa/laml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v5, v2, Llewa/laml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Llewa/laml/util/Utils;->putVariableString(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_4
    iget-object v4, v2, Llewa/laml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v5, "number"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    :try_start_0
    iget-object v4, v2, Llewa/laml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v5, v2, Llewa/laml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v4, v3, v5}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v4

    goto :goto_1

    .line 190
    .end local v2           #v:Llewa/laml/util/ConfigFile$Variable;
    :cond_5
    iget-object v4, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    invoke-virtual {v4}, Llewa/laml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/util/Task;

    .line 191
    .local v1, t:Llewa/laml/util/Task;
    iget-object v4, v1, Llewa/laml/util/Task;->id:Ljava/lang/String;

    const-string v5, "name"

    iget-object v6, v1, Llewa/laml/util/Task;->name:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6}, Llewa/laml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/String;)V

    .line 192
    iget-object v4, v1, Llewa/laml/util/Task;->id:Ljava/lang/String;

    const-string v5, "package"

    iget-object v6, v1, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6}, Llewa/laml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/String;)V

    .line 193
    iget-object v4, v1, Llewa/laml/util/Task;->id:Ljava/lang/String;

    const-string v5, "class"

    iget-object v6, v1, Llewa/laml/util/Task;->className:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6}, Llewa/laml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "root"

    .prologue
    .line 199
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 200
    .local v3, nnm:Lorg/w3c/dom/NamedNodeMap;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    .local v2, j:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 201
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 202
    .local v1, item:Lorg/w3c/dom/Node;
    iget-object v4, p0, Llewa/laml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v1           #item:Lorg/w3c/dom/Node;
    :cond_0
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 207
    const-string v1, "useVariableUpdater"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, updater:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    invoke-virtual {p0, v1}, Llewa/laml/ScreenElementRoot;->onAddVariableUpdater(Llewa/laml/data/VariableUpdaterManager;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    invoke-virtual {v1, v0}, Llewa/laml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resolveExtraResource(Lorg/w3c/dom/Element;Ljava/lang/String;II)I
    .locals 15
    .parameter "root"
    .parameter "attr"
    .parameter "target"
    .parameter "def"

    .prologue
    .line 216
    invoke-interface/range {p1 .. p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, extraResources:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 218
    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, resources:[Ljava/lang/String;
    const v9, 0x7fffffff

    .line 220
    .local v9, minDiff:I
    const/4 v1, 0x0

    .line 221
    .local v1, closestSw:I
    move-object v0, v10

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v12, v0, v7

    .line 223
    .local v12, swStr:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 224
    .local v11, sw:I
    sub-int v13, p3, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 225
    .local v6, i:I
    move v3, v6

    .line 226
    .local v3, diff:I
    if-ge v3, v9, :cond_1

    .line 227
    move v9, v3

    .line 228
    move v1, v11

    .line 229
    if-nez v3, :cond_1

    .line 230
    sub-int v13, p3, p4

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 231
    .local v2, defaultDiff:I
    if-lt v2, v9, :cond_0

    .line 241
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #closestSw:I
    .end local v2           #defaultDiff:I
    .end local v3           #diff:I
    .end local v6           #i:I
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #minDiff:I
    .end local v10           #resources:[Ljava/lang/String;
    .end local v11           #sw:I
    .end local v12           #swStr:Ljava/lang/String;
    :goto_1
    return v1

    .line 231
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #closestSw:I
    .restart local v2       #defaultDiff:I
    .restart local v3       #diff:I
    .restart local v6       #i:I
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #minDiff:I
    .restart local v10       #resources:[Ljava/lang/String;
    .restart local v11       #sw:I
    .restart local v12       #swStr:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 234
    .end local v2           #defaultDiff:I
    .end local v3           #diff:I
    .end local v6           #i:I
    .end local v11           #sw:I
    :catch_0
    move-exception v4

    .line 235
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v13, "ScreenElementRoot"

    const-string v14, "extra resources format error."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v4           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 236
    :catch_1
    move-exception v4

    .line 237
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v13, "ScreenElementRoot"

    const-string v14, "extra resources format error."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 241
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #closestSw:I
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #minDiff:I
    .end local v10           #resources:[Ljava/lang/String;
    .end local v12           #swStr:Ljava/lang/String;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private resolveExtraScale(Lorg/w3c/dom/Element;Ljava/lang/String;I)F
    .locals 11
    .parameter "root"
    .parameter "attr"
    .parameter "target"

    .prologue
    .line 245
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, extraScales:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 247
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, as:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v0, v5

    .line 250
    .local v7, s:Ljava/lang/String;
    :try_start_0
    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, strNums:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 252
    .local v3, extra:I
    if-ne v3, p3, :cond_0

    .line 253
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 261
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #as:[Ljava/lang/String;
    .end local v3           #extra:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #strNums:[Ljava/lang/String;
    :goto_1
    return v9

    .line 254
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #as:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 255
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "ScreenElementRoot"

    const-string v10, "extra scale format error."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 256
    :catch_1
    move-exception v2

    .line 257
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "ScreenElementRoot"

    const-string v10, "extra scale format error."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 261
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #as:[Ljava/lang/String;
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #s:Ljava/lang/String;
    :cond_1
    const/high16 v9, -0x4080

    goto :goto_1
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .locals 17
    .parameter "root"

    .prologue
    .line 488
    const-string v13, "scaleByDensity"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, scaleByDensity:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 490
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Llewa/laml/ScreenElementRoot;->mScaleByDensity:Z

    .line 491
    :cond_0
    const-string v13, "screenWidth"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 492
    const-string v13, "resDensity"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 493
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    invoke-static {v13}, Llewa/laml/ResourceManager;->translateDensity(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 495
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v13, :cond_8

    .line 496
    const/16 v13, 0x1e0

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 497
    const/16 v13, 0xf0

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 506
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v13, v13, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    invoke-virtual {v13, v14}, Llewa/laml/ResourceManager;->setResourceDensity(I)V

    .line 508
    const-string v13, "Icon"

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/ScreenElementRoot;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mRawTargetDensity:I

    const/16 v14, 0xf0

    if-ne v13, v14, :cond_a

    const/4 v5, 0x1

    .line 510
    .local v5, isIconScale:Z
    :goto_1
    const-string v13, "Lockscreen"

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/ScreenElementRoot;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 512
    .local v6, isLockScreen:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v13, v13, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v14, "window"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 514
    .local v12, wm:Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 515
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 516
    .local v11, tmpW:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 517
    .local v10, tmpH:I
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 518
    .local v8, rotation:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Llewa/laml/ScreenElementRoot;->mNoAutoScale:Z

    if-nez v13, :cond_2

    if-eqz v6, :cond_2

    const/16 v13, 0x2d0

    if-le v11, v13, :cond_2

    .line 519
    int-to-float v13, v10

    int-to-float v14, v11

    const/high16 v15, 0x4434

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Llewa/laml/ScreenElementRoot;->mMatrixScale:F

    div-float/2addr v13, v14

    float-to-int v10, v13

    .line 520
    const/16 v11, 0x2d0

    .line 522
    :cond_2
    const/4 v13, 0x1

    if-eq v8, v13, :cond_3

    const/4 v13, 0x3

    if-ne v8, v13, :cond_b

    :cond_3
    const/4 v7, 0x1

    .line 523
    .local v7, rotated:Z
    :goto_2
    if-eqz v7, :cond_c

    .line 524
    move-object/from16 v0, p0

    iput v11, v0, Llewa/laml/ScreenElementRoot;->mScreenHeight:I

    .line 525
    move-object/from16 v0, p0

    iput v10, v0, Llewa/laml/ScreenElementRoot;->mScreenWidth:I

    .line 531
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Llewa/laml/ScreenElementRoot;->mNoAutoScale:Z

    if-eqz v13, :cond_d

    .line 532
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mScale:F

    .line 544
    :goto_4
    const-string v13, "extraResourcesDensity"

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mRawTargetDensity:I

    move-object/from16 v0, p0

    iget v15, v0, Llewa/laml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v15}, Llewa/laml/ScreenElementRoot;->resolveExtraResource(Lorg/w3c/dom/Element;Ljava/lang/String;II)I

    move-result v3

    .line 546
    .local v3, extraDensity:I
    if-lez v3, :cond_f

    .line 547
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v13, v13, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v13, v3}, Llewa/laml/ResourceManager;->setExtraResourceDensity(I)V

    .line 548
    const-string v13, "extraScaleByDensity"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v3}, Llewa/laml/ScreenElementRoot;->resolveExtraScale(Lorg/w3c/dom/Element;Ljava/lang/String;I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mExtraScale:F

    .line 549
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mExtraScale:F

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-float v14, v14

    int-to-float v15, v3

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mExtraScale:F

    .line 559
    :cond_4
    :goto_5
    const-string v13, "width"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mRawWidth:F

    .line 560
    const-string v13, "height"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mRawHeight:F

    .line 562
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mRawWidth:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    .line 563
    const-string v13, "view_width"

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v14, v14, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    move-object/from16 v0, p0

    iget v15, v0, Llewa/laml/ScreenElementRoot;->mRawWidth:F

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-static {v13, v14, v15}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 566
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mRawHeight:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    .line 567
    const-string v13, "view_height"

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v14, v14, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    move-object/from16 v0, p0

    iget v15, v0, Llewa/laml/ScreenElementRoot;->mRawHeight:F

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-static {v13, v14, v15}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 570
    :cond_6
    if-eqz v5, :cond_10

    .line 572
    const/16 v13, 0xf0

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mRawTargetDensity:I

    .line 573
    const v13, 0x43b31abf

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 574
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Llewa/laml/ScreenElementRoot;->mScaleByDensity:Z

    .line 580
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Llewa/laml/ScreenElementRoot;->mScaleByDensity:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Llewa/laml/ScreenElementRoot;->setScaleByDensity(Z)V

    .line 581
    return-void

    .line 498
    .end local v2           #display:Landroid/view/Display;
    .end local v3           #extraDensity:I
    .end local v5           #isIconScale:Z
    .end local v6           #isLockScreen:Z
    .end local v7           #rotated:Z
    .end local v8           #rotation:I
    .end local v10           #tmpH:I
    .end local v11           #tmpW:I
    .end local v12           #wm:Landroid/view/WindowManager;
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v13, :cond_9

    .line 499
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/lit16 v13, v13, 0xf0

    div-int/lit16 v13, v13, 0x1e0

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto/16 :goto_0

    .line 501
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v13, :cond_1

    .line 502
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    mul-int/lit16 v13, v13, 0x1e0

    div-int/lit16 v13, v13, 0xf0

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    goto/16 :goto_0

    .line 508
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 522
    .restart local v2       #display:Landroid/view/Display;
    .restart local v5       #isIconScale:Z
    .restart local v6       #isLockScreen:Z
    .restart local v8       #rotation:I
    .restart local v10       #tmpH:I
    .restart local v11       #tmpW:I
    .restart local v12       #wm:Landroid/view/WindowManager;
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 527
    .restart local v7       #rotated:Z
    :cond_c
    move-object/from16 v0, p0

    iput v10, v0, Llewa/laml/ScreenElementRoot;->mScreenHeight:I

    .line 528
    move-object/from16 v0, p0

    iput v11, v0, Llewa/laml/ScreenElementRoot;->mScreenWidth:I

    goto/16 :goto_3

    .line 534
    :cond_d
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    if-eqz v13, :cond_e

    .line 535
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mScale:F

    goto/16 :goto_4

    .line 537
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mScale:F

    .line 538
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mScale:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    .line 539
    const-string v13, "ScreenElementRoot"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "init target density: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v13, v13, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v13, v14}, Llewa/laml/ResourceManager;->setTargetDensity(I)V

    goto/16 :goto_4

    .line 551
    .restart local v3       #extraDensity:I
    :cond_f
    const-string v13, "extraResourcesScreenWidth"

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v15}, Llewa/laml/ScreenElementRoot;->resolveExtraResource(Lorg/w3c/dom/Element;Ljava/lang/String;II)I

    move-result v4

    .line 553
    .local v4, extraWidth:I
    if-lez v4, :cond_4

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v13, v13, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v13, v4}, Llewa/laml/ResourceManager;->setExtraResourceScreenWidth(I)V

    .line 555
    const-string v13, "extraScaleByScreenWidth"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v4}, Llewa/laml/ScreenElementRoot;->resolveExtraScale(Lorg/w3c/dom/Element;Ljava/lang/String;I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mExtraScale:F

    .line 556
    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mExtraScale:F

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v14, v14

    int-to-float v15, v4

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Llewa/laml/ScreenElementRoot;->mExtraScale:F

    goto/16 :goto_5

    .line 575
    .end local v4           #extraWidth:I
    :cond_10
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Llewa/laml/ScreenElementRoot;->mMatrixScale:F

    const/high16 v14, 0x3f80

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_7

    .line 576
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Llewa/laml/ScreenElementRoot;->mExtraMatrix:Landroid/graphics/Matrix;

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/laml/ScreenElementRoot;->mExtraMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/ScreenElementRoot;->mMatrixScale:F

    move-object/from16 v0, p0

    iget v15, v0, Llewa/laml/ScreenElementRoot;->mMatrixScale:F

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_6
.end method


# virtual methods
.method public addElement(Llewa/laml/elements/ScreenElement;)V
    .locals 1
    .parameter "newElement"

    .prologue
    .line 265
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Llewa/laml/elements/ElementGroup;->addElement(Llewa/laml/elements/ScreenElement;)V

    .line 267
    :cond_0
    return-void
.end method

.method public addFramerateController(Llewa/laml/elements/FramerateController;)V
    .locals 1
    .parameter "framerateController"

    .prologue
    .line 270
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public addPreTicker(Llewa/laml/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 274
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public createFramerateToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 278
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    invoke-virtual {v0, p1}, Llewa/laml/ScreenContext;->createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 282
    iget-boolean v1, p0, Llewa/laml/ScreenElementRoot;->mFinished:Z

    if-eqz v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 285
    :cond_0
    :try_start_0
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mExtraMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mExtraMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 287
    :cond_1
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Llewa/laml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    :cond_2
    :goto_1
    iget-boolean v1, p0, Llewa/laml/ScreenElementRoot;->mShowFramerate:Z

    if-eqz v1, :cond_3

    .line 295
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mFramerateHelper:Llewa/laml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v1, p1}, Llewa/laml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    .line 296
    :cond_3
    iget v1, p0, Llewa/laml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llewa/laml/ScreenElementRoot;->mFrames:I

    .line 297
    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->doneRender()V

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->doneRender()V

    .line 302
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Llewa/laml/data/VariableBinder;
    .locals 1
    .parameter "name"

    .prologue
    .line 305
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    invoke-virtual {v0, p1}, Llewa/laml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Llewa/laml/data/VariableBinder;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 312
    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Llewa/laml/elements/ElementGroup;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 315
    goto :goto_0
.end method

.method public findTask(Ljava/lang/String;)Llewa/laml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Llewa/laml/ScreenElementRoot;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    .line 326
    :try_start_1
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    invoke-virtual {v1}, Llewa/laml/util/ConfigFile;->save()Z

    .line 328
    :cond_0
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v1}, Llewa/laml/elements/ElementGroup;->finish()V

    .line 330
    :cond_1
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    invoke-virtual {v1}, Llewa/laml/data/VariableBinderManager;->finish()V

    .line 332
    :cond_2
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    if-eqz v1, :cond_3

    .line 333
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    invoke-virtual {v1}, Llewa/laml/ExternalCommandManager;->finish()V

    .line 334
    :cond_3
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    if-eqz v1, :cond_4

    .line 335
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    invoke-virtual {v1}, Llewa/laml/data/VariableUpdaterManager;->finish()V

    .line 336
    :cond_4
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mSoundManager:Llewa/laml/SoundManager;

    invoke-virtual {v1}, Llewa/laml/SoundManager;->release()V

    .line 337
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v1, v1, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    iget-boolean v2, p0, Llewa/laml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v1, v2}, Llewa/laml/ResourceManager;->finish(Z)V

    .line 338
    const/4 v1, 0x1

    iput-boolean v1, p0, Llewa/laml/ScreenElementRoot;->mFinished:Z

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, p0, Llewa/laml/ScreenElementRoot;->mKeepResource:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 324
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getContext()Llewa/laml/ScreenContext;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getMatrixScale()F
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mMatrixScale:F

    return v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 362
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResourceDensity()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 371
    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/high16 v0, 0x3f80

    .line 374
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mScreenWidth:I

    return v0
.end method

.method public getTargetDensity()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public haptic(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 399
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/ScreenElementRoot;->mFinished:Z

    .line 403
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->init()V

    .line 404
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v1, v1, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    iget-object v2, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-static {v0, v1, v2}, Llewa/laml/LanguageHelper;->load(Ljava/util/Locale;Llewa/laml/ResourceManager;Llewa/laml/data/Variables;)Z

    .line 406
    const-string v0, "raw_screen_width"

    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    iget v2, p0, Llewa/laml/ScreenElementRoot;->mScreenWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 408
    const-string v0, "raw_screen_height"

    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    iget v2, p0, Llewa/laml/ScreenElementRoot;->mScreenHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 410
    const-string v0, "screen_width"

    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    iget v2, p0, Llewa/laml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 412
    const-string v0, "screen_height"

    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    iget v2, p0, Llewa/laml/ScreenElementRoot;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 414
    const-string v0, "screen_density"

    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    iget v2, p0, Llewa/laml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 416
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Llewa/laml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Llewa/laml/data/VariableUpdaterManager;->init()V

    .line 419
    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    invoke-virtual {v0}, Llewa/laml/data/VariableBinderManager;->init()V

    .line 421
    :cond_1
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    invoke-virtual {v0}, Llewa/laml/ExternalCommandManager;->init()V

    .line 423
    :cond_2
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->init()V

    .line 425
    :cond_3
    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->reset()V

    .line 427
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v0}, Llewa/laml/ScreenElementRoot;->requestFramerate(F)V

    .line 428
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Llewa/laml/ScreenElementRoot;->initCamera(Landroid/content/Context;)V

    .line 429
    return-void
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 4
    .parameter "command"
    .parameter "numPara"
    .parameter "strPara"

    .prologue
    .line 450
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/ScreenElementRoot$OnExternCommandListener;

    .line 452
    .local v0, l:Llewa/laml/ScreenElementRoot$OnExternCommandListener;
    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0, p1, p2, p3}, Llewa/laml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 454
    const-string v1, "ScreenElementRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issueExternCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v0           #l:Llewa/laml/ScreenElementRoot$OnExternCommandListener;
    :cond_0
    return-void
.end method

.method public load()Z
    .locals 7

    .prologue
    .line 460
    iget-object v5, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v5, v5, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v5}, Llewa/laml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 461
    .local v3, root:Lorg/w3c/dom/Element;
    if-nez v3, :cond_0

    .line 462
    const/4 v5, 0x0

    .line 483
    :goto_0
    return v5

    .line 464
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Llewa/laml/ScreenElementRoot;->mName:Ljava/lang/String;

    .line 465
    invoke-direct {p0, v3}, Llewa/laml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 466
    const-string v5, "frameRate"

    iget v6, p0, Llewa/laml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v3, v5, v6}, Llewa/laml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Llewa/laml/ScreenElementRoot;->mNormalFrameRate:F

    iput v5, p0, Llewa/laml/ScreenElementRoot;->mFrameRate:F

    .line 467
    const-string v5, "showFramerate"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, showFramerate:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 469
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Llewa/laml/ScreenElementRoot;->mShowFramerate:Z

    .line 472
    :cond_1
    :try_start_0
    new-instance v5, Llewa/laml/elements/ElementGroup;

    invoke-direct {v5, v3, p0}, Llewa/laml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v5, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    .line 473
    const-string v5, "VariableBinders"

    invoke-static {v3, v5}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 474
    .local v0, binders:Lorg/w3c/dom/Element;
    new-instance v5, Llewa/laml/data/VariableBinderManager;

    invoke-direct {v5, v0, p0}, Llewa/laml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v5, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    .line 475
    const-string v5, "ExternalCommands"

    invoke-static {v3, v5}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 476
    .local v1, commands:Lorg/w3c/dom/Element;
    if-eqz v1, :cond_2

    .line 477
    new-instance v5, Llewa/laml/ExternalCommandManager;

    invoke-direct {v5, v1, p0}, Llewa/laml/ExternalCommandManager;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v5, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;
    :try_end_0
    .catch Llewa/laml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v0           #binders:Lorg/w3c/dom/Element;
    .end local v1           #commands:Lorg/w3c/dom/Element;
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Llewa/laml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    .line 482
    invoke-direct {p0, v3}, Llewa/laml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 483
    invoke-virtual {p0, v3}, Llewa/laml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v5

    goto :goto_0

    .line 478
    :catch_0
    move-exception v2

    .line 479
    .local v2, e:Llewa/laml/ScreenElementLoadException;
    const-string v5, "ScreenElementRoot"

    invoke-virtual {v2}, Llewa/laml/ScreenElementLoadException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Llewa/laml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Llewa/laml/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 607
    new-instance v0, Llewa/laml/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Llewa/laml/data/DateTimeVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Llewa/laml/data/VariableUpdaterManager;->add(Llewa/laml/data/VariableUpdater;)V

    .line 608
    return-void
.end method

.method public onButtonInteractive(Llewa/laml/elements/ButtonScreenElement;Llewa/laml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 0
    .parameter "element"
    .parameter "action"

    .prologue
    .line 611
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 614
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    if-eqz v1, :cond_0

    .line 616
    :try_start_0
    iget-object v1, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    invoke-virtual {v1, p1}, Llewa/laml/ExternalCommandManager;->onCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .parameter "root"

    .prologue
    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 627
    iget-boolean v3, p0, Llewa/laml/ScreenElementRoot;->mFinished:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Llewa/laml/ScreenElementRoot;->mMatrixScale:F

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Llewa/laml/ScreenElementRoot;->descale(F)F

    move-result v1

    .line 629
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Llewa/laml/ScreenElementRoot;->mMatrixScale:F

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Llewa/laml/ScreenElementRoot;->descale(F)F

    move-result v2

    .line 630
    .local v2, y:F
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mTouchX:Llewa/laml/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 631
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mTouchY:Llewa/laml/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 643
    :goto_0
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v3, p1}, Llewa/laml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 644
    .local v0, ret:Z
    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->requestUpdate()V

    .line 647
    .end local v0           #ret:Z
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_0
    return v0

    .line 634
    .restart local v1       #x:F
    .restart local v2       #y:F
    :pswitch_0
    iput-boolean v0, p0, Llewa/laml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_0

    .line 637
    :pswitch_1
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mTouchBeginX:Llewa/laml/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 638
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mTouchBeginY:Llewa/laml/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 639
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mTouchBeginTime:Llewa/laml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 640
    iput-boolean v0, p0, Llewa/laml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 651
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->pause()V

    .line 652
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->pause()V

    .line 654
    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    invoke-virtual {v0}, Llewa/laml/data/VariableBinderManager;->pause()V

    .line 656
    :cond_1
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    invoke-virtual {v0}, Llewa/laml/ExternalCommandManager;->pause()V

    .line 658
    :cond_2
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Llewa/laml/data/VariableUpdaterManager;->pause()V

    .line 660
    :cond_3
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v0, v0, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v0}, Llewa/laml/ResourceManager;->pause()V

    .line 661
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 3
    .parameter "sound"

    .prologue
    const/4 v2, 0x0

    .line 664
    new-instance v0, Llewa/laml/SoundManager$SoundOptions;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Llewa/laml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Llewa/laml/ScreenElementRoot;->playSound(Ljava/lang/String;Llewa/laml/SoundManager$SoundOptions;)V

    .line 665
    return-void
.end method

.method public playSound(Ljava/lang/String;Llewa/laml/SoundManager$SoundOptions;)V
    .locals 1
    .parameter "sound"
    .parameter "options"

    .prologue
    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llewa/laml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mSoundManager:Llewa/laml/SoundManager;

    invoke-virtual {v0, p1, p2}, Llewa/laml/SoundManager;->playSound(Ljava/lang/String;Llewa/laml/SoundManager$SoundOptions;)V

    .line 671
    :cond_0
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 674
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    invoke-virtual {v0, p1, p2, p3}, Llewa/laml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removePreTicker(Llewa/laml/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 678
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 679
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 682
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElement;->reset(J)V

    .line 683
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->reset(J)V

    .line 685
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->resume()V

    .line 689
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->resume()V

    .line 691
    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    invoke-virtual {v0}, Llewa/laml/data/VariableBinderManager;->resume()V

    .line 693
    :cond_1
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mExternalCommandManager:Llewa/laml/ExternalCommandManager;

    invoke-virtual {v0}, Llewa/laml/ExternalCommandManager;->resume()V

    .line 695
    :cond_2
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Llewa/laml/data/VariableUpdaterManager;->resume()V

    .line 697
    :cond_3
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v0, v0, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v0}, Llewa/laml/ResourceManager;->resume()V

    .line 698
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 701
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 702
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return-void

    .line 704
    :cond_0
    if-nez p2, :cond_1

    .line 705
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    const-string v1, "null"

    invoke-virtual {v0, p1, v1}, Llewa/laml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_1
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Llewa/laml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 713
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 714
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mConfig:Llewa/laml/util/ConfigFile;

    invoke-virtual {v0, p1, p2}, Llewa/laml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 721
    iput-object p1, p0, Llewa/laml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    .line 722
    return-void
.end method

.method public setDefaultFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 725
    iput p1, p0, Llewa/laml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 726
    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 729
    iput-boolean p1, p0, Llewa/laml/ScreenElementRoot;->mKeepResource:Z

    .line 730
    return-void
.end method

.method public setOnExternCommandListener(Llewa/laml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 446
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Llewa/laml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 447
    return-void

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRenderController(Llewa/laml/RendererController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 733
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    invoke-virtual {v0, p1}, Llewa/laml/ScreenContext;->setRenderController(Llewa/laml/RendererController;)V

    .line 734
    return-void
.end method

.method public setScaleByDensity(Z)V
    .locals 3
    .parameter "isScale"

    .prologue
    .line 584
    iput-boolean p1, p0, Llewa/laml/ScreenElementRoot;->mScaleByDensity:Z

    .line 585
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-eqz v0, :cond_1

    .line 586
    if-eqz p1, :cond_2

    .line 587
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mRawTargetDensity:I

    invoke-static {v0}, Llewa/laml/ResourceManager;->translateDensity(I)I

    move-result v0

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    .line 588
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    int-to-float v0, v0

    iget v1, p0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    .line 593
    :goto_0
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v0, v0, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    iget v1, p0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v0, v1}, Llewa/laml/ResourceManager;->setTargetDensity(I)V

    .line 594
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mExtraScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 595
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mExtraScale:F

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    .line 596
    :cond_0
    const-string v0, "ScreenElementRoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mRawWidth:F

    iget v1, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mWidth:F

    .line 598
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mRawHeight:F

    iget v1, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mHeight:F

    .line 600
    :cond_1
    return-void

    .line 590
    :cond_2
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Llewa/laml/ScreenElementRoot;->mDefaultScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    .line 591
    iget v0, p0, Llewa/laml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v0, v0

    iget v1, p0, Llewa/laml/ScreenElementRoot;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    goto :goto_0
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "targetDensity"

    .prologue
    .line 737
    iput p1, p0, Llewa/laml/ScreenElementRoot;->mTargetDensity:I

    .line 738
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v0, v0, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v0, p1}, Llewa/laml/ResourceManager;->setTargetDensity(I)V

    .line 739
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->shouldUpdate()Z

    move-result v0

    return v0
.end method

.method public showFramerate(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 750
    iput-boolean p1, p0, Llewa/laml/ScreenElementRoot;->mShowFramerate:Z

    .line 751
    return-void
.end method

.method public tick(J)V
    .locals 7
    .parameter "currentTime"

    .prologue
    .line 754
    iget-boolean v3, p0, Llewa/laml/ScreenElementRoot;->mFinished:Z

    if-nez v3, :cond_3

    .line 755
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    if-eqz v3, :cond_0

    .line 756
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mVariableBinderManager:Llewa/laml/data/VariableBinderManager;

    invoke-virtual {v3}, Llewa/laml/data/VariableBinderManager;->tick()V

    .line 757
    :cond_0
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mVariableUpdaterManager:Llewa/laml/data/VariableUpdaterManager;

    invoke-virtual {v3, p1, p2}, Llewa/laml/data/VariableUpdaterManager;->tick(J)V

    .line 758
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/elements/ITicker;

    .line 759
    .local v2, ticker:Llewa/laml/elements/ITicker;
    invoke-interface {v2, p1, p2}, Llewa/laml/elements/ITicker;->tick(J)V

    goto :goto_0

    .line 761
    .end local v2           #ticker:Llewa/laml/elements/ITicker;
    :cond_1
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    if-eqz v3, :cond_2

    .line 762
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mElementGroup:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v3, p1, p2}, Llewa/laml/elements/ElementGroup;->tick(J)V

    .line 764
    :cond_2
    iget-object v3, p0, Llewa/laml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v3}, Llewa/laml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v0

    .line 765
    .local v0, d:Ljava/lang/Double;
    if-eqz v0, :cond_3

    .line 766
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Llewa/laml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 768
    .end local v0           #d:Ljava/lang/Double;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-void

    .line 766
    .restart local v0       #d:Ljava/lang/Double;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public updateFramerate(J)J
    .locals 13
    .parameter "time"

    .prologue
    .line 771
    const-wide v4, 0x7fffffffffffffffL

    .line 772
    .local v4, nextUpdateInterval:J
    iget-object v9, p0, Llewa/laml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/FramerateController;

    .line 773
    .local v0, c:Llewa/laml/elements/FramerateController;
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/FramerateController;->updateFramerate(J)J

    move-result-wide v2

    .line 774
    .local v2, l:J
    cmp-long v9, v2, v4

    if-gez v9, :cond_0

    .line 775
    move-wide v4, v2

    goto :goto_0

    .line 779
    .end local v0           #c:Llewa/laml/elements/FramerateController;
    .end local v2           #l:J
    :cond_1
    iget-object v9, p0, Llewa/laml/ScreenElementRoot;->mFrameRateVar:Llewa/laml/util/IndexedNumberVariable;

    if-nez v9, :cond_2

    .line 780
    new-instance v9, Llewa/laml/util/IndexedNumberVariable;

    const-string v10, "frame_rate"

    iget-object v11, p0, Llewa/laml/ScreenElementRoot;->mContext:Llewa/laml/ScreenContext;

    iget-object v11, v11, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v9, v10, v11}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v9, p0, Llewa/laml/ScreenElementRoot;->mFrameRateVar:Llewa/laml/util/IndexedNumberVariable;

    .line 781
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Llewa/laml/ScreenElementRoot;->mCheckPoint:J

    .line 784
    :cond_2
    iget v9, p0, Llewa/laml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, v4, v9

    if-nez v9, :cond_3

    .line 785
    const/high16 v9, 0x447a

    iget v10, p0, Llewa/laml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    div-float/2addr v9, v10

    float-to-long v4, v9

    .line 788
    :cond_3
    iget-wide v9, p0, Llewa/laml/ScreenElementRoot;->mCheckPoint:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    .line 789
    iput-wide p1, p0, Llewa/laml/ScreenElementRoot;->mCheckPoint:J

    .line 800
    :cond_4
    :goto_1
    return-wide v4

    .line 791
    :cond_5
    iget-wide v9, p0, Llewa/laml/ScreenElementRoot;->mCheckPoint:J

    sub-long v7, p1, v9

    .line 792
    .local v7, t:J
    const-wide/16 v9, 0x3e8

    cmp-long v9, v7, v9

    if-ltz v9, :cond_4

    .line 793
    const/high16 v9, 0x447a

    iget v10, p0, Llewa/laml/ScreenElementRoot;->mFrames:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    long-to-float v10, v7

    div-float/2addr v9, v10

    float-to-int v6, v9

    .line 794
    .local v6, r:I
    iget-object v9, p0, Llewa/laml/ScreenElementRoot;->mFramerateHelper:Llewa/laml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v9, v6}, Llewa/laml/ScreenElementRoot$FramerateHelper;->set(I)V

    .line 795
    iget-object v9, p0, Llewa/laml/ScreenElementRoot;->mFrameRateVar:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v10, v6

    invoke-virtual {v9, v10, v11}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 796
    const/4 v9, 0x0

    iput v9, p0, Llewa/laml/ScreenElementRoot;->mFrames:I

    .line 797
    iput-wide p1, p0, Llewa/laml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_1
.end method
