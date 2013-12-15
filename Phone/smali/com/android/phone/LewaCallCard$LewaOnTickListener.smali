.class Lcom/android/phone/LewaCallCard$LewaOnTickListener;
.super Ljava/lang/Object;
.source "LewaCallCard.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LewaCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LewaOnTickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaCallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaCallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 3084
    iput-object p1, p0, Lcom/android/phone/LewaCallCard$LewaOnTickListener;->this$0:Lcom/android/phone/LewaCallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTickForCallTimeElapsed(J)V
    .locals 1
    .parameter "timeElapsed"

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/android/phone/LewaCallCard$LewaOnTickListener;->this$0:Lcom/android/phone/LewaCallCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/LewaCallCard;->updateElapsedTimeWidget(J)V

    .line 3089
    return-void
.end method
