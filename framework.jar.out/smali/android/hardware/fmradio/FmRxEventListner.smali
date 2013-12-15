.class Landroid/hardware/fmradio/FmRxEventListner;
.super Ljava/lang/Object;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FMRadio"


# instance fields
.field private final EVENT_LISTEN:I

.field private final STD_BUF_SIZE:I

.field volatile mStop:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "FMRadio"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/fmradio/FmRxEventListner;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->EVENT_LISTEN:I

    .line 42
    const/16 v0, 0x80

    iput v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->STD_BUF_SIZE:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->mStop:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Landroid/hardware/fmradio/FmRxEventListner;->DEBUG:Z

    return v0
.end method

.method private startListnerQcomFm(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 1
    .parameter "fd"
    .parameter "cb"

    .prologue
    .line 71
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/fmradio/FmRxEventListner$1;-><init>(Landroid/hardware/fmradio/FmRxEventListner;ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    .line 229
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    return-void
.end method

.method private stopListenerQcomFm()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "FMRadio"

    const-string/jumbo v1, "stopListenerQcomFm:stopping the Listener\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 2
    .parameter "fd"
    .parameter "cb"

    .prologue
    .line 245
    const-string/jumbo v1, "ro.config.fm_type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, fmType:Ljava/lang/String;
    const-string v1, "libqcomfm_if"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0, p1, p2}, Landroid/hardware/fmradio/FmRxEventListner;->startListnerQcomFm(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    .line 352
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v1, Landroid/hardware/fmradio/FmRxEventListner$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/fmradio/FmRxEventListner$2;-><init>(Landroid/hardware/fmradio/FmRxEventListner;ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    iput-object v1, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    .line 351
    iget-object v1, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopListener()V
    .locals 2

    .prologue
    .line 355
    const-string/jumbo v1, "ro.config.fm_type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, fmType:Ljava/lang/String;
    const-string v1, "libqcomfm_if"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-direct {p0}, Landroid/hardware/fmradio/FmRxEventListner;->stopListenerQcomFm()V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/fmradio/FmRxEventListner;->mStop:Z

    .line 361
    iget-object v1, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
