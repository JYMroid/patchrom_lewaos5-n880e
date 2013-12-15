.class Lcom/android/phone/LewaBlocker$CallLogImport;
.super Landroid/os/AsyncTask;
.source "LewaBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallLogImport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaBlocker;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/phone/LewaBlocker$CallLogImport;->this$0:Lcom/android/phone/LewaBlocker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 18
    .parameter "params"

    .prologue
    .line 826
    const/4 v8, 0x0

    .line 827
    .local v8, cursor:Landroid/database/Cursor;
    const-string v4, "number=?"

    .line 828
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v14, p1, v1

    .line 829
    .local v14, numbers:[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    array-length v1, v14

    if-ge v12, v1, :cond_4

    .line 830
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v14, v12

    aput-object v2, v5, v1

    .line 831
    .local v5, seelctionArg:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/LewaBlocker$CallLogImport;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 835
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    const-string v1, "type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 838
    .local v17, type:I
    const/4 v1, 0x2

    move/from16 v0, v17

    if-eq v0, v1, :cond_0

    .line 839
    const-string v1, "number"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 841
    .local v13, number:Ljava/lang/String;
    const-string v1, "date"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 843
    .local v9, date:J
    const-string v1, "sim_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 845
    .local v15, simId:I
    const/16 v16, 0x0

    .line 846
    .local v16, slotId:I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 847
    .local v7, contentValues:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v1, "address"

    invoke-virtual {v7, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v1, "location"

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v1, "blocktype"

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v1, "cause"

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v1, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v1, "cardinfo"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/LewaBlocker$CallLogImport;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/InterceptConstants;->CALL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 874
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .end local v9           #date:J
    .end local v13           #number:Ljava/lang/String;
    .end local v15           #simId:I
    .end local v16           #slotId:I
    .end local v17           #type:I
    :catch_0
    move-exception v11

    .line 875
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 876
    const-string v1, "LewaBlocker"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    if-eqz v8, :cond_1

    .line 879
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 880
    const/4 v8, 0x0

    .line 829
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 872
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/LewaBlocker$CallLogImport;->this$0:Lcom/android/phone/LewaBlocker;

    #getter for: Lcom/android/phone/LewaBlocker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/LewaBlocker;->access$300(Lcom/android/phone/LewaBlocker;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v4, v5}, Lcom/android/phone/LewaBlocker;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 878
    if-eqz v8, :cond_1

    .line 879
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 880
    const/4 v8, 0x0

    goto :goto_2

    .line 878
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 879
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 880
    const/4 v8, 0x0

    :cond_3
    throw v1

    .line 884
    .end local v5           #seelctionArg:[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 823
    check-cast p1, [[Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaBlocker$CallLogImport;->doInBackground([[Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 890
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 823
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaBlocker$CallLogImport;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
