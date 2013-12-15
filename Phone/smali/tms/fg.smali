.class Ltms/fg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/ff;


# direct methods
.method constructor <init>(Ltms/ff;)V
    .locals 0

    iput-object p1, p0, Ltms/fg;->a:Ltms/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ltms/fg;->a:Ltms/ff;

    invoke-static {v0}, Ltms/ff;->a(Ltms/ff;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method
