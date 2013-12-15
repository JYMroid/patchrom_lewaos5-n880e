.class final enum Lcom/lewa/widget/CircleAnimView$Circle;
.super Ljava/lang/Enum;
.source "CircleAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/widget/CircleAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Circle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/widget/CircleAnimView$Circle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/widget/CircleAnimView$Circle;

.field public static final enum CIRCLE_ONE:Lcom/lewa/widget/CircleAnimView$Circle;

.field public static final enum CIRCLE_THREE:Lcom/lewa/widget/CircleAnimView$Circle;

.field public static final enum CIRCLE_TWO:Lcom/lewa/widget/CircleAnimView$Circle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/lewa/widget/CircleAnimView$Circle;

    const-string v1, "CIRCLE_ONE"

    invoke-direct {v0, v1, v2}, Lcom/lewa/widget/CircleAnimView$Circle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_ONE:Lcom/lewa/widget/CircleAnimView$Circle;

    .line 34
    new-instance v0, Lcom/lewa/widget/CircleAnimView$Circle;

    const-string v1, "CIRCLE_TWO"

    invoke-direct {v0, v1, v3}, Lcom/lewa/widget/CircleAnimView$Circle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_TWO:Lcom/lewa/widget/CircleAnimView$Circle;

    .line 35
    new-instance v0, Lcom/lewa/widget/CircleAnimView$Circle;

    const-string v1, "CIRCLE_THREE"

    invoke-direct {v0, v1, v4}, Lcom/lewa/widget/CircleAnimView$Circle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_THREE:Lcom/lewa/widget/CircleAnimView$Circle;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lewa/widget/CircleAnimView$Circle;

    sget-object v1, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_ONE:Lcom/lewa/widget/CircleAnimView$Circle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_TWO:Lcom/lewa/widget/CircleAnimView$Circle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lewa/widget/CircleAnimView$Circle;->CIRCLE_THREE:Lcom/lewa/widget/CircleAnimView$Circle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lewa/widget/CircleAnimView$Circle;->$VALUES:[Lcom/lewa/widget/CircleAnimView$Circle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/widget/CircleAnimView$Circle;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/widget/CircleAnimView$Circle;

    return-object v0
.end method

.method public static values()[Lcom/lewa/widget/CircleAnimView$Circle;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/lewa/widget/CircleAnimView$Circle;->$VALUES:[Lcom/lewa/widget/CircleAnimView$Circle;

    invoke-virtual {v0}, [Lcom/lewa/widget/CircleAnimView$Circle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/widget/CircleAnimView$Circle;

    return-object v0
.end method
