.class public Lcom/yi/internal/view/menu/SubMenuBuilder;
.super Lcom/yi/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/yi/internal/view/menu/MenuItemImpl;

.field private mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .parameter "context"
    .parameter "parentMenu"
    .parameter "item"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    .line 38
    iput-object p3, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 39
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/yi/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/yi/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/yi/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/yi/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/yi/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    .line 128
    .local v0, itemId:I
    :goto_0
    if-nez v0, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 131
    :goto_1
    return-object v1

    .line 127
    .end local v0           #itemId:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    .restart local v0       #itemId:I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/yi/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/yi/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->setCallback(Lcom/yi/internal/view/menu/MenuBuilder$Callback;)V

    .line 72
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/yi/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .parameter "icon"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/yi/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/yi/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/yi/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1
    .parameter "view"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/yi/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 92
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .parameter "icon"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 87
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 44
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .parameter "shortcutsVisible"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yi/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 54
    return-void
.end method
