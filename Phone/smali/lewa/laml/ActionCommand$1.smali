.class synthetic Llewa/laml/ActionCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$lewa$laml$ActionCommand$Command:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 808
    invoke-static {}, Llewa/laml/ActionCommand$Command;->values()[Llewa/laml/ActionCommand$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Llewa/laml/ActionCommand$1;->$SwitchMap$lewa$laml$ActionCommand$Command:[I

    :try_start_0
    sget-object v0, Llewa/laml/ActionCommand$1;->$SwitchMap$lewa$laml$ActionCommand$Command:[I

    sget-object v1, Llewa/laml/ActionCommand$Command;->Refresh:Llewa/laml/ActionCommand$Command;

    invoke-virtual {v1}, Llewa/laml/ActionCommand$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
