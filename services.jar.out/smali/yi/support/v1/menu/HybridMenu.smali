.class public Lyi/support/v1/menu/HybridMenu;
.super Lyi/support/v1/menu/HybridMenuPresenter;
.source "HybridMenu.java"

# interfaces
.implements Lyi/support/v1/YiLaf$MenuWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;,
        Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;,
        Lyi/support/v1/menu/HybridMenu$ContentMask;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentMask:Lyi/support/v1/menu/HybridMenu$ContentMask;

.field private mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

.field private final mMenuManager:Lyi/support/v1/menu/MenuManager;

.field private final mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

.field private mMenuPanelObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

.field private mPanelUserVisibility:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 57
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPresenter;-><init>()V

    .line 55
    const/4 v2, 0x0

    iput v2, p0, Lyi/support/v1/menu/HybridMenu;->mPanelUserVisibility:I

    .line 184
    new-instance v2, Lyi/support/v1/menu/HybridMenu$1;

    invoke-direct {v2, p0}, Lyi/support/v1/menu/HybridMenu$1;-><init>(Lyi/support/v1/menu/HybridMenu;)V

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanelObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

    .line 58
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->begin()V

    .line 60
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mActivity:Ljava/lang/ref/WeakReference;

    .line 61
    const v2, 0x502003f

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, hybridMenu:Landroid/view/View;
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->elapse()V

    .line 65
    if-nez v1, :cond_0

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x509001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .local v0, decorView:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    .end local v0           #decorView:Landroid/view/ViewGroup;
    :cond_0
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->elapse()V

    .line 73
    new-instance v2, Lyi/support/v1/menu/HybridMenu$ContentMask;

    invoke-direct {v2, p0, v1}, Lyi/support/v1/menu/HybridMenu$ContentMask;-><init>(Lyi/support/v1/menu/HybridMenu;Landroid/view/View;)V

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mContentMask:Lyi/support/v1/menu/HybridMenu$ContentMask;

    .line 75
    const v2, 0x5020042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lyi/support/v1/menu/HybridMenuPanel;

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    .line 76
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    iget-object v3, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanelObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

    invoke-virtual {v2, v3}, Lyi/support/v1/menu/HybridMenuPanel;->setObserver(Lyi/support/v1/menu/HybridMenuPanel$Observer;)V

    .line 78
    new-instance v2, Lyi/support/v1/menu/MenuManager;

    invoke-direct {v2, p1}, Lyi/support/v1/menu/MenuManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    .line 80
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->end()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lyi/support/v1/menu/HybridMenu;)Lyi/support/v1/menu/HybridMenu$ContentMask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mContentMask:Lyi/support/v1/menu/HybridMenu$ContentMask;

    return-object v0
.end method

.method static synthetic access$500(Lyi/support/v1/menu/HybridMenu;)Lyi/support/v1/menu/HybridMenuPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    return-object v0
.end method

.method static synthetic access$600(Lyi/support/v1/menu/HybridMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->onCollapseItemActionView()V

    return-void
.end method

.method static synthetic access$700(Lyi/support/v1/menu/HybridMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->onExpandItemActionView()V

    return-void
.end method

.method private doUpdateMenuView()V
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    invoke-virtual {v1}, Lyi/support/v1/menu/MenuManager;->getMenuViewContainer()Lyi/support/v1/menu/MenuManager$MenuViewContainer;

    move-result-object v0

    .line 111
    .local v0, container:Lyi/support/v1/menu/MenuManager$MenuViewContainer;
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->getActionMenu()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0}, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->getListMenu()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lyi/support/v1/menu/HybridMenuPanel;->setContent(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 112
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->refreshPanelVisibility()V

    .line 113
    return-void
.end method

.method private onCollapseItemActionView()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyi/support/v1/menu/HybridMenu;->setPanelVisibility(I)V

    .line 222
    return-void
.end method

.method private onExpandItemActionView()V
    .locals 1

    .prologue
    .line 217
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyi/support/v1/menu/HybridMenu;->setPanelVisibility(I)V

    .line 218
    return-void
.end method

.method private openOptionsMenu(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 178
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->getPermission()Lyi/support/v1/menu/HybridMenuPanel$Permission;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel$Permission;->isReadyToPrepareMenuPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/MenuManager;->onPreparePanel(Landroid/view/KeyEvent;)Z

    .line 181
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->openMenu()V

    .line 182
    return-void
.end method

.method private setupConnectionWithActionBar()V
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    iget-object v0, v1, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    .line 210
    .local v0, st:Lyi/support/v1/menu/PanelFeatureState;
    iget-object v1, v0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;-><init>(Lyi/support/v1/menu/HybridMenu;Lyi/support/v1/menu/HybridMenu$1;)V

    iput-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    .line 212
    iget-object v1, v0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/yi/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->closeMenu()V

    .line 97
    return-void
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 232
    .local v0, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/yi/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 234
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->onCollapseItemActionView()V

    .line 236
    :cond_0
    return-void

    .line 230
    .end local v0           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 174
    :cond_1
    :goto_0
    return v0

    .line 150
    :sswitch_0
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenuPanel;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenuPanel;->isMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->closeOptionsMenu()V

    .line 156
    :goto_1
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2, v1}, Lyi/support/v1/menu/HybridMenuPanel;->playSoundEffect(I)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenu;->openOptionsMenu(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 164
    :sswitch_1
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->hasExpandedActionView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->collapseActionView()V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenuPanel;->isMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->closeOptionsMenu()V

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public enablePanelWhenSoftInputShown(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 117
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/HybridMenuPanel;->enablePanelWhenSoftInputShown(Z)V

    .line 118
    return-void
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/yi/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 101
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->closeOptionsMenu()V

    .line 102
    return-void
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 84
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/MenuManager;->onCreatePanelView(I)Lyi/support/v1/menu/MenuManager$MenuViewContainer;

    .line 85
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    invoke-virtual {v0, p0}, Lyi/support/v1/menu/MenuManager;->addOtherPresenters(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 86
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->setupConnectionWithActionBar()V

    .line 87
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->doUpdateMenuView()V

    .line 88
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    return-object v0
.end method

.method public onScrolled(IIF)V
    .locals 2
    .parameter "currentPosition"
    .parameter "scollPosition"
    .parameter "positionOffset"

    .prologue
    .line 122
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p3, v0}, Lyi/support/v1/menu/HybridMenuPanel;->fadeActionMenu(FZ)V

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyi/support/v1/menu/HybridMenu;->openOptionsMenu(Landroid/view/KeyEvent;)V

    .line 93
    return-void
.end method

.method public refreshPanelVisibility()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lyi/support/v1/menu/HybridMenu;->mPanelUserVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lyi/support/v1/YiLaf;->get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/YiLaf$Interface;->getActionBar()Lyi/support/v1/YiLaf$ActionBarWrapper;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/YiLaf$ActionBarWrapper;->hasCustomView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->hidePanel()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->showPanel()V

    goto :goto_0
.end method

.method public setPanelTransparency(Z)V
    .locals 1
    .parameter "transparent"

    .prologue
    .line 133
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/HybridMenuPanel;->setPanelTransparency(Z)V

    .line 134
    return-void
.end method

.method public setPanelVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 127
    iput p1, p0, Lyi/support/v1/menu/HybridMenu;->mPanelUserVisibility:I

    .line 128
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->refreshPanelVisibility()V

    .line 129
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0
    .parameter "cleared"

    .prologue
    .line 106
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->doUpdateMenuView()V

    .line 107
    return-void
.end method
