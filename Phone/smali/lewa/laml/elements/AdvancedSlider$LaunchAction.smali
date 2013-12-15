.class Llewa/laml/elements/AdvancedSlider$LaunchAction;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchAction"
.end annotation


# instance fields
.field public mCommand:Llewa/laml/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mTask:Llewa/laml/util/Task;

.field public mTrigger:Llewa/laml/CommandTrigger;

.field final synthetic this$0:Llewa/laml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Llewa/laml/elements/AdvancedSlider;)V
    .locals 0
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    return-void
.end method

.method synthetic constructor <init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/elements/AdvancedSlider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider$LaunchAction;-><init>(Llewa/laml/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1128
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    if-eqz v3, :cond_6

    .line 1129
    iget-boolean v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    if-nez v3, :cond_1

    .line 1130
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v3, v3, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v4, v4, Llewa/laml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Llewa/laml/ScreenElementRoot;->findTask(Ljava/lang/String;)Llewa/laml/util/Task;

    move-result-object v0

    .line 1131
    .local v0, configTask:Llewa/laml/util/Task;
    if-eqz v0, :cond_0

    iget-object v3, v0, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1132
    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    .line 1133
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 1136
    .end local v0           #configTask:Llewa/laml/util/Task;
    :cond_1
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1137
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1139
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1140
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    :cond_2
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->category:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1143
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    :cond_3
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1147
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v4, v4, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-object v5, v5, Llewa/laml/util/Task;->className:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1148
    :cond_4
    const/high16 v1, 0x3400

    .line 1149
    .local v1, flag:I
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    iget-boolean v3, v3, Llewa/laml/util/Task;->anim:Z

    if-nez v3, :cond_5

    .line 1150
    const/high16 v3, 0x1

    or-int/2addr v1, v3

    .line 1151
    :cond_5
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1157
    .end local v1           #flag:I
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-object v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->finish()V

    .line 1164
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->finish()V

    .line 1166
    :cond_1
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->init()V

    .line 1172
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->init()V

    .line 1174
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->pause()V

    .line 1180
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->pause()V

    .line 1182
    :cond_1
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    if-eqz v0, :cond_0

    .line 1186
    invoke-direct {p0}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->performTask()Landroid/content/Intent;

    move-result-object v0

    .line 1193
    :goto_0
    return-object v0

    .line 1188
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_2

    .line 1189
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->perform()V

    .line 1193
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1190
    :cond_2
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->perform()V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->resume()V

    .line 1200
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1201
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->resume()V

    .line 1202
    :cond_1
    return-void
.end method
