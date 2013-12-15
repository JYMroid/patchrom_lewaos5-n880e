.class Lcom/lewa/phone/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/phone/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/lewa/phone/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lewa/phone/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/lewa/phone/ContactsAsyncHelper;

    .line 176
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lewa/phone/ContactsAsyncHelper$WorkerArgs;

    .line 183
    .local v0, args:Lcom/lewa/phone/ContactsAsyncHelper$WorkerArgs;
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/lewa/phone/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/lewa/phone/ContactsAsyncHelper;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/lewa/phone/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 212
    .local v2, reply:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 213
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 215
    return-void

    .line 185
    .end local v2           #reply:Landroid/os/Message;
    :pswitch_0
    const/4 v1, 0x0

    .line 195
    .local v1, inputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 196
    iget-object v3, v0, Lcom/lewa/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/lewa/phone/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/lewa/phone/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
