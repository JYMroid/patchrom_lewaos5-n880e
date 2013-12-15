.class public Llewa/v5/lockscreen/LockScreenElementFactory;
.super Llewa/laml/elements/ScreenElementFactory;
.source "LockScreenElementFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Llewa/laml/elements/ScreenElementFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ScreenElement;
    .locals 2
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, tag:Ljava/lang/String;
    const-string v1, "Unlocker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    new-instance v1, Llewa/v5/lockscreen/UnlockerScreenElement;

    check-cast p2, Llewa/v5/lockscreen/LockScreenRoot;

    .end local p2
    invoke-direct {v1, p1, p2}, Llewa/v5/lockscreen/UnlockerScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/v5/lockscreen/LockScreenRoot;)V

    .line 21
    :goto_0
    return-object v1

    .line 18
    .restart local p2
    :cond_0
    const-string v1, "Wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Llewa/v5/lockscreen/WallpaperScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/v5/lockscreen/WallpaperScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    goto :goto_0
.end method
