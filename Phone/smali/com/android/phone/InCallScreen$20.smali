.class Lcom/android/phone/InCallScreen$20;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Lcom/android/phone/InCallScreen$ICallerIdResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 5076
    iput-object p1, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultData(Lcom/android/phone/InCallScreen$YellowPageInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 5081
    iget-object v0, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/LewaCallCard;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/LewaCallCard;

    move-result-object v0

    iget-object v1, p1, Lcom/android/phone/InCallScreen$YellowPageInfo;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/phone/InCallScreen$YellowPageInfo;->phoneInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/LewaCallCard;->updateYellowPageInfos(Ljava/lang/String;Ljava/lang/String;)V

    .line 5082
    iget-object v0, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 5083
    return-void
.end method
