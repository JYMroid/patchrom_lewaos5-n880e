.class Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;
.super Landroid/widget/BaseAdapter;
.source "FancyIconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/v5/lockscreen/activity/FancyIconActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconAdapter"
.end annotation


# instance fields
.field private mIconSize:I

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutParams:Landroid/widget/AbsListView$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, drawables:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 146
    iput-object p2, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mInfos:Ljava/util/List;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mIconSize:I

    .line 149
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mIconSize:I

    iget v2, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 150
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 159
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 164
    iget-object v0, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x5

    .line 169
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 172
    check-cast v2, Landroid/widget/ImageView;

    .line 179
    .local v2, v:Landroid/widget/ImageView;
    :goto_0
    iget-object v3, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 180
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 181
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    return-object v2

    .line 174
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 175
    .restart local v2       #v:Landroid/widget/ImageView;
    iget-object v3, p0, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->mLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "who"

    .prologue
    .line 199
    invoke-virtual {p0}, Llewa/v5/lockscreen/activity/FancyIconActivity$IconAdapter;->notifyDataSetInvalidated()V

    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 187
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 195
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "who"
    .parameter "what"

    .prologue
    .line 191
    return-void
.end method
