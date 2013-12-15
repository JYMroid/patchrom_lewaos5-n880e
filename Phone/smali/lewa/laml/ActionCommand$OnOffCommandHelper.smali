.class Llewa/laml/ActionCommand$OnOffCommandHelper;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnOffCommandHelper"
.end annotation


# instance fields
.field protected mIsOn:Z

.field protected mIsToggle:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    const-string v0, "toggle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iput-boolean v1, p0, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iput-boolean v1, p0, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 468
    :cond_2
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_0
.end method
