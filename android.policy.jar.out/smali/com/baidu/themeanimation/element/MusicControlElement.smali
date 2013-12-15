.class public Lcom/baidu/themeanimation/element/MusicControlElement;
.super Lcom/baidu/themeanimation/element/BaseElement;
.source "MusicControlElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicControl"

.field private static final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private mAutoShow:Ljava/lang/Boolean;

.field private mElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicControlView:Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/element/MusicControlElement;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 88
    sget-object v0, Lcom/baidu/themeanimation/element/MusicControlElement;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 89
    sget-object v0, Lcom/baidu/themeanimation/element/MusicControlElement;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseElement;-><init>()V

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mAutoShow:Ljava/lang/Boolean;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mMusicControlView:Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/MusicControlElement;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/baidu/themeanimation/element/MusicControlElement;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method


# virtual methods
.method public addElement(Lcom/baidu/themeanimation/element/BaseElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 55
    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    return-void
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mMusicControlView:Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;-><init>(Lcom/baidu/themeanimation/element/MusicControlElement;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mMusicControlView:Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;

    .line 81
    :cond_0
    const-string v0, "MusicControl"

    const-string v1, "music control generate view!"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mMusicControlView:Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/MusicControlElement;->setView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mMusicControlView:Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;

    return-object v0
.end method

.method public getAutoShow()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mAutoShow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    const-string v0, "MusicControl"

    .line 312
    .local v0, name:Ljava/lang/String;
    const-string v1, "MusicControl"

    return-object v1
.end method

.method public setAutoShow(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "autoShow"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mAutoShow:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method public setAutoShow(Ljava/lang/String;)V
    .locals 1
    .parameter "autoShow"

    .prologue
    .line 51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/MusicControlElement;->setAutoShow(Ljava/lang/Boolean;)V

    .line 52
    return-void
.end method

.method public startAnimations()V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/BaseElement;->startAnimations()V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0           #i:I
    :cond_0
    return-void
.end method
