.class Landroid/hardware/fmradio/FmRxEventListner$2;
.super Ljava/lang/Thread;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fmradio/FmRxEventListner;->startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fmradio/FmRxEventListner;

.field final synthetic val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

.field final synthetic val$fd:I


# direct methods
.method constructor <init>(Landroid/hardware/fmradio/FmRxEventListner;ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->this$0:Landroid/hardware/fmradio/FmRxEventListner;

    iput p2, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$fd:I

    iput-object p3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 254
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$fd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->this$0:Landroid/hardware/fmradio/FmRxEventListner;

    iget-boolean v3, v3, Landroid/hardware/fmradio/FmRxEventListner;->mStop:Z

    if-nez v3, :cond_1

    .line 258
    const/16 v3, 0x80

    new-array v0, v3, [B

    .line 259
    .local v0, buff:[B
    iget v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$fd:I

    invoke-static {v3, v0, v8}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    move-result v2

    .line 261
    .local v2, i:I
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->this$0:Landroid/hardware/fmradio/FmRxEventListner;

    iget-boolean v3, v3, Landroid/hardware/fmradio/FmRxEventListner;->mStop:Z

    if-eqz v3, :cond_3

    .line 348
    .end local v0           #buff:[B
    .end local v2           #i:I
    :cond_1
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thread should exit here thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmRxEventListner$2;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_2
    return-void

    .line 263
    .restart local v0       #buff:[B
    .restart local v2       #i:I
    :cond_3
    if-gez v2, :cond_5

    .line 264
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reading FIFO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmRxEventListner$2;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Continue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_4
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Landroid/hardware/fmradio/FmRxEventListner$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 274
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> event. Int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/hardware/fmradio/FmRxEventListner$2;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_6
    aget-byte v3, v0, v7

    packed-switch v3, :pswitch_data_0

    .line 343
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FMRadio"

    const-string v4, "Unknown event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    :pswitch_0
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "FMRadio"

    const-string v4, "Got READY_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_7
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvEnableReceiver()V

    goto/16 :goto_0

    .line 284
    :pswitch_1
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "FMRadio"

    const-string v4, "Got TUNE_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_8
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v4, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$fd:I

    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRadioTuneStatus(I)V

    .line 288
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "FMRadio"

    const-string v4, "Got SEEK_COMPLETE_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_9
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v4, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$fd:I

    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchComplete(I)V

    goto/16 :goto_0

    .line 292
    :pswitch_2
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "FMRadio"

    const-string v4, "Got SCAN_NEXT_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_a
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchInProgress()V

    goto/16 :goto_0

    .line 296
    :pswitch_3
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "FMRadio"

    const-string v4, "Got RAW_RDS_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_b
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsGroupData()V

    goto/16 :goto_0

    .line 300
    :pswitch_4
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "FMRadio"

    const-string v4, "Got RT_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_c
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsRtInfo()V

    goto/16 :goto_0

    .line 304
    :pswitch_5
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "FMRadio"

    const-string v4, "Got PS_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_d
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsPsInfo()V

    goto/16 :goto_0

    .line 308
    :pswitch_6
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FMRadio"

    const-string v4, "Got ERROR_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 311
    :pswitch_7
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "FMRadio"

    const-string v4, "Got BELOW_TH_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_e
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3, v7}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_0

    .line 315
    :pswitch_8
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "FMRadio"

    const-string v4, "Got ABOVE_TH_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_f
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3, v8}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_0

    .line 319
    :pswitch_9
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "FMRadio"

    const-string v4, "Got STEREO_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_10
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3, v8}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_0

    .line 323
    :pswitch_a
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "FMRadio"

    const-string v4, "Got MONO_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_11
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3, v7}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_0

    .line 327
    :pswitch_b
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "FMRadio"

    const-string v4, "Got RDS_AVAL_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_12
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3, v8}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_0

    .line 331
    :pswitch_c
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "FMRadio"

    const-string v4, "Got RDS_NOT_AVAL_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_13
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3, v7}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_0

    .line 335
    :pswitch_d
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "FMRadio"

    const-string v4, "Got NEW_SRCH_LIST"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_14
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchListComplete()V

    goto/16 :goto_0

    .line 339
    :pswitch_e
    invoke-static {}, Landroid/hardware/fmradio/FmRxEventListner;->access$000()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "FMRadio"

    const-string v4, "Got NEW_AF_LIST"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_15
    iget-object v3, p0, Landroid/hardware/fmradio/FmRxEventListner$2;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v3}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsAfInfo()V

    goto/16 :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
