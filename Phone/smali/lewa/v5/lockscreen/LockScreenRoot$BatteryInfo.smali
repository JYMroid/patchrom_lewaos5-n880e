.class Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;
.super Ljava/lang/Object;
.source "LockScreenRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/v5/lockscreen/LockScreenRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryInfo"
.end annotation


# instance fields
.field public batteryLevel:I

.field public pluggedIn:Z

.field public showBatteryInfo:Z


# direct methods
.method public constructor <init>(ZZI)V
    .locals 0
    .parameter "s"
    .parameter "p"
    .parameter "l"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-boolean p1, p0, Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;->showBatteryInfo:Z

    .line 230
    iput-boolean p2, p0, Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;->pluggedIn:Z

    .line 231
    iput p3, p0, Llewa/v5/lockscreen/LockScreenRoot$BatteryInfo;->batteryLevel:I

    .line 232
    return-void
.end method
