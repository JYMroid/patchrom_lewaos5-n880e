.class Llewa/laml/elements/MusicControlScreenElement$3;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setTrackInfo(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 122
    const-string v3, "track"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, title:Ljava/lang/String;
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, artist:Ljava/lang/String;
    const-string v3, "playing"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 125
    .local v1, isPlaying:Z
    if-nez v1, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 127
    const/4 v0, 0x0

    .line 129
    :cond_0
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-boolean v3, v3, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v3, :cond_3

    .line 130
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$200(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 131
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    new-instance v4, Llewa/laml/util/IndexedStringVariable;

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-object v5, v5, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v6, "title"

    iget-object v7, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v7}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v3, v4}, Llewa/laml/elements/MusicControlScreenElement;->access$202(Llewa/laml/elements/MusicControlScreenElement;Llewa/laml/util/IndexedStringVariable;)Llewa/laml/util/IndexedStringVariable;

    .line 133
    :cond_1
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$200(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;

    move-result-object v3

    invoke-virtual {v3, v2}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$300(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 135
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    new-instance v4, Llewa/laml/util/IndexedStringVariable;

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-object v5, v5, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v6, "artist"

    iget-object v7, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    invoke-virtual {v7}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v3, v4}, Llewa/laml/elements/MusicControlScreenElement;->access$302(Llewa/laml/elements/MusicControlScreenElement;Llewa/laml/util/IndexedStringVariable;)Llewa/laml/util/IndexedStringVariable;

    .line 137
    :cond_2
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$300(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;

    move-result-object v3

    invoke-virtual {v3, v0}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 139
    :cond_3
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 140
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v3

    invoke-virtual {v3, v8}, Llewa/laml/elements/TextScreenElement;->show(Z)V

    .line 152
    :cond_4
    :goto_0
    return-void

    .line 143
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 144
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v3

    invoke-virtual {v3, v0}, Llewa/laml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 149
    :goto_1
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v3

    invoke-virtual {v3, v9}, Llewa/laml/elements/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 145
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 146
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Llewa/laml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_7
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v3}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v3

    const-string v4, "%s   %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llewa/laml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, action:Ljava/lang/String;
    const-string v2, "metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    const-string v2, "other"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, extra:Ljava/lang/String;
    const-string v2, "meta_changed_track"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-direct {p0, p2}, Llewa/laml/elements/MusicControlScreenElement$3;->setTrackInfo(Landroid/content/Intent;)V

    .line 160
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$500(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 177
    .end local v1           #extra:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v1       #extra:Ljava/lang/String;
    :cond_1
    const-string v2, "meta_changed_album"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const/4 v3, 0x1

    #calls: Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V
    invoke-static {v2, p2, v3}, Llewa/laml/elements/MusicControlScreenElement;->access$600(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$700(Llewa/laml/elements/MusicControlScreenElement;)V

    goto :goto_0

    .line 166
    .end local v1           #extra:Ljava/lang/String;
    :cond_3
    const-string v2, "refreshprogress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const-string v3, "blocking"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v2, v3}, Llewa/laml/elements/MusicControlScreenElement;->access$802(Llewa/laml/elements/MusicControlScreenElement;Z)Z

    goto :goto_0

    .line 168
    :cond_4
    const-string v2, "playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 169
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;
    invoke-static {v2}, Llewa/laml/elements/MusicControlScreenElement;->access$400(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2}, Llewa/laml/elements/TextScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_5

    .line 170
    invoke-direct {p0, p2}, Llewa/laml/elements/MusicControlScreenElement$3;->setTrackInfo(Landroid/content/Intent;)V

    .line 171
    :cond_5
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$500(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0

    .line 172
    :cond_6
    const-string v2, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "lockscreen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    :cond_7
    invoke-direct {p0, p2}, Llewa/laml/elements/MusicControlScreenElement$3;->setTrackInfo(Landroid/content/Intent;)V

    .line 175
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement$3;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Llewa/laml/elements/MusicControlScreenElement;->access$900(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0
.end method
