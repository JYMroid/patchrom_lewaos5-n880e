.class final Lcom/android/phone/LewaBlocker$SmsListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LewaBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmsListQueryHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/LewaBlocker;

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/phone/LewaBlocker;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    .line 585
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->type:I

    .line 586
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/LewaBlocker;Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "contentResolver"
    .parameter "context"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    .line 590
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->type:I

    .line 591
    iput-object p3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->mContext:Landroid/content/Context;

    .line 592
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/LewaBlocker;Landroid/content/ContentResolver;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "contentResolver"
    .parameter "context"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    .line 596
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->type:I

    .line 597
    iput p5, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->type:I

    .line 598
    iput-object p4, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->name:Ljava/lang/String;

    .line 599
    iput-object p3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->mContext:Landroid/content/Context;

    .line 600
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, address:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 712
    :goto_0
    :pswitch_0
    return-void

    .line 678
    :pswitch_1
    invoke-static {}, Lcom/android/phone/LewaBlocker;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    const-string v3, "LewaBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    iget v3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->type:I

    if-ne v3, v6, :cond_1

    .line 683
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContentValuesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$100(Lcom/android/phone/LewaBlocker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 684
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContentValuesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$100(Lcom/android/phone/LewaBlocker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 685
    .local v1, contentValues:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    iget-object v4, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/android/phone/LewaBlocker;->insert(Landroid/content/Context;ILandroid/content/ContentValues;)V
    invoke-static {v3, v4, v6, v1}, Lcom/android/phone/LewaBlocker;->access$200(Lcom/android/phone/LewaBlocker;Landroid/content/Context;ILandroid/content/ContentValues;)V

    goto :goto_1

    .line 689
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    iget-object v4, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/android/phone/LewaBlocker;->addToBlackOrWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 691
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContentValuesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/LewaBlocker;->access$100(Lcom/android/phone/LewaBlocker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 694
    :pswitch_2
    if-lez p3, :cond_2

    .line 695
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    iget-object v4, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/phone/LewaBlocker;->deleteBlackNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 698
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07054c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 704
    :cond_2
    iget-object v3, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07054d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 19
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 604
    packed-switch p1, :pswitch_data_0

    .line 671
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 606
    .restart local p2
    :pswitch_0
    invoke-static {}, Lcom/android/phone/LewaBlocker;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    const-string v2, "LewaBlocker"

    const-string v4, "onQueryComplete"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_1
    check-cast p2, [Ljava/lang/String;

    .end local p2
    move-object/from16 v5, p2

    check-cast v5, [Ljava/lang/String;

    .line 610
    .local v5, addressParmas:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v6, v5, v2

    .line 611
    .local v6, address:Ljava/lang/String;
    const-wide/16 v17, 0x0

    .line 612
    .local v17, threadId:J
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 613
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 614
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v2, "body"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 616
    .local v8, body:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 617
    const-string v2, "read"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 618
    .local v13, read:I
    const-string v2, "type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 619
    .local v12, msg_type:I
    const-string v2, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 620
    .local v10, date:J
    const-string v2, "service_center"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 623
    .local v14, serviceCenter:Ljava/lang/String;
    const-string v2, "sim_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 625
    .local v15, simId:I
    const/16 v16, 0x0

    .line 629
    .local v16, slotId:I
    const-string v2, "LewaBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/phone/LewaBlocker;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    const-string v2, "LewaBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "threadId:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v2, "LewaBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v2, "LewaBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "date:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_2
    const-string v2, "name"

    const-string v4, ""

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v2, "address"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    invoke-virtual {v4, v6}, Lcom/android/phone/LewaBlocker;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "location"

    const-string v4, ""

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v2, "subject"

    const-string v4, ""

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v2, "body"

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 645
    const-string v2, "read"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v2, "type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v2, "cardinfo"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    const-string v2, "service_center"

    invoke-virtual {v9, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContentValuesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/LewaBlocker;->access$100(Lcom/android/phone/LewaBlocker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 656
    .end local v8           #body:Ljava/lang/String;
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v10           #date:J
    .end local v12           #msg_type:I
    .end local v13           #read:I
    .end local v14           #serviceCenter:Ljava/lang/String;
    .end local v15           #simId:I
    .end local v16           #slotId:I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://sms/conversations/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 657
    .local v3, mUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/LewaBlocker;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 658
    const-string v2, "LewaBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete threadId:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v2, "LewaBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete address:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/LewaBlocker$SmsListQueryHandler;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 663
    const-string v4, "(address = ? or address = ?) and type=1"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/phone/LewaBlocker;->startDeleteMessages(Landroid/content/AsyncQueryHandler;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
