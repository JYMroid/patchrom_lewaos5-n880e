.class public final Lcom/android/internal/telephony/SMSDispatcher$WorkerArgs;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WorkerArgs"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public refNumber:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 989
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
