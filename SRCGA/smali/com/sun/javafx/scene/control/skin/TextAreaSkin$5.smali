.class Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;
.super Ljava/lang/Object;
.source "TextAreaSkin.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextAreaSkin;-><init>(Ljavafx/scene/control/TextArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/input/MouseEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V
    .locals 4

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/MouseEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->handle(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/MouseEvent;)V
    .locals 21

    .prologue
    .line 689
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;
    move-object/from16 v3, p1

    .local v3, "e":Ljavafx/scene/input/MouseEvent;
    move-object v12, v2

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/TextArea;

    move-object v4, v12

    .line 690
    .local v4, "textArea":Ljavafx/scene/control/TextArea;
    move-object v12, v2

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/text/Text;

    move-result-object v12

    move-object v5, v12

    .line 691
    .local v5, "textNode":Ljavafx/scene/text/Text;
    move-object v12, v5

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v12 .. v16}, Ljavafx/scene/text/Text;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v12

    move-object v6, v12

    .line 692
    .local v6, "tp":Ljavafx/geometry/Point2D;
    new-instance v12, Ljavafx/geometry/Point2D;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v14

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v16

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    add-double v14, v14, v16

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v16, v3

    .line 693
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v16

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    sub-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v18

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    sub-double v16, v16, v18

    invoke-direct/range {v13 .. v17}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v7, v12

    .line 694
    .local v7, "p":Ljavafx/geometry/Point2D;
    move-object v12, v5

    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v14, v7

    invoke-static {v13, v14}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1900(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v12

    move-object v8, v12

    .line 695
    .local v8, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v12, v8

    invoke-virtual {v12}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v12

    move v9, v12

    .line 696
    .local v9, "pos":I
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/control/TextArea;->getAnchor()I

    move-result v12

    move-object v13, v4

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v13

    if-le v12, v13, :cond_0

    .line 698
    move-object v12, v4

    move-object v13, v4

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v13

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/control/TextArea;->getAnchor()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/TextArea;->selectRange(II)V

    .line 700
    :cond_0
    move v12, v9

    if-lez v12, :cond_3

    .line 701
    move v12, v9

    move-object v13, v4

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->getAnchor()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    if-gt v12, v13, :cond_1

    .line 702
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/control/TextArea;->getAnchor()I

    move-result v12

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    move-object v13, v4

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->getLength()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v9, v12

    .line 704
    :cond_1
    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getImpl_caretPosition()I

    move-result v12

    move v10, v12

    .line 705
    .local v10, "oldPos":I
    move-object v12, v5

    move v13, v9

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 706
    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getImpl_caretShape()[Ljavafx/scene/shape/PathElement;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v11, v12

    .line 707
    .local v11, "element":Ljavafx/scene/shape/PathElement;
    move-object v12, v11

    instance-of v12, v12, Ljavafx/scene/shape/MoveTo;

    if-eqz v12, :cond_2

    move-object v12, v11

    check-cast v12, Ljavafx/scene/shape/MoveTo;

    invoke-virtual {v12}, Ljavafx/scene/shape/MoveTo;->getY()D

    move-result-wide v12

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v14

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v16

    sub-double v14, v14, v16

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    .line 708
    move-object v12, v8

    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/text/HitInfo;->setCharIndex(I)V

    .line 710
    :cond_2
    move-object v12, v5

    move v13, v10

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 711
    move-object v12, v2

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v13, v8

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    .line 713
    .end local v10    # "oldPos":I
    .end local v11    # "element":Ljavafx/scene/shape/PathElement;
    :cond_3
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 714
    return-void
.end method
