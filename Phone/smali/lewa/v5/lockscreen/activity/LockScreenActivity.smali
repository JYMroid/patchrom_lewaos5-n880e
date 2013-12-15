.class public Llewa/v5/lockscreen/activity/LockScreenActivity;
.super Landroid/app/Activity;
.source "LockScreenActivity.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_MEIZU:Z = false

.field private static final TAG:Ljava/lang/String; = "LockScreenActivity"

.field public static sLocked:Z


# instance fields
.field private mClearCache:Z

.field private mLockScreen:Llewa/v5/lockscreen/activity/FancyLockScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Llewa/v5/lockscreen/activity/LockScreenActivity;->IS_MEIZU:Z

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Llewa/v5/lockscreen/activity/LockScreenActivity;->sLocked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/v5/lockscreen/activity/LockScreenActivity;->mClearCache:Z

    return-void
.end method

.method private hideBottomActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 84
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "split_action_bar"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, resId:I
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 88
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    const-string v2, "LockScreenActivity"

    const-string v3, "hideBottomActionBar"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 78
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    sget-boolean v0, Llewa/v5/lockscreen/activity/LockScreenActivity;->IS_MEIZU:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Llewa/v5/lockscreen/activity/LockScreenActivity;->hideBottomActionBar()V

    .line 29
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Llewa/v5/lockscreen/activity/LockScreenActivity;->sLocked:Z

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Llewa/v5/lockscreen/activity/FancyLockScreen;

    invoke-direct {v0, p0}, Llewa/v5/lockscreen/activity/FancyLockScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/LockScreenActivity;->mLockScreen:Llewa/v5/lockscreen/activity/FancyLockScreen;

    invoke-virtual {p0, v0}, Llewa/v5/lockscreen/activity/LockScreenActivity;->setContentView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 95
    const-string v0, "Clear & Quit"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    iget-object v0, p0, Llewa/v5/lockscreen/activity/LockScreenActivity;->mLockScreen:Llewa/v5/lockscreen/activity/FancyLockScreen;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/FancyLockScreen;->cleanUp()V

    .line 43
    iget-boolean v0, p0, Llewa/v5/lockscreen/activity/LockScreenActivity;->mClearCache:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Llewa/v5/lockscreen/activity/FancyLockScreen;->clearCache()V

    .line 45
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return v1

    .line 103
    :pswitch_0
    iput-boolean v1, p0, Llewa/v5/lockscreen/activity/LockScreenActivity;->mClearCache:Z

    .line 104
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/LockScreenActivity;->finish()V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 57
    const/4 v0, 0x0

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Llewa/v5/lockscreen/activity/LockScreenActivity;->overridePendingTransition(II)V

    .line 58
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 50
    iget-object v0, p0, Llewa/v5/lockscreen/activity/LockScreenActivity;->mLockScreen:Llewa/v5/lockscreen/activity/FancyLockScreen;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/FancyLockScreen;->onResume()V

    .line 51
    const/high16 v0, 0x10a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Llewa/v5/lockscreen/activity/LockScreenActivity;->overridePendingTransition(II)V

    .line 52
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 63
    sget-boolean v0, Llewa/v5/lockscreen/activity/LockScreenActivity;->sLocked:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Llewa/v5/lockscreen/activity/LockScreenActivity;->mLockScreen:Llewa/v5/lockscreen/activity/FancyLockScreen;

    invoke-virtual {v0}, Llewa/v5/lockscreen/activity/FancyLockScreen;->onPause()V

    .line 65
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Llewa/v5/lockscreen/activity/LockScreenActivity;->sLocked:Z

    .line 36
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/LockScreenActivity;->finish()V

    .line 37
    return-void
.end method
