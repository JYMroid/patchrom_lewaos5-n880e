.class Llewa/laml/elements/MusicControlScreenElement$4;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/elements/MusicControlScreenElement;->onButtonUp(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/elements/MusicControlScreenElement;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Llewa/laml/elements/MusicControlScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iput-object p2, p0, Llewa/laml/elements/MusicControlScreenElement$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 432
    const-string v0, "music_pause"

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;
    invoke-static {v0}, Llewa/laml/elements/MusicControlScreenElement;->access$1000(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 434
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;
    invoke-static {v0}, Llewa/laml/elements/MusicControlScreenElement;->access$1100(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 435
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v0, v2}, Llewa/laml/elements/MusicControlScreenElement;->access$1202(Llewa/laml/elements/MusicControlScreenElement;I)I

    .line 436
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-boolean v0, v0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;
    invoke-static {v0}, Llewa/laml/elements/MusicControlScreenElement;->access$1300(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedNumberVariable;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 438
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    const-string v0, "music_play"

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;
    invoke-static {v0}, Llewa/laml/elements/MusicControlScreenElement;->access$1100(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 441
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;
    invoke-static {v0}, Llewa/laml/elements/MusicControlScreenElement;->access$1000(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 442
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const/4 v1, 0x2

    #setter for: Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v0, v1}, Llewa/laml/elements/MusicControlScreenElement;->access$1202(Llewa/laml/elements/MusicControlScreenElement;I)I

    .line 443
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    iget-boolean v0, v0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #getter for: Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;
    invoke-static {v0}, Llewa/laml/elements/MusicControlScreenElement;->access$1300(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedNumberVariable;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 445
    :cond_3
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Llewa/laml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 446
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement$4;->this$0:Llewa/laml/elements/MusicControlScreenElement;

    #calls: Llewa/laml/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v0}, Llewa/laml/elements/MusicControlScreenElement;->access$700(Llewa/laml/elements/MusicControlScreenElement;)V

    goto :goto_0
.end method
