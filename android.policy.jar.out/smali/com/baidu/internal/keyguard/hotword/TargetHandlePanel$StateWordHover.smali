.class Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;
.super Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
.source "TargetHandlePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateWordHover"
.end annotation


# instance fields
.field private final PARAM_CSRC:Ljava/lang/String;

.field private final SEARCHBOX_QUERY_ACTION:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;-><init>()V

    .line 538
    const-string v0, "com.baidu.searchbox.action.SEARCH"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->SEARCHBOX_QUERY_ACTION:Ljava/lang/String;

    .line 540
    const-string v0, "lock_main_topword"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->PARAM_CSRC:Ljava/lang/String;

    return-void
.end method

.method private getSearchboxQueryIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .parameter "key"

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.searchbox.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 600
    const-string v1, "search_source"

    const-string v2, "lock_main_topword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v1, "BROWSER_RESTART"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 603
    return-object v0
.end method

.method private getSearchboxQueryIntentByUrl(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "query"

    .prologue
    .line 588
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.searchbox.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 591
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 592
    return-object v0
.end method


# virtual methods
.method public draw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$800()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;Z)V

    .line 549
    :goto_0
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1100()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 550
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 551
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1000()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 552
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1600()I

    move-result v0

    if-lez v0, :cond_0

    .line 553
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;)V

    .line 555
    :cond_0
    return-void

    .line 547
    :cond_1
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$900()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State$ViewState;Z)V

    goto :goto_0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .parameter "context"

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    .line 561
    .local v2, word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->isSearchboxInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    iget v3, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 563
    iget-object v3, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->getSearchboxQueryIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 564
    invoke-static {p1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    move-result-object v3

    const-string v4, "0203"

    iget-object v5, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_0
    :goto_0
    return-object v0

    .line 566
    :cond_1
    iget v3, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 567
    iget-object v3, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;->getSearchboxQueryIntentByUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 568
    invoke-static {p1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    move-result-object v3

    const-string v4, "0205"

    iget-object v5, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://m.baidu.com/s?word="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 573
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 574
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public isSearchboxInstalled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 582
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.baidu.searchbox.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 584
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public leave()V
    .locals 2

    .prologue
    .line 608
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$2100()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10800e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    return-void
.end method
