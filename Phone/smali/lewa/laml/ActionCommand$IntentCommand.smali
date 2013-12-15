.class Llewa/laml/ActionCommand$IntentCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mTask:Llewa/laml/util/Task;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 333
    invoke-static {p2}, Llewa/laml/util/Task;->load(Lorg/w3c/dom/Element;)Llewa/laml/util/Task;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    .line 334
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 305
    :try_start_0
    iget-object v1, p0, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "ActionCommand"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 313
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Llewa/laml/ScreenElementRoot;->findTask(Ljava/lang/String;)Llewa/laml/util/Task;

    move-result-object v0

    .line 314
    .local v0, configTask:Llewa/laml/util/Task;
    if-eqz v0, :cond_0

    iget-object v2, v0, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    iput-object v0, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    .line 316
    :cond_0
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 317
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 318
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 319
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    :cond_1
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->category:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 321
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_2
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->className:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 323
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v4, v4, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    iget-object v5, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v5, v5, Llewa/laml/util/Task;->className:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 324
    :cond_3
    const/high16 v1, 0x3400

    .line 325
    .local v1, flag:I
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-boolean v2, v2, Llewa/laml/util/Task;->anim:Z

    if-nez v2, :cond_4

    .line 326
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    .line 327
    :cond_4
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    .end local v1           #flag:I
    :cond_5
    return-void
.end method
