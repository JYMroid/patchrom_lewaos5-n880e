.class public final Lcom/yi/internal/app/RingtonePickerCustomActivity;
.super Landroid/app/Activity;
.source "RingtonePickerCustomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final EXTRA_RINGTONE_TITLE_CN:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE.CN"

.field private static final EXTRA_RINGTONE_TITLE_ID:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE.ID"

.field private static final ID_COLUMN_INDEX:I = 0x0

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RingtonePickerCustomActivity"

.field private static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mIncludeDrm:Z

.field private mOkButton:Landroid/widget/Button;

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mProcessReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mTypes:I

.field private mUriForDefaultItem:Landroid/net/Uri;

.field private mVoiceAdapter:Landroid/widget/ListAdapter;

.field private mVoiceList:Landroid/widget/ListView;

.field private registed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mFilterColumns:Ljava/util/List;

    .line 76
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSilentPos:I

    .line 79
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtonePos:I

    .line 82
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    .line 85
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registed:Z

    .line 400
    new-instance v0, Lcom/yi/internal/app/RingtonePickerCustomActivity$2;

    invoke-direct {v0, p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity$2;-><init>(Lcom/yi/internal/app/RingtonePickerCustomActivity;)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/yi/internal/app/RingtonePickerCustomActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/yi/internal/app/RingtonePickerCustomActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yi/internal/app/RingtonePickerCustomActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->playRingtone(II)V

    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 239
    sget v0, Lyi/util/IDHelper;->STR_RING_DEFAULT:I

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 243
    sget v0, Lyi/util/IDHelper;->STR_RING_SILENT:I

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lyi/util/IDHelper;->LAYOUT_SELDLG_SINGLE_HOLO:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 232
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 233
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 234
    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mStaticItemCount:I

    .line 235
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "includeDrm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 472
    const/4 v2, 0x0

    .line 494
    :goto_0
    return-object v2

    .line 473
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 477
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 480
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 485
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    if-nez p1, :cond_3

    .line 490
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v2, "is_drm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 435
    .local v0, theirContext:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    .line 437
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 382
    if-gez p1, :cond_0

    .line 385
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 461
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, status:Ljava/lang/String;
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    invoke-direct {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setFilterColumnsList(I)V

    .line 463
    const-string v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/yi/internal/app/RingtonePickerCustomActivity;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mFilterColumns:Ljava/util/List;

    iget-boolean v3, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mIncludeDrm:Z

    invoke-static {v0, v3}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method private getMediaStatus()I
    .locals 2

    .prologue
    .line 454
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 376
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private getRingtoneUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 520
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-object v0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 531
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    iput p1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    .line 311
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mFilterColumns:Ljava/util/List;

    .line 505
    .local v0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 506
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 507
    const-string v1, "is_music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 511
    const-string v1, "is_music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 515
    const-string v1, "is_music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_2
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 373
    :cond_2
    return-void
.end method


# virtual methods
.method public getCursorCustom()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 444
    .local v0, mediaCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 445
    const/4 v1, 0x0

    .line 447
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/database/SortCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "title_key"

    invoke-direct {v1, v2, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lyi/util/IDHelper;->ID_OK_BUTTON:I

    if-ne v6, v7, :cond_6

    .line 252
    iget-object v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, uri:Landroid/net/Uri;
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    iget v7, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSilentPos:I

    if-ne v6, v7, :cond_0

    .line 257
    const/4 v4, 0x0

    .line 262
    :goto_0
    if-nez v4, :cond_1

    .line 264
    sget v6, Lyi/util/IDHelper;->STR_RING_PICK_NO_SEL:I

    invoke-virtual {p0, v6}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 267
    .local v3, toast:Landroid/widget/Toast;
    const/16 v6, 0x11

    invoke-virtual {v3, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 268
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 269
    invoke-virtual {p0, v8}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setResult(I)V

    .line 296
    .end local v0           #message:Ljava/lang/String;
    .end local v3           #toast:Landroid/widget/Toast;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 259
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_0
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    invoke-direct {p0, v6}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getRingtoneManagerPosition(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 274
    .local v1, resolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 275
    .local v5, values:Landroid/content/ContentValues;
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 276
    const-string v6, "is_ringtone"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_2
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    .line 278
    const-string v6, "is_notification"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_3
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_4

    .line 280
    const-string v6, "is_alarm"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v2, resultIntent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v2}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setResult(ILandroid/content/Intent;)V

    .line 295
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #resultIntent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->finish()V

    goto :goto_1

    .line 291
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lyi/util/IDHelper;->ID_CANCEL_BUTTON:I

    if-ne v6, v7, :cond_5

    .line 292
    invoke-virtual {p0, v8}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setResult(I)V

    .line 293
    iget-object v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    goto :goto_3

    .line 283
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    sget v0, Lyi/util/IDHelper;->LAYOUT_YI_RINGTONE:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setContentView(I)V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHandler:Landroid/os/Handler;

    .line 119
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 125
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHasDefaultItem:Z

    .line 126
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 127
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 132
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHasSilentItem:Z

    .line 135
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 138
    const-string v0, "android.intent.extra.ringtone.INCLUDE_DRM"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mIncludeDrm:Z

    .line 139
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-boolean v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mIncludeDrm:Z

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 141
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 142
    .local v6, Title:Ljava/lang/CharSequence;
    if-nez v6, :cond_1

    .line 143
    sget v0, Lyi/util/IDHelper;->STR_RING_PICK:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    :cond_1
    invoke-virtual {p0, v6}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    const-string v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    .line 149
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    .line 150
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setVolumeControlStream(I)V

    .line 161
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mExistingUri:Landroid/net/Uri;

    .line 163
    sget v0, Lyi/util/IDHelper;->ID_VOICE_LIST:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    .line 164
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 165
    .local v8, emptyView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getCursorCustom()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    .line 166
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090012

    iget-object v3, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    const v12, 0x1020014

    aput v12, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceAdapter:Landroid/widget/ListAdapter;

    .line 172
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->onPrepareListView(Landroid/widget/ListView;)V

    .line 174
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getMediaStatus()I

    move-result v10

    .line 175
    .local v10, mediaStatus:I
    if-nez v10, :cond_2

    .line 176
    sget v0, Lyi/util/IDHelper;->ID_EMPTY_TEXT:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 177
    .local v11, text:Landroid/widget/TextView;
    sget v0, Lyi/util/IDHelper;->STR_RING_PICK_SD_UNMOUNT:I

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 179
    .end local v11           #text:Landroid/widget/TextView;
    :cond_2
    if-eqz v8, :cond_3

    .line 180
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 184
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    new-instance v1, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;

    invoke-direct {v1, p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;-><init>(Lcom/yi/internal/app/RingtonePickerCustomActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 196
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 198
    sget v0, Lyi/util/IDHelper;->ID_OK_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    .line 199
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 201
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    :cond_4
    sget v0, Lyi/util/IDHelper;->ID_CANCEL_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 205
    .local v7, buttonCancel:Landroid/widget/Button;
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void

    .line 152
    .end local v7           #buttonCancel:Landroid/widget/Button;
    .end local v8           #emptyView:Landroid/view/View;
    .end local v10           #mediaStatus:I
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    .line 153
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registed:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 421
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 302
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->playRingtone(II)V

    .line 303
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 425
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setResult(I)V

    .line 428
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 306
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 359
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->stopAnyPlayingRingtone()V

    .line 360
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 3
    .parameter "listView"

    .prologue
    const/4 v2, -0x1

    .line 210
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    if-ne v0, v2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    .line 215
    :cond_0
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 390
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 391
    iget-boolean v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registed:Z

    if-nez v1, :cond_0

    .line 392
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 393
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registed:Z

    .line 398
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 352
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 353
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->stopAnyPlayingRingtone()V

    .line 354
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->stopAnyPlayingRingtone()V

    .line 317
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSilentPos:I

    if-ne v0, v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtonePos:I

    if-ne v0, v1, :cond_3

    .line 327
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 338
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 345
    :goto_1
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 341
    :cond_3
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    goto :goto_1
.end method
