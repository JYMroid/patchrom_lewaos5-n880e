.class Lcom/android/phone/LewaCallCard$AsyncQueryLocation;
.super Landroid/os/AsyncTask;
.source "LewaCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncQueryLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/LewaCallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaCallCard;)V
    .locals 2
    .parameter

    .prologue
    .line 2403
    iput-object p1, p0, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->this$0:Lcom/android/phone/LewaCallCard;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2404
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->info:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2403
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2408
    aget-object v0, p1, v5

    check-cast v0, Landroid/content/Context;

    .line 2409
    .local v0, context:Landroid/content/Context;
    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    .line 2410
    .local v1, number:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 2411
    .local v2, phoneLocation:[Ljava/lang/String;
    invoke-static {v0, v1}, Llewa/util/LocationUtil;->getPhoneLocationAndCardType(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2412
    if-eqz v2, :cond_0

    .line 2413
    iget-object v3, p0, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->info:Ljava/util/ArrayList;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2414
    iget-object v3, p0, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->info:Ljava/util/ArrayList;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    :goto_0
    iget-object v3, p0, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->info:Ljava/util/ArrayList;

    return-object v3

    .line 2417
    :cond_0
    iget-object v3, p0, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->info:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    iget-object v3, p0, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->info:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2403
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2424
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2426
    iget-object v2, p0, Lcom/android/phone/LewaCallCard$AsyncQueryLocation;->this$0:Lcom/android/phone/LewaCallCard;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/android/phone/LewaCallCard;->updateCarrierAndLocation(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/android/phone/LewaCallCard;->access$200(Lcom/android/phone/LewaCallCard;Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    return-void
.end method
