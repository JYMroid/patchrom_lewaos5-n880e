.class public abstract Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/utils/ScriptHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScriptCallback"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isMatch(Lcom/tencent/tmsecure/utils/ScriptHandler$Task;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/utils/ScriptHandler$ScriptCallback;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/utils/ScriptHandler$Task;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract onCallback(Lcom/tencent/tmsecure/utils/ScriptHandler$Result;)V
.end method
