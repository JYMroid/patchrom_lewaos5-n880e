.class final Lcom/lewa/phone/ContactsAsyncHelper$WorkerArgs;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public cookie:Ljava/lang/Object;

.field public defaultResource:I

.field public info:Lcom/android/internal/telephony/CallerInfo;

.field public listener:Lcom/lewa/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

.field public result:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;

.field public view:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/phone/ContactsAsyncHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/lewa/phone/ContactsAsyncHelper$WorkerArgs;-><init>()V

    return-void
.end method
