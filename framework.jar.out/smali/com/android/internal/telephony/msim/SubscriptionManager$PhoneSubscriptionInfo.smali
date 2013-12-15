.class Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneSubscriptionInfo"
.end annotation


# instance fields
.field public cause:Ljava/lang/String;

.field public sub:Lcom/android/internal/telephony/msim/Subscription;

.field public subReady:Z

.field final synthetic this$0:Lcom/android/internal/telephony/msim/SubscriptionManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/msim/SubscriptionManager;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->this$0:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v0}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/msim/Subscription;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 93
    return-void
.end method
