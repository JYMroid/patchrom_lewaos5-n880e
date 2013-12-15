.class public final Lcom/lewa/lockscreen/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/lockscreen/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallForwardEditPreference:[I = null

.field public static final CallForwardEditPreference_reason:I = 0x1

.field public static final CallForwardEditPreference_serviceClass:I = 0x0

.field public static final EditPhoneNumberPreference:[I = null

.field public static final EditPhoneNumberPreference_changeNumButtonText:I = 0x2

.field public static final EditPhoneNumberPreference_confirmMode:I = 0x3

.field public static final EditPhoneNumberPreference_disableButtonText:I = 0x1

.field public static final EditPhoneNumberPreference_enableButtonText:I = 0x0

.field public static final IncomWidgetView:[I = null

.field public static final IncomWidgetView_bottomChevronDrawable:I = 0x7

.field public static final IncomWidgetView_directionDescriptions:I = 0x2

.field public static final IncomWidgetView_feedbackCount:I = 0xd

.field public static final IncomWidgetView_handleDrawable:I = 0x3

.field public static final IncomWidgetView_hitRadius:I = 0xa

.field public static final IncomWidgetView_horizontalOffset:I = 0xf

.field public static final IncomWidgetView_leftChevronDrawable:I = 0x4

.field public static final IncomWidgetView_outerRadius:I = 0x9

.field public static final IncomWidgetView_rightChevronDrawable:I = 0x5

.field public static final IncomWidgetView_snapMargin:I = 0xc

.field public static final IncomWidgetView_targetDescriptions:I = 0x1

.field public static final IncomWidgetView_targetDrawables:I = 0x0

.field public static final IncomWidgetView_topChevronDrawable:I = 0x6

.field public static final IncomWidgetView_verticalOffset:I = 0xe

.field public static final IncomWidgetView_vibrationDuration:I = 0xb

.field public static final IncomWidgetView_waveDrawable:I = 0x8

.field public static final SpectrumVisualizer:[I = null

.field public static final SpectrumVisualizer_alpha_width:I = 0x0

.field public static final SpectrumVisualizer_care_streamactive:I = 0x5

.field public static final SpectrumVisualizer_sliding_dot_bar:I = 0x1

.field public static final SpectrumVisualizer_sliding_panel:I = 0x2

.field public static final SpectrumVisualizer_sliding_shadow_dot_bar:I = 0x3

.field public static final SpectrumVisualizer_symmetry:I = 0x6

.field public static final SpectrumVisualizer_update_enable:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4815
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lewa/lockscreen/R$styleable;->CallForwardEditPreference:[I

    .line 4871
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lewa/lockscreen/R$styleable;->EditPhoneNumberPreference:[I

    .line 4981
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lewa/lockscreen/R$styleable;->IncomWidgetView:[I

    .line 5239
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lewa/lockscreen/R$styleable;->SpectrumVisualizer:[I

    return-void

    .line 4815
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
    .end array-data

    .line 4871
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
    .end array-data

    .line 4981
    :array_2
    .array-data 0x4
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
        0x19t 0x0t 0x1t 0x7ft
        0x1at 0x0t 0x1t 0x7ft
        0x1bt 0x0t 0x1t 0x7ft
        0x1ct 0x0t 0x1t 0x7ft
    .end array-data

    .line 5239
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
