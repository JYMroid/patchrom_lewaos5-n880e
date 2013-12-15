.class public Lcom/baidu/themeanimation/element/ButtonElement;
.super Lcom/baidu/themeanimation/element/BaseElement;
.source "ButtonElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;,
        Lcom/baidu/themeanimation/element/ButtonElement$Trigger;
    }
.end annotation


# static fields
.field public static final DOUBLE_CLICK:I = 0x1

.field private static final DOUBLE_CLICK_THREHOLD:J = 0xfaL

.field public static final SINGLE_CLICK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "button"


# instance fields
.field private mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

.field private mLastDownTime:J

.field private mNormalState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/ButtonElement$Trigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BaseElement;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    .line 184
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mLastDownTime:J

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mState:I

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/ButtonElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/baidu/themeanimation/element/ButtonElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/themeanimation/element/ButtonElement;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/themeanimation/element/ButtonElement;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/themeanimation/element/ButtonElement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mLastDownTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/baidu/themeanimation/element/ButtonElement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mLastDownTime:J

    return-wide p1
.end method


# virtual methods
.method public addTrigger(Lcom/baidu/themeanimation/element/ButtonElement$Trigger;)V
    .locals 1
    .parameter "trigger"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mTriggers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mTriggers:Ljava/util/List;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public clearView()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 151
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    if-eqz v2, :cond_3

    .line 152
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 153
    .local v1, viewGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 162
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseElement;->clearView()V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->removeAllViews()V

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    .line 170
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;-><init>(Lcom/baidu/themeanimation/element/ButtonElement;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ButtonElement;->setView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    return-object v0
.end method

.method public getNormalState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    return-object v0
.end method

.method public getPressedState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    return-object v0
.end method

.method public invokeTrigger(ILandroid/content/Context;)V
    .locals 4
    .parameter "clickType"
    .parameter "context"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mTriggers:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mTriggers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mTriggers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;

    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/ButtonElement$Trigger;->invoke(I)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 75
    const-string v1, "vibrator"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 77
    :cond_1
    return-void
.end method

.method public setNormalState(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, normalElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    .line 34
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1, p0}, Lcom/baidu/themeanimation/element/BaseElement;->setParentElement(Lcom/baidu/themeanimation/element/BaseElement;)V

    .line 37
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/BaseElement;->addFlag(I)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public setPressedState(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/BaseElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, pressedElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    .line 49
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v1, p0}, Lcom/baidu/themeanimation/element/BaseElement;->setParentElement(Lcom/baidu/themeanimation/element/BaseElement;)V

    .line 52
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/BaseElement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/BaseElement;->addFlag(I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public startAnimations()V
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/BaseElement;>;"
    iget v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 140
    :goto_0
    if-eqz v0, :cond_0

    .line 141
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/BaseElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/BaseElement;->startAnimations()V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    .end local v1           #i:I
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    .line 130
    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    .line 134
    goto :goto_0

    .line 145
    :cond_0
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
