.class Llewa/laml/ActionCommand$VariableBinderCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableBinderCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BinderCommand"


# instance fields
.field private mBinder:Llewa/laml/data/VariableBinder;

.field private mCommand:Llewa/laml/ActionCommand$Command;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 821
    invoke-direct {p0, p1}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 822
    sget-object v1, Llewa/laml/ActionCommand$Command;->Invalid:Llewa/laml/ActionCommand$Command;

    iput-object v1, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mCommand:Llewa/laml/ActionCommand$Command;

    .line 823
    iput-object p1, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 824
    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    .line 825
    const-string v1, "command"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, command:Ljava/lang/String;
    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    sget-object v1, Llewa/laml/ActionCommand$Command;->Refresh:Llewa/laml/ActionCommand$Command;

    iput-object v1, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mCommand:Llewa/laml/ActionCommand$Command;

    .line 828
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mBinder:Llewa/laml/data/VariableBinder;

    if-eqz v0, :cond_0

    .line 808
    sget-object v0, Llewa/laml/ActionCommand$1;->$SwitchMap$lewa$laml$ActionCommand$Command:[I

    iget-object v1, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mCommand:Llewa/laml/ActionCommand$Command;

    invoke-virtual {v1}, Llewa/laml/ActionCommand$Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 810
    :pswitch_0
    iget-object v0, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mBinder:Llewa/laml/data/VariableBinder;

    invoke-virtual {v0}, Llewa/laml/data/VariableBinder;->refresh()V

    goto :goto_0

    .line 808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v1, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Llewa/laml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$VariableBinderCommand;->mBinder:Llewa/laml/data/VariableBinder;

    .line 818
    return-void
.end method
