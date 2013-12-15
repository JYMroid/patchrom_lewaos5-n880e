.class public Lcom/yi/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/yi/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mImageView:Landroid/widget/ImageView;

.field private mItemData:Lcom/yi/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mTextView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0, p0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/yi/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/yi/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/yi/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/yi/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 49
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {p1, p0}, Lcom/yi/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/yi/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 54
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 55
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 56
    return-void

    .line 54
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/yi/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    .line 125
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 40
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    .line 41
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 42
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 136
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 82
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 88
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 76
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

.method public setItemInvoker(Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "invoker"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 117
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 68
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method
