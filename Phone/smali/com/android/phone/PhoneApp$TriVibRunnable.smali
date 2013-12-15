.class final Lcom/android/phone/PhoneApp$TriVibRunnable;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TriVibRunnable"
.end annotation


# instance fields
.field private p1:I

.field final synthetic this$0:Lcom/android/phone/PhoneApp;

.field private v1:I

.field private v2:I


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;III)V
    .locals 0
    .parameter
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput p2, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->v1:I

    .line 369
    iput p3, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->p1:I

    .line 370
    iput p4, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->v2:I

    .line 371
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 374
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->v1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->p1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->v2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget v0, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->v1:I

    if-lez v0, :cond_1

    .line 378
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$300()Landroid/os/Vibrator;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->v1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 379
    :cond_1
    iget v0, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->p1:I

    if-lez v0, :cond_2

    .line 380
    iget v0, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->p1:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 381
    :cond_2
    iget v0, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->v2:I

    if-lez v0, :cond_3

    .line 382
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$300()Landroid/os/Vibrator;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/PhoneApp$TriVibRunnable;->v2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 383
    :cond_3
    return-void
.end method
