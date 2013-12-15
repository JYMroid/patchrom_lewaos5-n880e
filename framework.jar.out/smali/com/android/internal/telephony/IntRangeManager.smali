.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 180
    return-void
.end method

.method private populateAllClientRanges()V
    .locals 9

    .prologue
    .line 633
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 634
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 635
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 637
    .local v5, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 638
    .local v0, clientLen:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 639
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 640
    .local v4, nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 638
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 634
    .end local v4           #nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    .end local v0           #clientLen:I
    .end local v2           #j:I
    .end local v5           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1
    return-void
.end method

.method private populateAllRanges()V
    .locals 5

    .prologue
    .line 620
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 622
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 624
    .local v0, currRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v2, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    goto :goto_0

    .line 626
    .end local v0           #currRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 19
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 439
    .local v9, len:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_12

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 441
    .local v14, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 442
    const/16 v17, 0x0

    .line 575
    .end local v14           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_1
    monitor-exit p0

    return v17

    .line 443
    .restart local v14       #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    :try_start_1
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_11

    .line 446
    iget-object v2, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 449
    .local v2, clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 450
    .local v5, crLength:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_3

    .line 451
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 452
    .local v3, cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 457
    const/16 v17, 0x1

    goto :goto_1

    .line 460
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 461
    const/16 v17, 0x0

    goto :goto_1

    .line 464
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 474
    .end local v3           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_3
    const/high16 v8, -0x8000

    .line 475
    .local v8, largestEndId:I
    const/16 v16, 0x0

    .line 478
    .local v16, updateStarted:Z
    const/4 v4, 0x0

    .local v4, crIndex:I
    :goto_2
    if-ge v4, v5, :cond_11

    .line 479
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 480
    .restart local v3       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_f

    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_f

    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 482
    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    .line 483
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v8, :cond_4

    .line 486
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 487
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 490
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 491
    iput v8, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 493
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 495
    :cond_5
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 496
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 497
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 505
    :cond_6
    new-instance v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v14, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 507
    .local v15, rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v4, :cond_8

    .line 513
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    .line 514
    .local v13, nextStartId:I
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_7

    .line 515
    const/16 v16, 0x1

    .line 516
    iput v13, v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 519
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    .line 526
    .end local v13           #nextStartId:I
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v10, newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object v6, v15

    .line 529
    .local v6, currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v12, v4, 0x1

    .local v12, nextIndex:I
    :goto_3
    if-ge v12, v5, :cond_c

    .line 530
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 531
    .local v11, nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 532
    const/16 v16, 0x1

    .line 533
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 534
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .end local v6           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 542
    .restart local v6       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_4
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v8, :cond_9

    .line 543
    iget v8, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    .line 529
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 537
    :cond_a
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 538
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 540
    :cond_b
    iget-object v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 437
    .end local v2           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4           #crIndex:I
    .end local v5           #crLength:I
    .end local v6           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v7           #i:I
    .end local v8           #largestEndId:I
    .end local v9           #len:I
    .end local v10           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v11           #nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v12           #nextIndex:I
    .end local v14           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v15           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v16           #updateStarted:Z
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 548
    .restart local v2       #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v3       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v4       #crIndex:I
    .restart local v5       #crLength:I
    .restart local v6       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v7       #i:I
    .restart local v8       #largestEndId:I
    .restart local v9       #len:I
    .restart local v10       #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v12       #nextIndex:I
    .restart local v14       #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v15       #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v16       #updateStarted:Z
    :cond_c
    move/from16 v0, p2

    if-ge v8, v0, :cond_d

    .line 549
    const/16 v16, 0x1

    .line 550
    :try_start_2
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 552
    :cond_d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 557
    if-eqz v16, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-nez v17, :cond_e

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 561
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 564
    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 567
    .end local v6           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v10           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v12           #nextIndex:I
    .end local v15           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_f
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v8, :cond_10

    .line 568
    iget v8, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 439
    .end local v2           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4           #crIndex:I
    .end local v5           #crLength:I
    .end local v8           #largestEndId:I
    .end local v16           #updateStarted:Z
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 575
    .end local v14           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 20
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 196
    .local v10, len:I
    if-nez v10, :cond_1

    .line 197
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    const/16 v17, 0x1

    .line 422
    :goto_0
    monitor-exit p0

    return v17

    .line 201
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 205
    :cond_1
    const/4 v14, 0x0

    .local v14, startIndex:I
    :goto_1
    if-ge v14, v10, :cond_21

    .line 206
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 207
    .local v13, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    .line 212
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 213
    const/16 v17, 0x1

    goto :goto_0

    .line 214
    :cond_2
    add-int/lit8 v17, p1, -0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 217
    move/from16 v11, p2

    .line 218
    .local v11, newRangeEndId:I
    const/4 v12, 0x0

    .line 219
    .local v12, nextRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, v14, 0x1

    move/from16 v0, v17

    if-ge v0, v10, :cond_3

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #nextRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    check-cast v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 221
    .restart local v12       #nextRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_6

    .line 223
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 225
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 232
    :cond_3
    :goto_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 233
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 234
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 237
    if-eqz v12, :cond_5

    .line 238
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 240
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 242
    :cond_4
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 229
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 247
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 249
    .end local v11           #newRangeEndId:I
    .end local v12           #nextRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 253
    add-int/lit8 v17, p2, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 256
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 258
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 260
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 262
    :cond_a
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 265
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 266
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 267
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 268
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 270
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 274
    :cond_c
    add-int/lit8 v5, v14, 0x1

    .local v5, endIndex:I
    :goto_3
    if-ge v5, v10, :cond_13

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 276
    .local v6, endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    .line 279
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 280
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 281
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 283
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 289
    add-int/lit8 v8, v14, 0x1

    .line 290
    .local v8, joinIndex:I
    move v7, v8

    .local v7, i:I
    :goto_4
    if-ge v7, v5, :cond_d

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 293
    .local v9, joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 296
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 298
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 300
    :cond_f
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_12

    .line 304
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 305
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 306
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 308
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 314
    add-int/lit8 v8, v14, 0x1

    .line 315
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_5
    if-gt v7, v5, :cond_10

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 317
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 320
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_10
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 322
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 274
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 329
    .end local v6           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_13
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 330
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 331
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 333
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 339
    add-int/lit8 v8, v14, 0x1

    .line 340
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_6
    if-ge v7, v10, :cond_14

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 343
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 346
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 348
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 351
    .end local v5           #endIndex:I
    :cond_16
    add-int/lit8 v17, p1, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_20

    .line 353
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_17

    .line 356
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 357
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 361
    :cond_17
    move v5, v14

    .line 362
    .restart local v5       #endIndex:I
    add-int/lit8 v15, v14, 0x1

    .local v15, testIndex:I
    :goto_7
    if-ge v15, v10, :cond_18

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 364
    .local v16, testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_19

    .line 371
    .end local v16           #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_18
    if-ne v5, v14, :cond_1b

    .line 375
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 376
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 377
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 378
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 367
    .restart local v16       #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_19
    move v5, v15

    .line 362
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 380
    .end local v16           #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 384
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 389
    .restart local v6       #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1c

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 392
    .restart local v11       #newRangeEndId:I
    :goto_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 393
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1d

    iget v11, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 394
    :goto_9
    iput v11, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 396
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 402
    add-int/lit8 v8, v14, 0x1

    .line 403
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_a
    if-gt v7, v5, :cond_1e

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 405
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .end local v7           #i:I
    .end local v8           #joinIndex:I
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11           #newRangeEndId:I
    :cond_1c
    move/from16 v11, p2

    .line 389
    goto :goto_8

    .restart local v11       #newRangeEndId:I
    :cond_1d
    move/from16 v11, p2

    .line 393
    goto :goto_9

    .line 408
    .restart local v7       #i:I
    .restart local v8       #joinIndex:I
    :cond_1e
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 410
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_1f
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 205
    .end local v5           #endIndex:I
    .end local v6           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11           #newRangeEndId:I
    .end local v15           #testIndex:I
    :cond_20
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 418
    .end local v13           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_21
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 422
    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 193
    .end local v10           #len:I
    .end local v14           #startIndex:I
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method protected tryAddRanges(IIZ)Z
    .locals 1
    .parameter "startId"
    .parameter "endId"
    .parameter "selected"

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 601
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 603
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method

.method public updateRanges()Z
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 587
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 588
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method
