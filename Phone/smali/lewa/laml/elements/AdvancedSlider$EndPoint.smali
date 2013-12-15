.class Llewa/laml/elements/AdvancedSlider$EndPoint;
.super Llewa/laml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field public mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/AdvancedSlider$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Llewa/laml/data/Expression;

.field private mPathY:Llewa/laml/data/Expression;

.field private mRawTolerance:I

.field private mTolerance:F

.field final synthetic this$0:Llewa/laml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 608
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    .line 609
    const-string v0, "EndPoint"

    invoke-direct {p0, p1, p2, v0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;-><init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 604
    const/16 v0, 0x96

    iput v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 610
    invoke-direct {p0, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->load(Lorg/w3c/dom/Element;)V

    .line 611
    return-void
.end method

.method static synthetic access$200(Llewa/laml/elements/AdvancedSlider$EndPoint;FF)Llewa/laml/util/Utils$Point;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 593
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Llewa/laml/util/Utils$Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Llewa/laml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 593
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getNearestPoint(FF)Llewa/laml/util/Utils$Point;
    .locals 18
    .parameter "x"
    .parameter "y"

    .prologue
    .line 614
    const/4 v10, 0x0

    .line 615
    .local v10, pos:Llewa/laml/util/Utils$Point;
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v14, :cond_1

    .line 616
    new-instance v10, Llewa/laml/util/Utils$Point;

    .end local v10           #pos:Llewa/laml/util/Utils$Point;
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static {v14}, Llewa/laml/elements/AdvancedSlider;->access$700(Llewa/laml/elements/AdvancedSlider;)F

    move-result v14

    sub-float v14, p1, v14

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    move-object/from16 v16, v0

    #getter for: Llewa/laml/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static/range {v16 .. v16}, Llewa/laml/elements/AdvancedSlider;->access$800(Llewa/laml/elements/AdvancedSlider;)F

    move-result v16

    sub-float v16, p2, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v10, v14, v15, v0, v1}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    .line 634
    .restart local v10       #pos:Llewa/laml/util/Utils$Point;
    :cond_0
    return-object v10

    .line 618
    :cond_1
    const-wide v4, 0x7fefffffffffffffL

    .line 619
    .local v4, dist:D
    const/4 v6, 0x1

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    add-int/lit8 v15, v6, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Llewa/laml/elements/AdvancedSlider$Position;

    .line 621
    .local v12, pt1:Llewa/laml/elements/AdvancedSlider$Position;
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Llewa/laml/elements/AdvancedSlider$Position;

    .line 622
    .local v13, pt2:Llewa/laml/elements/AdvancedSlider$Position;
    new-instance v8, Llewa/laml/util/Utils$Point;

    invoke-virtual {v12}, Llewa/laml/elements/AdvancedSlider$Position;->getX()F

    move-result v14

    float-to-double v14, v14

    invoke-virtual {v12}, Llewa/laml/elements/AdvancedSlider$Position;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v8, v14, v15, v0, v1}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    .line 623
    .local v8, p1:Llewa/laml/util/Utils$Point;
    new-instance v9, Llewa/laml/util/Utils$Point;

    invoke-virtual {v13}, Llewa/laml/elements/AdvancedSlider$Position;->getX()F

    move-result v14

    float-to-double v14, v14

    invoke-virtual {v13}, Llewa/laml/elements/AdvancedSlider$Position;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v9, v14, v15, v0, v1}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    .line 624
    .local v9, p2:Llewa/laml/util/Utils$Point;
    new-instance v7, Llewa/laml/util/Utils$Point;

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static {v14}, Llewa/laml/elements/AdvancedSlider;->access$700(Llewa/laml/elements/AdvancedSlider;)F

    move-result v14

    sub-float v14, p1, v14

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    move-object/from16 v16, v0

    #getter for: Llewa/laml/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static/range {v16 .. v16}, Llewa/laml/elements/AdvancedSlider;->access$800(Llewa/laml/elements/AdvancedSlider;)F

    move-result v16

    sub-float v16, p2, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v7, v14, v15, v0, v1}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    .line 625
    .local v7, p0:Llewa/laml/util/Utils$Point;
    const/4 v14, 0x1

    invoke-static {v8, v9, v7, v14}, Llewa/laml/util/Utils;->pointProjectionOnSegment(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)Llewa/laml/util/Utils$Point;

    move-result-object v11

    .line 627
    .local v11, pt:Llewa/laml/util/Utils$Point;
    const/4 v14, 0x0

    invoke-static {v11, v7, v14}, Llewa/laml/util/Utils;->Dist(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)D

    move-result-wide v2

    .line 628
    .local v2, d:D
    cmpg-double v14, v2, v4

    if-gez v14, :cond_2

    .line 629
    move-wide v4, v2

    .line 630
    move-object v10, v11

    .line 619
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    .line 639
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    .line 640
    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 643
    const-string v4, "Path"

    invoke-static {p1, v4}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 644
    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_1

    .line 645
    const/4 v4, 0x0

    iput-object v4, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 659
    :cond_0
    return-void

    .line 647
    :cond_1
    const-string v4, "tolerance"

    const/16 v5, 0x96

    invoke-static {v0, v4, v5}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 648
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 649
    const-string v4, "x"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPathX:Llewa/laml/data/Expression;

    .line 650
    const-string v4, "y"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPathY:Llewa/laml/data/Expression;

    .line 651
    const-string v4, "Position"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 653
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 654
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 656
    .local v2, item:Lorg/w3c/dom/Element;
    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    new-instance v5, Llewa/laml/elements/AdvancedSlider$Position;

    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v7, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPathX:Llewa/laml/data/Expression;

    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPathY:Llewa/laml/data/Expression;

    invoke-direct {v5, v6, v2, v7, v8}, Llewa/laml/elements/AdvancedSlider$Position;-><init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Llewa/laml/data/Expression;Llewa/laml/data/Expression;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"

    .prologue
    .line 662
    const-string v3, "Intent"

    invoke-static {p1, v3}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 663
    .local v1, intentEle:Lorg/w3c/dom/Element;
    const-string v3, "Command"

    invoke-static {p1, v3}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 664
    .local v0, commandEle:Lorg/w3c/dom/Element;
    const-string v3, "Trigger"

    invoke-static {p1, v3}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 665
    .local v2, triggerEle:Lorg/w3c/dom/Element;
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    new-instance v3, Llewa/laml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Llewa/laml/elements/AdvancedSlider$LaunchAction;-><init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/elements/AdvancedSlider$1;)V

    iput-object v3, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    .line 668
    if-eqz v1, :cond_2

    .line 669
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    invoke-static {v1}, Llewa/laml/util/Task;->load(Lorg/w3c/dom/Element;)Llewa/laml/util/Task;

    move-result-object v4

    iput-object v4, v3, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTask:Llewa/laml/util/Task;

    .line 671
    :cond_2
    if-eqz v0, :cond_3

    .line 672
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v4, v4, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-static {v0, v4}, Llewa/laml/ActionCommand;->create(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/ActionCommand;

    move-result-object v4

    iput-object v4, v3, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    .line 673
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    iget-object v3, v3, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-nez v3, :cond_3

    .line 677
    :cond_3
    if-eqz v2, :cond_0

    .line 679
    :try_start_0
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    new-instance v4, Llewa/laml/CommandTrigger;

    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v5, v5, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v4, v2, v5}, Llewa/laml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v4, v3, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;
    :try_end_0
    .catch Llewa/laml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_1
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    iget-object v3, v3, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-nez v3, :cond_0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 689
    invoke-super {p0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->finish()V

    .line 690
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->finish()V

    .line 692
    :cond_0
    return-void
.end method

.method public getTransformedDist(Llewa/laml/util/Utils$Point;FF)F
    .locals 7
    .parameter "pt"
    .parameter "x"
    .parameter "y"

    .prologue
    const v1, 0x7f7fffff

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, dist:F
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 697
    const v0, 0x7effffff

    :cond_0
    move v1, v0

    .line 706
    :cond_1
    :goto_0
    return v1

    .line 699
    :cond_2
    if-eqz p1, :cond_1

    .line 701
    new-instance v2, Llewa/laml/util/Utils$Point;

    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static {v3}, Llewa/laml/elements/AdvancedSlider;->access$700(Llewa/laml/elements/AdvancedSlider;)F

    move-result v3

    sub-float v3, p2, v3

    float-to-double v3, v3

    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static {v5}, Llewa/laml/elements/AdvancedSlider;->access$800(Llewa/laml/elements/AdvancedSlider;)F

    move-result v5

    sub-float v5, p3, v5

    float-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Llewa/laml/util/Utils;->Dist(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)D

    move-result-wide v2

    double-to-float v0, v2

    .line 703
    iget v2, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 710
    invoke-super {p0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 711
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->init()V

    .line 714
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget v1, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    .line 715
    return-void
.end method

.method protected onStateChange(Llewa/laml/elements/AdvancedSlider$State;Llewa/laml/elements/AdvancedSlider$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 718
    sget-object v0, Llewa/laml/elements/AdvancedSlider$1;->$SwitchMap$lewa$laml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Llewa/laml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 727
    :goto_0
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->onStateChange(Llewa/laml/elements/AdvancedSlider$State;Llewa/laml/elements/AdvancedSlider$State;)V

    .line 728
    return-void

    .line 720
    :pswitch_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v0, v0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mReachedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 731
    invoke-super {p0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->pause()V

    .line 732
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->pause()V

    .line 734
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 737
    invoke-super {p0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->resume()V

    .line 738
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->resume()V

    .line 740
    :cond_0
    return-void
.end method
