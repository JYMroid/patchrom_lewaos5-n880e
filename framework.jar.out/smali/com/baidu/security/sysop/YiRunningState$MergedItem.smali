.class public Lcom/baidu/security/sysop/YiRunningState$MergedItem;
.super Lcom/baidu/security/sysop/YiRunningState$BaseItem;
.source "YiRunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/security/sysop/YiRunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MergedItem"
.end annotation


# instance fields
.field public mIsLocked:Z

.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field public final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field public mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

.field public final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 488
    invoke-direct {p0, v2}, Lcom/baidu/security/sysop/YiRunningState$BaseItem;-><init>(Z)V

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 483
    iput-boolean v2, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mIsLocked:Z

    .line 485
    iput v1, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mLastNumServices:I

    .line 489
    return-void
.end method


# virtual methods
.method update(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "background"

    .prologue
    .line 492
    iget-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v2, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    .line 493
    iget-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v2, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 494
    iget-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v2, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 495
    iput-boolean p2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mBackground:Z

    .line 516
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    .line 517
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 519
    .local v1, si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-wide v2, v1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    iget-wide v4, v1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 520
    iget-wide v2, v1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    iput-wide v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v1           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 528
    iget-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-wide v2, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    iput-wide v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 530
    iget-wide v3, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    iget-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-wide v5, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    add-long v2, v3, v5

    iput-wide v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_0
    iget-wide v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, sizeStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 536
    iput-object v1, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    .line 542
    :cond_1
    return v7
.end method
