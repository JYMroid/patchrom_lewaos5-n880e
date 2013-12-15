.class Llewa/laml/elements/BitmapProvider$ResourceImageProvider;
.super Llewa/laml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceImageProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ResourceImage"


# instance fields
.field private mCachedBitmapName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llewa/laml/elements/BitmapProvider;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 83
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-super {p0}, Llewa/laml/elements/BitmapProvider;->finish()V

    .line 68
    iput-object v0, p0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 70
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"

    .prologue
    .line 73
    iget-object v0, p0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    :cond_1
    iput-object p1, p0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v0, p1}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    :cond_2
    iget-object v0, p0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
