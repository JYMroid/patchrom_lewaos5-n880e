.class public Lyi/widget/ScrollTabBar;
.super Ljava/lang/Object;
.source "ScrollTabBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/widget/ScrollTabBar$1;,
        Lyi/widget/ScrollTabBar$ScrollTabBarImp;,
        Lyi/widget/ScrollTabBar$ScrollTabBarStub;,
        Lyi/widget/ScrollTabBar$Interface;
    }
.end annotation


# static fields
.field private static final DEFAULT_SLID_DRAWABLE_RES_LAND:I = 0x5080101

.field private static final DEFAULT_SLID_DRAWABLE_RES_PORT:I = 0x5080101

.field private static final TAG:Ljava/lang/String; = "SrollTabBar"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static create(Landroid/app/Activity;)Lyi/widget/ScrollTabBar$Interface;
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    const v3, 0x5080101

    .line 56
    const v0, 0x5020014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, viewPageObj:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;-><init>(Landroid/app/Activity;Ljava/lang/Object;IILyi/widget/ScrollTabBar$1;)V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lyi/widget/ScrollTabBar$ScrollTabBarStub;

    invoke-direct {v0, v5}, Lyi/widget/ScrollTabBar$ScrollTabBarStub;-><init>(Lyi/widget/ScrollTabBar$1;)V

    goto :goto_0
.end method
