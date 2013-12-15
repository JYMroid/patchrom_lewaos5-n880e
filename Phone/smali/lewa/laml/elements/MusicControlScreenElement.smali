.class public Llewa/laml/elements/MusicControlScreenElement;
.super Llewa/laml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field public static final EXTRA_IS_PLAYING:Ljava/lang/String; = "playing"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field private static final MAX_ALBUM_COVER_PIXEL_SIZE:I = 0x400000

.field private static final MUSIC_NONE:I = 0x0

.field private static final MUSIC_PLAY:I = 0x2

.field private static final MUSIC_STOP:I = 0x1

.field private static final SHOW_ALBUM_COVER_INIT:Z = false

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private isPaused:Z

.field private mAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mArtistVar:Llewa/laml/util/IndexedStringVariable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShow:Z

.field private mButtonNext:Llewa/laml/elements/ButtonScreenElement;

.field private mButtonPause:Llewa/laml/elements/ButtonScreenElement;

.field private mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

.field private mButtonPrev:Llewa/laml/elements/ButtonScreenElement;

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

.field private mFilter:Landroid/content/IntentFilter;

.field private mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

.field private mIsOnlineSongBlocking:Z

.field private mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

.field private mMusicStatus:I

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Llewa/laml/elements/TextScreenElement;

.field private mTitleVar:Llewa/laml/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 102
    new-instance v1, Llewa/laml/elements/MusicControlScreenElement$1;

    invoke-direct {v1, p0}, Llewa/laml/elements/MusicControlScreenElement$1;-><init>(Llewa/laml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    .line 111
    new-instance v1, Llewa/laml/elements/MusicControlScreenElement$2;

    invoke-direct {v1, p0}, Llewa/laml/elements/MusicControlScreenElement$2;-><init>(Llewa/laml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    .line 119
    new-instance v1, Llewa/laml/elements/MusicControlScreenElement$3;

    invoke-direct {v1, p0}, Llewa/laml/elements/MusicControlScreenElement$3;-><init>(Llewa/laml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 183
    const-string v1, "music_prev"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ButtonScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPrev:Llewa/laml/elements/ButtonScreenElement;

    .line 184
    const-string v1, "music_next"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ButtonScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonNext:Llewa/laml/elements/ButtonScreenElement;

    .line 185
    const-string v1, "music_play"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ButtonScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    .line 186
    const-string v1, "music_pause"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ButtonScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    .line 187
    const-string v1, "music_display"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/TextScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;

    .line 188
    const-string v1, "music_album_cover"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ImageScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    .line 189
    invoke-direct {p0, p0}, Llewa/laml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Llewa/laml/elements/ElementGroup;)Llewa/laml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    .line 190
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPrev:Llewa/laml/elements/ButtonScreenElement;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonNext:Llewa/laml/elements/ButtonScreenElement;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPrev:Llewa/laml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->setupButton(Llewa/laml/elements/ButtonScreenElement;)V

    .line 193
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonNext:Llewa/laml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->setupButton(Llewa/laml/elements/ButtonScreenElement;)V

    .line 194
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->setupButton(Llewa/laml/elements/ButtonScreenElement;)V

    .line 195
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->setupButton(Llewa/laml/elements/ButtonScreenElement;)V

    .line 196
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 197
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "defAlbumCover"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, strDefAlbumCoverBmp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v1, v0}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 202
    :cond_0
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->getResourceDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 205
    .end local v0           #strDefAlbumCoverBmp:Ljava/lang/String;
    :cond_1
    const-string v1, "autoShow"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 206
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    .line 208
    iget-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_2

    .line 209
    new-instance v1, Llewa/laml/util/IndexedNumberVariable;

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "music_state"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

    .line 214
    :cond_2
    return-void

    .line 212
    :cond_3
    new-instance v1, Llewa/laml/ScreenElementLoadException;

    const-string v2, "invalid music control"

    invoke-direct {v1, v2}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->updateMusic()V

    return-void
.end method

.method static synthetic access$100(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$1100(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$1202(Llewa/laml/elements/MusicControlScreenElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    return p1
.end method

.method static synthetic access$1300(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$200(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$202(Llewa/laml/elements/MusicControlScreenElement;Llewa/laml/util/IndexedStringVariable;)Llewa/laml/util/IndexedStringVariable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;

    return-object p1
.end method

.method static synthetic access$300(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$302(Llewa/laml/elements/MusicControlScreenElement;Llewa/laml/util/IndexedStringVariable;)Llewa/laml/util/IndexedStringVariable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;

    return-object p1
.end method

.method static synthetic access$400(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;

    return-object v0
.end method

.method static synthetic access$500(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$700(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum()V

    return-void
.end method

.method static synthetic access$802(Llewa/laml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    return p1
.end method

.method static synthetic access$900(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V

    return-void
.end method

.method private dispatchMediaKey(II)V
    .locals 6
    .parameter "action"
    .parameter "keyCode"

    .prologue
    .line 310
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 311
    .local v2, key:Landroid/view/KeyEvent;
    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/view/KeyEvent;->setSource(I)V

    .line 312
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 313
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    invoke-interface {v0, v2}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "MusicControlScreenElement"

    const-string v4, "Unable to find IAudioService for media key event"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findSpectrumVisualizer(Llewa/laml/elements/ElementGroup;)Llewa/laml/elements/SpectrumVisualizerScreenElement;
    .locals 4
    .parameter "g"

    .prologue
    .line 217
    invoke-virtual {p1}, Llewa/laml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/elements/ScreenElement;

    .line 218
    .local v2, se:Llewa/laml/elements/ScreenElement;
    instance-of v3, v2, Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v3, :cond_1

    .line 219
    check-cast v2, Llewa/laml/elements/SpectrumVisualizerScreenElement;

    .line 226
    .end local v2           #se:Llewa/laml/elements/ScreenElement;
    :goto_0
    return-object v2

    .line 220
    .restart local v2       #se:Llewa/laml/elements/ScreenElement;
    :cond_1
    instance-of v3, v2, Llewa/laml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 221
    check-cast v2, Llewa/laml/elements/ElementGroup;

    .end local v2           #se:Llewa/laml/elements/ScreenElement;
    invoke-direct {p0, v2}, Llewa/laml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Llewa/laml/elements/ElementGroup;)Llewa/laml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    .line 222
    .local v1, ret:Llewa/laml/elements/SpectrumVisualizerScreenElement;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 223
    goto :goto_0

    .line 226
    .end local v1           #ret:Llewa/laml/elements/SpectrumVisualizerScreenElement;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeyCode(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 230
    const-string v0, "music_prev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/16 v0, 0x58

    .line 234
    :goto_0
    return v0

    .line 232
    :cond_0
    const-string v0, "music_next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    const/16 v0, 0x57

    goto :goto_0

    .line 234
    :cond_1
    const-string v0, "music_play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "music_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x55

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, requestIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    .line 245
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;Z)V
    .locals 7
    .parameter "intent"
    .parameter "forceRequest"

    .prologue
    .line 248
    const-string v5, "playing"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 249
    .local v3, isPlaying:Z
    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    if-eqz v5, :cond_1

    .line 250
    if-eqz v3, :cond_3

    .line 251
    const-string v5, "album"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, albumName:Ljava/lang/String;
    const-string v5, "artist"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, artistName:Ljava/lang/String;
    if-nez p2, :cond_0

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v5}, Llewa/laml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v5}, Llewa/laml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 255
    :cond_0
    const-string v5, "album_uri"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 256
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "album_path"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, albumPath:Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 258
    if-nez v4, :cond_2

    if-nez v1, :cond_2

    .line 259
    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #albumPath:Ljava/lang/String;
    .end local v2           #artistName:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 261
    .restart local v0       #albumName:Ljava/lang/String;
    .restart local v1       #albumPath:Ljava/lang/String;
    .restart local v2       #artistName:Ljava/lang/String;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_2
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum()V

    goto :goto_0

    .line 265
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #albumPath:Ljava/lang/String;
    .end local v2           #artistName:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3
    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private safeRegisterReceiver()V
    .locals 6

    .prologue
    .line 271
    iget-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 275
    :try_start_0
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v5

    invoke-virtual {v5}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private safeUnregisterReceiver()V
    .locals 4

    .prologue
    .line 289
    iget-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mRegistered:Z

    if-nez v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 293
    :try_start_0
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MusicControlScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMusicStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMediaButtonBroadcast(II)V
    .locals 10
    .parameter "action"
    .parameter "keyCode"

    .prologue
    const/4 v9, 0x0

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 301
    .local v1, eventtime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 302
    .local v0, event:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    const-string v3, "forbid_double_click"

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private setAlbumCover(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 329
    const-string v3, "playing"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 330
    .local v2, isPlaying:Z
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const-string v3, "album"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    .line 333
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    .line 334
    const-string v3, "tmp_album_path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, albumPath:Ljava/lang/String;
    if-eqz v0, :cond_3

    :try_start_0
    new-instance v3, Llewa/util/InputStreamLoader;

    invoke-direct {v3, v0}, Llewa/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    :goto_1
    const/high16 v4, 0x40

    invoke-static {v3, v4}, Llewa/util/ImageUtils;->getBitmap(Llewa/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 340
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 341
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v4}, Llewa/laml/ScreenElementRoot;->getResourceDensity()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 342
    :cond_2
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v4, v3}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->requestUpdate()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const/4 v3, 0x0

    iput-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 347
    const-string v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load album cover bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    :try_start_1
    new-instance v3, Llewa/util/InputStreamLoader;

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.lewa.player/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Llewa/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 342
    :cond_4
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setupButton(Llewa/laml/elements/ButtonScreenElement;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1, p0}, Llewa/laml/elements/ButtonScreenElement;->setListener(Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 354
    invoke-virtual {p1, p0}, Llewa/laml/elements/ButtonScreenElement;->setParent(Llewa/laml/elements/ElementGroup;)V

    .line 356
    :cond_0
    return-void
.end method

.method private updateMusic()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 359
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 360
    .local v0, isMusicActive:Z
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    if-nez v2, :cond_2

    move v1, v3

    .line 361
    .local v1, play:Z
    :goto_0
    if-eqz v0, :cond_3

    const/4 v2, 0x2

    :goto_1
    iput v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 362
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 363
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    invoke-virtual {v2, v1}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 364
    if-eqz v0, :cond_0

    .line 365
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 366
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum()V

    .line 370
    :cond_0
    :goto_3
    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_1

    .line 371
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v0, :cond_6

    const-wide/high16 v2, 0x3ff0

    :goto_4
    invoke-virtual {v4, v2, v3}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 373
    :cond_1
    if-eqz v0, :cond_7

    const/high16 v2, 0x41f0

    :goto_5
    invoke-virtual {p0, v2}, Llewa/laml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 374
    return-void

    .end local v1           #play:Z
    :cond_2
    move v1, v4

    .line 360
    goto :goto_0

    .restart local v1       #play:Z
    :cond_3
    move v2, v3

    .line 361
    goto :goto_1

    :cond_4
    move v3, v4

    .line 362
    goto :goto_2

    .line 367
    :cond_5
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    invoke-virtual {v2}, Llewa/laml/elements/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 368
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 371
    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_4

    .line 373
    :cond_7
    const/4 v2, 0x0

    goto :goto_5
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 379
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 381
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 384
    invoke-super {p0}, Llewa/laml/elements/ElementGroup;->init()V

    .line 385
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 386
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    .line 387
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.lockscreen"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.UpdateAtristBG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.playStatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    .line 399
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->resume()V

    .line 400
    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 408
    .local v1, keyCode:I
    if-nez v1, :cond_0

    .line 415
    :goto_0
    return v2

    .line 411
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 412
    .local v0, handler:Landroid/os/Handler;
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 414
    invoke-direct {p0, v2, v1}, Llewa/laml/elements/MusicControlScreenElement;->dispatchMediaKey(II)V

    .line 415
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 424
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 425
    .local v1, keyCode:I
    if-nez v1, :cond_0

    .line 426
    const/4 v2, 0x0

    .line 452
    :goto_0
    return v2

    .line 428
    :cond_0
    invoke-direct {p0, v2, v1}, Llewa/laml/elements/MusicControlScreenElement;->dispatchMediaKey(II)V

    .line 429
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 430
    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Llewa/laml/elements/MusicControlScreenElement$4;

    invoke-direct {v3, p0, p1}, Llewa/laml/elements/MusicControlScreenElement$4;-><init>(Llewa/laml/elements/MusicControlScreenElement;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 451
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 457
    invoke-super {p0, p1}, Llewa/laml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 458
    if-eqz p1, :cond_0

    .line 459
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->resume()V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 466
    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    if-nez v0, :cond_0

    .line 467
    invoke-super {p0}, Llewa/laml/elements/ElementGroup;->pause()V

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    .line 469
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 471
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 472
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 476
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 479
    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    if-eqz v2, :cond_4

    .line 480
    invoke-super {p0}, Llewa/laml/elements/ElementGroup;->resume()V

    .line 481
    iput-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    .line 482
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v2}, Llewa/util/AudioOutputHelper;->hasActiveReceivers(Landroid/content/Context;)Z

    move-result v1

    .line 483
    .local v1, isMusicActive:Z
    if-eqz v1, :cond_0

    .line 484
    const/4 v2, 0x2

    iput v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 486
    :cond_0
    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_1

    .line 487
    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v1, :cond_5

    const-wide/high16 v2, 0x3ff0

    :goto_0
    invoke-virtual {v5, v2, v3}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 490
    :cond_1
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 491
    .local v0, flagshow:Z
    :cond_3
    if-eqz v0, :cond_4

    .line 492
    invoke-virtual {p0, v4}, Llewa/laml/elements/MusicControlScreenElement;->show(Z)V

    .line 495
    .end local v0           #flagshow:Z
    .end local v1           #isMusicActive:Z
    :cond_4
    return-void

    .line 487
    .restart local v1       #isMusicActive:Z
    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public show(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-super {p0, p1}, Llewa/laml/elements/ElementGroup;->show(Z)V

    .line 499
    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    .line 503
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->updateMusic()V

    .line 512
    :goto_0
    return-void

    .line 505
    :cond_0
    iput v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 506
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 508
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    invoke-virtual {v0, v2}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 510
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/laml/elements/MusicControlScreenElement;->requestFramerate(F)V

    goto :goto_0
.end method

.method protected updateSpectrumVisualizer()V
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 516
    .local v0, isMusicActive:Z
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v1, :cond_0

    .line 517
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 519
    :cond_0
    return-void

    .line 517
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
