.class Ltms/fh;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field final synthetic a:Ltms/ff;


# direct methods
.method constructor <init>(Ltms/ff;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    iput-object p1, p0, Ltms/fh;->a:Ltms/ff;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Ltms/fh;->a:Ltms/ff;

    invoke-static {v0}, Ltms/ff;->b(Ltms/ff;)Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    move-result-object v0

    iget-object v1, p0, Ltms/fh;->a:Ltms/ff;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->onCreate(Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    iget-object v0, p0, Ltms/fh;->a:Ltms/ff;

    invoke-static {v0}, Ltms/ff;->b(Ltms/ff;)Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    move-result-object v0

    iget-object v1, p0, Ltms/fh;->a:Ltms/ff;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->onUpgrade(Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
