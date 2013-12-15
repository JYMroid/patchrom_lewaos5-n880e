.class Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;
.super Landroid/content/AsyncQueryHandler;
.source "LewaCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncQuerySpecialPhone"
.end annotation


# instance fields
.field private mCall:Lcom/android/internal/telephony/Call;

.field private mCallerinfo:Lcom/android/internal/telephony/CallerInfo;

.field final synthetic this$0:Lcom/android/phone/LewaCallCard;


# direct methods
.method public constructor <init>(Lcom/android/phone/LewaCallCard;Landroid/content/ContentResolver;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter
    .parameter "cr"
    .parameter "info"
    .parameter "call"

    .prologue
    .line 2437
    iput-object p1, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->this$0:Lcom/android/phone/LewaCallCard;

    .line 2438
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2440
    iput-object p3, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->mCallerinfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2441
    iput-object p4, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->mCall:Lcom/android/internal/telephony/Call;

    .line 2442
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 2450
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->this$0:Lcom/android/phone/LewaCallCard;

    #getter for: Lcom/android/phone/LewaCallCard;->mQueryHandler:Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;
    invoke-static {v2}, Lcom/android/phone/LewaCallCard;->access$300(Lcom/android/phone/LewaCallCard;)Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;

    move-result-object v2

    if-eq p0, v2, :cond_1

    .line 2451
    const-string v2, "LewaCallCard"

    const-string v3, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2476
    if-eqz p3, :cond_0

    .line 2477
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2480
    :cond_0
    :goto_0
    return-void

    .line 2457
    :cond_1
    const/4 v0, 0x0

    .line 2458
    .local v0, photoBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2460
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 2461
    .local v1, photoData:[B
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2465
    .end local v1           #photoData:[B
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->mCallerinfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->smallCachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 2466
    iget-object v2, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->mCallerinfo:Lcom/android/internal/telephony/CallerInfo;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->smallCachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 2467
    iget-object v2, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->mCall:Lcom/android/internal/telephony/Call;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2468
    iget-object v2, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->this$0:Lcom/android/phone/LewaCallCard;

    invoke-virtual {v2}, Lcom/android/phone/LewaCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->this$0:Lcom/android/phone/LewaCallCard;

    #getter for: Lcom/android/phone/LewaCallCard;->mSmallPhoto:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/phone/LewaCallCard;->access$400(Lcom/android/phone/LewaCallCard;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/LewaCallCard$AsyncQuerySpecialPhone;->mCallerinfo:Lcom/android/internal/telephony/CallerInfo;

    #calls: Lcom/android/phone/LewaCallCard;->showSmallCachedImage(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    invoke-static {v2, v3, v4}, Lcom/android/phone/LewaCallCard;->access$500(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2476
    :cond_3
    if-eqz p3, :cond_0

    .line 2477
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2473
    .end local v0           #photoBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 2476
    if-eqz p3, :cond_0

    .line 2477
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2476
    :catchall_0
    move-exception v2

    if-eqz p3, :cond_4

    .line 2477
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method
