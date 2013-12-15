.class final Ltms/ay$a;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/ay$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/ay;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ltms/ay;)V
    .locals 1

    iput-object p1, p0, Ltms/ay$a;->a:Ltms/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Ltms/ay$a;->b:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Ltms/ay$a;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Ltms/ay$a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_1

    iget-object v0, p0, Ltms/ay$a;->b:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const-string v0, "display_name"

    aput-object v0, v2, v6

    iget-object v0, p0, Ltms/ay$a;->a:Ltms/ay;

    invoke-static {v0}, Ltms/ay;->a(Ltms/ay;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Ltms/ay$a;->a:Ltms/ay;

    invoke-static {v1, v0}, Ltms/ay;->a(Ltms/ay;Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v1, p0, Ltms/ay$a;->a:Ltms/ay;

    invoke-static {v1, v0}, Ltms/ay;->b(Ltms/ay;Landroid/database/Cursor;)V

    :cond_1
    return-object v3
.end method

.method public b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "number"

    aput-object v0, v2, v4

    const-string v0, "display_name"

    aput-object v0, v2, v5

    iget-object v0, p0, Ltms/ay$a;->a:Ltms/ay;

    invoke-static {v0}, Ltms/ay;->a(Ltms/ay;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltms/ay$a;->b:Landroid/net/Uri;

    const-string v5, "name asc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v0, p0, Ltms/ay$a;->a:Ltms/ay;

    invoke-static {v0, v1}, Ltms/ay;->a(Ltms/ay;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltms/ad;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->id:I

    const-string v3, "[ -]+"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Ltms/ay$a;->a:Ltms/ay;

    invoke-static {v0, v1}, Ltms/ay;->b(Ltms/ay;Landroid/database/Cursor;)V

    return-object v6
.end method
