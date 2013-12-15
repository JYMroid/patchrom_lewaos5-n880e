.class public Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConstellationAdapter.java"


# static fields
.field private static final MAX_COSTELLATION_COUNT:I = 0xa


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 1
    .parameter "c"
    .parameter "callback"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 20
    iput-object p2, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 28
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 29
    rem-int/lit8 p1, p1, 0xa

    .line 32
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 37
    rem-int/lit8 p1, p1, 0xa

    .line 39
    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v2, 0x109002f

    const/4 v3, 0x0

    .line 43
    move-object v0, p2

    .line 45
    .local v0, view:Landroid/view/View;
    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    .line 46
    rem-int/lit8 p1, p1, 0xa

    .line 49
    :cond_0
    if-nez v0, :cond_1

    .line 50
    add-int/lit8 v1, p1, 0x1

    packed-switch v1, :pswitch_data_0

    .line 82
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v1, v0

    .line 86
    check-cast v1, Lcom/baidu/internal/keyguard/hotword/Constellation;

    invoke-virtual {v1, p1}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setPage(I)V

    move-object v1, v0

    .line 87
    check-cast v1, Lcom/baidu/internal/keyguard/hotword/Constellation;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 88
    return-object v0

    .line 52
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090030

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090031

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    goto :goto_0

    .line 61
    :pswitch_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090032

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    goto :goto_0

    .line 64
    :pswitch_4
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090033

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    goto :goto_0

    .line 67
    :pswitch_5
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090034

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    goto :goto_0

    .line 70
    :pswitch_6
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090035

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    goto :goto_0

    .line 73
    :pswitch_7
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090036

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    goto :goto_0

    .line 76
    :pswitch_8
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090037

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    goto :goto_0

    .line 79
    :pswitch_9
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090038

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
