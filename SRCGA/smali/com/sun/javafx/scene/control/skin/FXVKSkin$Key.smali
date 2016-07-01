.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
.super Ljavafx/scene/layout/Region;
.source "FXVKSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/FXVKSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Key"
.end annotation


# instance fields
.field protected final altText:Ljavafx/scene/text/Text;

.field col:I

.field colSpan:I

.field protected final icon:Ljavafx/scene/layout/Region;

.field protected final text:Ljavafx/scene/text/Text;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;


# direct methods
.method protected constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)V
    .locals 8

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Region;-><init>()V

    .line 661
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->col:I

    .line 662
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->colSpan:I

    .line 668
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/Region;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->icon:Ljavafx/scene/layout/Region;

    .line 669
    move-object v2, v0

    new-instance v3, Ljavafx/scene/text/Text;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/text/Text;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    .line 670
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    sget-object v3, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setTextOrigin(Ljavafx/geometry/VPos;)V

    .line 671
    move-object v2, v0

    new-instance v3, Ljavafx/scene/text/Text;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/text/Text;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    .line 672
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    sget-object v3, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setTextOrigin(Ljavafx/geometry/VPos;)V

    .line 673
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->icon:Ljavafx/scene/layout/Region;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 674
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "key"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 675
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 679
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 683
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->lambda$new$359(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->lambda$new$360(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private synthetic lambda$new$359(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v2, v3, :cond_0

    .line 677
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->press()V

    .line 678
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$360(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v2, v3, :cond_0

    .line 681
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->release()V

    .line 682
    :cond_0
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 692
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->snappedLeftInset()D

    move-result-wide v15

    move-wide v3, v15

    .line 693
    .local v3, "left":D
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->snappedTopInset()D

    move-result-wide v15

    move-wide v5, v15

    .line 694
    .local v5, "top":D
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getWidth()D

    move-result-wide v15

    move-wide/from16 v17, v3

    sub-double v15, v15, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->snappedRightInset()D

    move-result-wide v17

    sub-double v15, v15, v17

    move-wide v7, v15

    .line 695
    .local v7, "width":D
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getHeight()D

    move-result-wide v15

    move-wide/from16 v17, v5

    sub-double v15, v15, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->snappedBottomInset()D

    move-result-wide v17

    sub-double v15, v15, v17

    move-wide v9, v15

    .line 697
    .local v9, "height":D
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->icon:Ljavafx/scene/layout/Region;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/Region;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v16

    if-nez v16, :cond_0

    const/16 v16, 0x1

    :goto_0
    invoke-virtual/range {v15 .. v16}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 698
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/text/Text;->prefWidth(D)D

    move-result-wide v15

    move-wide v11, v15

    .line 699
    .local v11, "contentPrefWidth":D
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/text/Text;->prefHeight(D)D

    move-result-wide v15

    move-wide v13, v15

    .line 700
    .local v13, "contentPrefHeight":D
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    move-wide/from16 v16, v3

    move-wide/from16 v18, v7

    move-wide/from16 v20, v11

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    add-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v5

    move-wide/from16 v20, v9

    move-wide/from16 v22, v13

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    add-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v11

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v15 .. v23}, Ljavafx/scene/text/Text;->resizeRelocate(DDDD)V

    .line 706
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->icon:Ljavafx/scene/layout/Region;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/Region;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v16

    if-nez v16, :cond_1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    const/16 v16, 0x1

    :goto_1
    invoke-virtual/range {v15 .. v16}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 707
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/text/Text;->prefWidth(D)D

    move-result-wide v15

    move-wide v11, v15

    .line 708
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/text/Text;->prefHeight(D)D

    move-result-wide v15

    move-wide v13, v15

    .line 709
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    move-wide/from16 v16, v3

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v7

    move-wide/from16 v20, v11

    sub-double v18, v18, v20

    add-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v18, v5

    move-wide/from16 v20, v9

    move-wide/from16 v22, v13

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    add-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v20, v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v11

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v15 .. v23}, Ljavafx/scene/text/Text;->resizeRelocate(DDDD)V

    .line 715
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->icon:Ljavafx/scene/layout/Region;

    move-wide/from16 v16, v3

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    sub-double v16, v16, v18

    move-wide/from16 v18, v5

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    sub-double v18, v18, v20

    move-wide/from16 v20, v7

    const-wide/high16 v22, 0x4030000000000000L    # 16.0

    add-double v20, v20, v22

    move-wide/from16 v22, v9

    const-wide/high16 v24, 0x4030000000000000L    # 16.0

    add-double v22, v22, v24

    invoke-virtual/range {v15 .. v23}, Ljavafx/scene/layout/Region;->resizeRelocate(DDDD)V

    .line 716
    return-void

    .line 697
    .end local v11    # "contentPrefWidth":D
    .end local v13    # "contentPrefHeight":D
    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 706
    .restart local v11    # "contentPrefWidth":D
    .restart local v13    # "contentPrefHeight":D
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_1
.end method

.method protected press()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method protected release()V
    .locals 2

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->clearShift()V

    .line 687
    return-void
.end method

.method public update(ZZZ)V
    .locals 0
    .param p1, "capsDown"    # Z
    .param p2, "shiftDown"    # Z
    .param p3, "isSymbol"    # Z

    .prologue
    .line 689
    return-void
.end method
