.class public Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "ToolBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;,
        Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/ToolBar;",
        "Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field private box:Ljavafx/scene/layout/Pane;

.field private boxAlignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final engine:Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

.field private needsUpdate:Z

.field private overflow:Z

.field private overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

.field private overflowMenuItems:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private previousHeight:D

.field private previousWidth:D

.field private savedPrefHeight:D

.field private savedPrefWidth:D

.field private spacing:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ToolBar;)V
    .locals 11

    .prologue
    .line 92
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v2, p1

    .local v2, "toolbar":Ljavafx/scene/control/ToolBar;
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;-><init>(Ljavafx/scene/control/ToolBar;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 82
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflow:Z

    .line 83
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->previousWidth:D

    .line 84
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->previousHeight:D

    .line 85
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefWidth:D

    .line 86
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefHeight:D

    .line 88
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->needsUpdate:Z

    .line 93
    move-object v3, v1

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenuItems:Ljavafx/collections/ObservableList;

    .line 94
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->initialize()V

    .line 95
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ToolBar;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "ORIENTATION"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 97
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    new-instance v7, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;-><init>(Ljavafx/scene/Parent;Lcom/sun/javafx/scene/traversal/Algorithm;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->engine:Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    .line 189
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ToolBar;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->engine:Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToolBar;->setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V

    .line 191
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ToolBar;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 204
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Z
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflow:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->boxAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->lambda$new$515(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->lambda$new$516(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private addNodesToToolBar()V
    .locals 21

    .prologue
    .line 483
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/ToolBar;

    move-object v2, v14

    .line 484
    .local v2, "toolbar":Ljavafx/scene/control/ToolBar;
    const-wide/16 v14, 0x0

    move-wide v3, v14

    .line 485
    .local v3, "length":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v14}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v14

    sget-object v15, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v14, v15, :cond_2

    .line 486
    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/scene/control/ToolBar;->getHeight()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snappedTopInset()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snappedBottomInset()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide v3, v14

    .line 492
    :goto_0
    const-wide/16 v14, 0x0

    move-wide v5, v14

    .line 493
    .local v5, "x":D
    const/4 v14, 0x0

    move v7, v14

    .line 494
    .local v7, "hasOverflow":Z
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v14}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v8, v14

    :goto_1
    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    move-object v9, v14

    .line 495
    .local v9, "node":Ljavafx/scene/Node;
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v14}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v14

    sget-object v15, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v14, v15, :cond_3

    .line 496
    move-wide v14, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v9

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v18

    add-double v16, v16, v18

    add-double v14, v14, v16

    move-wide v5, v14

    .line 500
    :goto_2
    move-wide v14, v5

    move-wide/from16 v16, v3

    cmpl-double v14, v14, v16

    if-lez v14, :cond_4

    .line 501
    const/4 v14, 0x1

    move v7, v14

    .line 506
    .end local v9    # "node":Ljavafx/scene/Node;
    :cond_0
    move v14, v7

    if-eqz v14, :cond_1

    .line 507
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v14}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v14

    sget-object v15, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v14, v15, :cond_5

    .line 508
    move-wide v14, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object/from16 v17, v0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->prefHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v3, v14

    .line 512
    :goto_3
    move-wide v14, v3

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v3, v14

    .line 516
    :cond_1
    const-wide/16 v14, 0x0

    move-wide v5, v14

    .line 517
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenuItems:Ljavafx/collections/ObservableList;

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->clear()V

    .line 518
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-virtual {v14}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->clear()V

    .line 519
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v14}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v8, v14

    :goto_4
    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    move-object v9, v14

    .line 520
    .restart local v9    # "node":Ljavafx/scene/Node;
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v14

    const-string v15, "menu-item"

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v14

    .line 521
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v14

    const-string v15, "custom-menu-item"

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v14

    .line 522
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v14}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v14

    sget-object v15, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v14, v15, :cond_6

    .line 523
    move-wide v14, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v9

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v18

    add-double v16, v16, v18

    add-double v14, v14, v16

    move-wide v5, v14

    .line 527
    :goto_5
    move-wide v14, v5

    move-wide/from16 v16, v3

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_7

    .line 528
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-virtual {v14}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v14

    move-object v15, v9

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 585
    :goto_6
    goto :goto_4

    .line 488
    .end local v5    # "x":D
    .end local v7    # "hasOverflow":Z
    .end local v9    # "node":Ljavafx/scene/Node;
    :cond_2
    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/scene/control/ToolBar;->getWidth()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snappedLeftInset()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snappedRightInset()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide v3, v14

    goto/16 :goto_0

    .line 498
    .restart local v5    # "x":D
    .restart local v7    # "hasOverflow":Z
    .restart local v9    # "node":Ljavafx/scene/Node;
    :cond_3
    move-wide v14, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v9

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v18

    add-double v16, v16, v18

    add-double v14, v14, v16

    move-wide v5, v14

    goto/16 :goto_2

    .line 504
    :cond_4
    goto/16 :goto_1

    .line 510
    .end local v9    # "node":Ljavafx/scene/Node;
    :cond_5
    move-wide v14, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object/from16 v17, v0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v3, v14

    goto/16 :goto_3

    .line 525
    .restart local v9    # "node":Ljavafx/scene/Node;
    :cond_6
    move-wide v14, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v9

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v18

    add-double v16, v16, v18

    add-double v14, v14, v16

    move-wide v5, v14

    goto/16 :goto_5

    .line 530
    :cond_7
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/scene/Node;->isFocused()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 531
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-virtual {v14}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    .line 532
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->engine:Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->selectLast()Ljavafx/scene/Node;

    move-result-object v14

    move-object v10, v14

    .line 533
    .local v10, "last":Ljavafx/scene/Node;
    move-object v14, v10

    if-eqz v14, :cond_8

    .line 534
    move-object v14, v10

    invoke-virtual {v14}, Ljavafx/scene/Node;->requestFocus()V

    .line 536
    .line 540
    .end local v10    # "last":Ljavafx/scene/Node;
    :cond_8
    :goto_7
    move-object v14, v9

    instance-of v14, v14, Ljavafx/scene/control/Separator;

    if-eqz v14, :cond_a

    .line 541
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenuItems:Ljavafx/collections/ObservableList;

    new-instance v15, Ljavafx/scene/control/SeparatorMenuItem;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/control/SeparatorMenuItem;-><init>()V

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v14

    goto/16 :goto_6

    .line 537
    :cond_9
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->requestFocus()V

    goto :goto_7

    .line 543
    :cond_a
    new-instance v14, Ljavafx/scene/control/CustomMenuItem;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/control/CustomMenuItem;-><init>(Ljavafx/scene/Node;)V

    move-object v10, v14

    .line 554
    .local v10, "customMenuItem":Ljavafx/scene/control/CustomMenuItem;
    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/scene/Node;->getTypeSelector()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 555
    .local v11, "nodeType":Ljava/lang/String;
    move-object v14, v11

    move-object v12, v14

    const/4 v14, -0x1

    move v13, v14

    move-object v14, v12

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_b
    :goto_8
    move v14, v13

    packed-switch v14, :pswitch_data_0

    .line 582
    :goto_9
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenuItems:Ljavafx/collections/ObservableList;

    move-object v15, v10

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v14

    goto/16 :goto_6

    .line 555
    :sswitch_0
    move-object v14, v12

    const-string v15, "Button"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    move v13, v14

    goto :goto_8

    :sswitch_1
    move-object v14, v12

    const-string v15, "Hyperlink"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    move v13, v14

    goto :goto_8

    :sswitch_2
    move-object v14, v12

    const-string v15, "Label"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x2

    move v13, v14

    goto :goto_8

    :sswitch_3
    move-object v14, v12

    const-string v15, "CheckBox"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x3

    move v13, v14

    goto :goto_8

    :sswitch_4
    move-object v14, v12

    const-string v15, "ChoiceBox"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x4

    move v13, v14

    goto :goto_8

    :sswitch_5
    move-object v14, v12

    const-string v15, "ColorPicker"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x5

    move v13, v14

    goto :goto_8

    :sswitch_6
    move-object v14, v12

    const-string v15, "ComboBox"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x6

    move v13, v14

    goto :goto_8

    :sswitch_7
    move-object v14, v12

    const-string v15, "DatePicker"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x7

    move v13, v14

    goto :goto_8

    :sswitch_8
    move-object v14, v12

    const-string v15, "MenuButton"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x8

    move v13, v14

    goto :goto_8

    :sswitch_9
    move-object v14, v12

    const-string v15, "PasswordField"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x9

    move v13, v14

    goto/16 :goto_8

    :sswitch_a
    move-object v14, v12

    const-string v15, "RadioButton"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0xa

    move v13, v14

    goto/16 :goto_8

    :sswitch_b
    move-object v14, v12

    const-string v15, "ScrollBar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0xb

    move v13, v14

    goto/16 :goto_8

    :sswitch_c
    move-object v14, v12

    const-string v15, "ScrollPane"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0xc

    move v13, v14

    goto/16 :goto_8

    :sswitch_d
    move-object v14, v12

    const-string v15, "Slider"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0xd

    move v13, v14

    goto/16 :goto_8

    :sswitch_e
    move-object v14, v12

    const-string v15, "SplitMenuButton"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0xe

    move v13, v14

    goto/16 :goto_8

    :sswitch_f
    move-object v14, v12

    const-string v15, "SplitPane"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0xf

    move v13, v14

    goto/16 :goto_8

    :sswitch_10
    move-object v14, v12

    const-string v15, "TextArea"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x10

    move v13, v14

    goto/16 :goto_8

    :sswitch_11
    move-object v14, v12

    const-string v15, "TextField"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x11

    move v13, v14

    goto/16 :goto_8

    :sswitch_12
    move-object v14, v12

    const-string v15, "ToggleButton"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x12

    move v13, v14

    goto/16 :goto_8

    :sswitch_13
    move-object v14, v12

    const-string v15, "ToolBar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x13

    move v13, v14

    goto/16 :goto_8

    .line 559
    :pswitch_0
    move-object v14, v10

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljavafx/scene/control/CustomMenuItem;->setHideOnClick(Z)V

    .line 560
    goto/16 :goto_9

    .line 578
    :pswitch_1
    move-object v14, v10

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljavafx/scene/control/CustomMenuItem;->setHideOnClick(Z)V

    goto/16 :goto_9

    .line 588
    .end local v9    # "node":Ljavafx/scene/Node;
    .end local v10    # "customMenuItem":Ljavafx/scene/control/CustomMenuItem;
    .end local v11    # "nodeType":Ljava/lang/String;
    :cond_c
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenuItems:Ljavafx/collections/ObservableList;

    invoke-interface {v15}, Ljavafx/collections/ObservableList;->size()I

    move-result v15

    if-lez v15, :cond_e

    const/4 v15, 0x1

    :goto_a
    iput-boolean v15, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflow:Z

    .line 589
    move-object v14, v1

    iget-boolean v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflow:Z

    if-nez v14, :cond_d

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->isFocused()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 590
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->engine:Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->selectLast()Ljavafx/scene/Node;

    move-result-object v14

    move-object v8, v14

    .line 591
    .local v8, "last":Ljavafx/scene/Node;
    move-object v14, v8

    if-eqz v14, :cond_d

    .line 592
    move-object v14, v8

    invoke-virtual {v14}, Ljavafx/scene/Node;->requestFocus()V

    .line 595
    .end local v8    # "last":Ljavafx/scene/Node;
    :cond_d
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object v15, v1

    iget-boolean v15, v15, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflow:Z

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setVisible(Z)V

    .line 596
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object v15, v1

    iget-boolean v15, v15, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflow:Z

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setManaged(Z)V

    .line 597
    return-void

    .line 588
    :cond_e
    const/4 v15, 0x0

    goto :goto_a

    .line 555
    :sswitch_data_0
    .sparse-switch
        -0x70760a7e -> :sswitch_f
        -0x6fa7521a -> :sswitch_b
        -0x6f383a04 -> :sswitch_7
        -0x6c3a9aff -> :sswitch_d
        -0x67cb8a4f -> :sswitch_5
        -0x5bc607ba -> :sswitch_1
        -0x55fa27b6 -> :sswitch_4
        -0x38007086 -> :sswitch_10
        -0x20a4da83 -> :sswitch_6
        0x45c8ed4 -> :sswitch_2
        0x1f43ab3b -> :sswitch_13
        0x2e46a6ed -> :sswitch_a
        0x2fa453c6 -> :sswitch_12
        0x3834bfad -> :sswitch_11
        0x40584191 -> :sswitch_8
        0x46a48eff -> :sswitch_9
        0x5f7507c3 -> :sswitch_3
        0x72487c0b -> :sswitch_e
        0x77471352 -> :sswitch_0
        0x7ac36bf5 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 765
    # getter for: Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->access$700()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v1

    sget-object v2, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v1, v2, :cond_0

    .line 460
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/VBox;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljavafx/scene/layout/VBox;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    .line 464
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-virtual {v1}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "container"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 465
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-virtual {v1}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 466
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenuItems:Ljavafx/collections/ObservableList;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;-><init>(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;Ljavafx/collections/ObservableList;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    .line 467
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setVisible(Z)V

    .line 468
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->setManaged(Z)V

    .line 470
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 471
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 472
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 474
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->previousWidth:D

    .line 475
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->previousHeight:D

    .line 476
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefWidth:D

    .line 477
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefHeight:D

    .line 478
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->needsUpdate:Z

    .line 479
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v1}, Ljavafx/scene/control/ToolBar;->requestLayout()V

    .line 480
    return-void

    .line 462
    :cond_0
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/HBox;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljavafx/scene/layout/HBox;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    goto/16 :goto_0
.end method

.method private synthetic lambda$new$515(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-virtual {v4}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 197
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-virtual {v4}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->requestFocus()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->requestFocus()V

    goto :goto_0
.end method

.method private synthetic lambda$new$516(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 207
    .local v3, "n":Ljavafx/scene/Node;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-virtual {v4}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 208
    goto :goto_1

    .line 209
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    invoke-virtual {v4}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_0

    .line 211
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->needsUpdate:Z

    .line 212
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ToolBar;->requestLayout()V

    .line 213
    return-void
.end method


# virtual methods
.method public final boxAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->boxAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 269
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->boxAlignment:Ljavafx/beans/property/ObjectProperty;

    .line 297
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->boxAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-object v0
.end method

.method protected computeMaxHeight(DDDDD)D
    .locals 17

    .prologue
    .line 371
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 372
    :goto_0
    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-wide v1

    .line 371
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :cond_0
    move-object v12, v1

    move-object v13, v1

    .line 372
    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/ToolBar;

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/ToolBar;->prefHeight(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v12

    goto :goto_0
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 17

    .prologue
    .line 366
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v12}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v12

    sget-object v13, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_0

    move-object v12, v1

    move-object v13, v1

    .line 367
    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/ToolBar;

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/control/ToolBar;->prefWidth(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v12

    :goto_0
    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :cond_0
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_0
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 25

    .prologue
    .line 315
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/ToolBar;

    move-object v12, v13

    .line 316
    .local v12, "toolbar":Ljavafx/scene/control/ToolBar;
    move-object v13, v12

    invoke-virtual {v13}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v13

    sget-object v14, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v13, v14, :cond_0

    move-object v13, v1

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 317
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->prefHeight(D)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v13

    move-wide v15, v4

    add-double/2addr v13, v15

    move-wide v15, v8

    add-double/2addr v13, v15

    .line 318
    :goto_0
    move-wide v1, v13

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-wide v1

    .line 317
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :cond_0
    move-object v13, v1

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .line 318
    invoke-virtual/range {v13 .. v23}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->computePrefHeight(DDDDD)D

    move-result-wide v13

    goto :goto_0
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 25

    .prologue
    .line 308
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/ToolBar;

    move-object v12, v13

    .line 309
    .local v12, "toolbar":Ljavafx/scene/control/ToolBar;
    move-object v13, v12

    invoke-virtual {v13}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v13

    sget-object v14, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v13, v14, :cond_0

    move-object v13, v1

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .line 310
    invoke-virtual/range {v13 .. v23}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->computePrefWidth(DDDDD)D

    move-result-wide v13

    .line 311
    :goto_0
    move-wide v1, v13

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-wide v1

    .line 310
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :cond_0
    move-object v13, v1

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 311
    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->prefWidth(D)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v13

    move-wide v15, v10

    add-double/2addr v13, v15

    move-wide v15, v6

    add-double/2addr v13, v15

    goto :goto_0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 27

    .prologue
    .line 344
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-wide/from16 v5, p1

    .local v5, "width":D
    move-wide/from16 v7, p3

    .local v7, "topInset":D
    move-wide/from16 v9, p5

    .local v9, "rightInset":D
    move-wide/from16 v11, p7

    .local v11, "bottomInset":D
    move-wide/from16 v13, p9

    .local v13, "leftInset":D
    const-wide/16 v20, 0x0

    move-wide/from16 v15, v20

    .line 345
    .local v15, "prefHeight":D
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/ToolBar;

    move-object/from16 v17, v20

    .line 347
    .local v17, "toolbar":Ljavafx/scene/control/ToolBar;
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v20

    sget-object v21, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 348
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v18, v20

    :goto_0
    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v19, v20

    .line 349
    .local v19, "node":Ljavafx/scene/Node;
    move-wide/from16 v20, v15

    move-object/from16 v22, v4

    move-object/from16 v23, v19

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v22

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v24

    add-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v15, v20

    .line 350
    goto :goto_0

    .line 351
    .end local v19    # "node":Ljavafx/scene/Node;
    :cond_0
    move-wide/from16 v20, v15

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-wide/from16 v15, v20

    .line 362
    :goto_1
    move-wide/from16 v20, v7

    move-wide/from16 v22, v15

    add-double v20, v20, v22

    move-wide/from16 v22, v11

    add-double v20, v20, v22

    move-wide/from16 v4, v20

    .end local v4    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-wide v4

    .line 353
    .restart local v4    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :cond_1
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v18, v20

    :goto_2
    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v19, v20

    .line 354
    .restart local v19    # "node":Ljavafx/scene/Node;
    move-wide/from16 v20, v15

    move-object/from16 v22, v4

    move-object/from16 v23, v19

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v15, v20

    .line 355
    goto :goto_2

    .line 356
    .end local v19    # "node":Ljavafx/scene/Node;
    :cond_2
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 357
    move-object/from16 v20, v4

    move-wide/from16 v21, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefHeight:D

    goto :goto_1

    .line 359
    :cond_3
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefHeight:D

    move-wide/from16 v20, v0

    move-wide/from16 v15, v20

    goto :goto_1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 27

    .prologue
    .line 322
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-wide/from16 v5, p1

    .local v5, "height":D
    move-wide/from16 v7, p3

    .local v7, "topInset":D
    move-wide/from16 v9, p5

    .local v9, "rightInset":D
    move-wide/from16 v11, p7

    .local v11, "bottomInset":D
    move-wide/from16 v13, p9

    .local v13, "leftInset":D
    const-wide/16 v20, 0x0

    move-wide/from16 v15, v20

    .line 323
    .local v15, "prefWidth":D
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/ToolBar;

    move-object/from16 v17, v20

    .line 325
    .local v17, "toolbar":Ljavafx/scene/control/ToolBar;
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v20

    sget-object v21, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 326
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v18, v20

    :goto_0
    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v19, v20

    .line 327
    .local v19, "node":Ljavafx/scene/Node;
    move-wide/from16 v20, v15

    move-object/from16 v22, v4

    move-object/from16 v23, v19

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v22

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v24

    add-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v15, v20

    .line 328
    goto :goto_0

    .line 329
    .end local v19    # "node":Ljavafx/scene/Node;
    :cond_0
    move-wide/from16 v20, v15

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-wide/from16 v15, v20

    .line 340
    :goto_1
    move-wide/from16 v20, v13

    move-wide/from16 v22, v15

    add-double v20, v20, v22

    move-wide/from16 v22, v9

    add-double v20, v20, v22

    move-wide/from16 v4, v20

    .end local v4    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-wide v4

    .line 331
    .restart local v4    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :cond_1
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v18, v20

    :goto_2
    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v19, v20

    .line 332
    .restart local v19    # "node":Ljavafx/scene/Node;
    move-wide/from16 v20, v15

    move-object/from16 v22, v4

    move-object/from16 v23, v19

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v15, v20

    .line 333
    goto :goto_2

    .line 334
    .end local v19    # "node":Ljavafx/scene/Node;
    :cond_2
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 335
    move-object/from16 v20, v4

    move-wide/from16 v21, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefWidth:D

    goto :goto_1

    .line 337
    :cond_3
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefWidth:D

    move-wide/from16 v20, v0

    move-wide/from16 v15, v20

    goto :goto_1
.end method

.method protected varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 790
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 792
    :goto_0
    return-void

    .line 788
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->access$800(Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;)V

    .line 789
    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final getBoxAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->boxAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->boxAlignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 773
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-object v0
.end method

.method public final getSpacing()D
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSpace(D)D

    move-result-wide v1

    goto :goto_0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 302
    const-string v2, "ORIENTATION"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->initialize()V

    .line 305
    :cond_0
    return-void
.end method

.method protected layoutChildren(DDDD)V
    .locals 41

    .prologue
    .line 378
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v26

    check-cast v26, Ljavafx/scene/control/ToolBar;

    move-object/from16 v12, v26

    .line 380
    .local v12, "toolbar":Ljavafx/scene/control/ToolBar;
    move-object/from16 v26, v12

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v26

    sget-object v27, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 381
    move-object/from16 v26, v3

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ToolBar;->getHeight()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v26

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->previousHeight:D

    move-wide/from16 v28, v0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->needsUpdate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 382
    :cond_0
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    move-object/from16 v26, v0

    check-cast v26, Ljavafx/scene/layout/VBox;

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/layout/VBox;->setSpacing(D)V

    .line 383
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    move-object/from16 v26, v0

    check-cast v26, Ljavafx/scene/layout/VBox;

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getBoxAlignment()Ljavafx/geometry/Pos;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/layout/VBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 384
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v12

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/ToolBar;->getHeight()D

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->previousHeight:D

    .line 385
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->addNodesToToolBar()V

    .line 395
    :cond_1
    :goto_0
    move-object/from16 v26, v3

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->needsUpdate:Z

    .line 397
    move-wide/from16 v26, v8

    move-wide/from16 v13, v26

    .line 398
    .local v13, "toolbarWidth":D
    move-wide/from16 v26, v10

    move-wide/from16 v15, v26

    .line 400
    .local v15, "toolbarHeight":D
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v26

    check-cast v26, Ljavafx/scene/control/ToolBar;

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v26

    sget-object v27, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 401
    move-wide/from16 v26, v15

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflow:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v28, v3

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->prefHeight(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v28

    :goto_1
    sub-double v26, v26, v28

    move-wide/from16 v15, v26

    .line 406
    :goto_2
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    move-object/from16 v26, v0

    move-wide/from16 v27, v13

    move-wide/from16 v29, v15

    invoke-virtual/range {v26 .. v30}, Ljavafx/scene/layout/Pane;->resize(DD)V

    .line 407
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    move-object/from16 v27, v0

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    move-wide/from16 v32, v13

    move-wide/from16 v34, v15

    const-wide/16 v36, 0x0

    sget-object v38, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v39, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v26 .. v39}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 411
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflow:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 412
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->prefWidth(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v17, v26

    .line 413
    .local v17, "overflowMenuWidth":D
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->prefHeight(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v19, v26

    .line 414
    .local v19, "overflowMenuHeight":D
    move-wide/from16 v26, v4

    move-wide/from16 v21, v26

    .line 415
    .local v21, "overflowX":D
    move-wide/from16 v26, v4

    move-wide/from16 v23, v26

    .line 416
    .local v23, "overflowY":D
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v26

    check-cast v26, Ljavafx/scene/control/ToolBar;

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v26

    sget-object v27, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 419
    move-wide/from16 v26, v13

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_2

    .line 420
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefWidth:D

    move-wide/from16 v26, v0

    move-wide/from16 v13, v26

    .line 422
    :cond_2
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    move-object/from16 v26, v0

    check-cast v26, Ljavafx/scene/layout/VBox;

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/VBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v26

    move-object/from16 v25, v26

    .line 423
    .local v25, "pos":Ljavafx/geometry/HPos;
    sget-object v26, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    move-object/from16 v27, v25

    invoke-virtual/range {v26 .. v27}, Ljavafx/geometry/HPos;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 424
    move-wide/from16 v26, v4

    move-wide/from16 v28, v13

    move-wide/from16 v30, v17

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v21, v26

    .line 433
    :goto_3
    move-object/from16 v26, v3

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ToolBar;->getHeight()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v28, v19

    sub-double v26, v26, v28

    move-wide/from16 v28, v6

    sub-double v26, v26, v28

    move-wide/from16 v23, v26

    .line 452
    .end local v25    # "pos":Ljavafx/geometry/HPos;
    :goto_4
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object/from16 v26, v0

    move-wide/from16 v27, v17

    move-wide/from16 v29, v19

    invoke-virtual/range {v26 .. v30}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->resize(DD)V

    .line 453
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object/from16 v27, v0

    move-wide/from16 v28, v21

    move-wide/from16 v30, v23

    move-wide/from16 v32, v17

    move-wide/from16 v34, v19

    const-wide/16 v36, 0x0

    sget-object v38, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v39, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v26 .. v39}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 456
    .end local v17    # "overflowMenuWidth":D
    .end local v19    # "overflowMenuHeight":D
    .end local v21    # "overflowX":D
    .end local v23    # "overflowY":D
    :cond_3
    return-void

    .line 388
    .end local v13    # "toolbarWidth":D
    .end local v15    # "toolbarHeight":D
    :cond_4
    move-object/from16 v26, v3

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ToolBar;->getWidth()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v26

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->previousWidth:D

    move-wide/from16 v28, v0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_5

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->needsUpdate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 389
    :cond_5
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    move-object/from16 v26, v0

    check-cast v26, Ljavafx/scene/layout/HBox;

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSpacing()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/layout/HBox;->setSpacing(D)V

    .line 390
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    move-object/from16 v26, v0

    check-cast v26, Ljavafx/scene/layout/HBox;

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getBoxAlignment()Ljavafx/geometry/Pos;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/layout/HBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 391
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v12

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/ToolBar;->getWidth()D

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->previousWidth:D

    .line 392
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->addNodesToToolBar()V

    goto/16 :goto_0

    .line 401
    .restart local v13    # "toolbarWidth":D
    .restart local v15    # "toolbarHeight":D
    :cond_6
    const-wide/16 v28, 0x0

    goto/16 :goto_1

    .line 403
    :cond_7
    move-wide/from16 v26, v13

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflow:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v28, v3

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;->prefWidth(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v28

    :goto_5
    sub-double v26, v26, v28

    move-wide/from16 v13, v26

    goto/16 :goto_2

    :cond_8
    const-wide/16 v28, 0x0

    goto :goto_5

    .line 425
    .restart local v17    # "overflowMenuWidth":D
    .restart local v19    # "overflowMenuHeight":D
    .restart local v21    # "overflowX":D
    .restart local v23    # "overflowY":D
    .restart local v25    # "pos":Ljavafx/geometry/HPos;
    :cond_9
    sget-object v26, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    move-object/from16 v27, v25

    invoke-virtual/range {v26 .. v27}, Ljavafx/geometry/HPos;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 426
    move-object/from16 v26, v3

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ToolBar;->getWidth()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v26

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snappedRightInset()D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v28, v13

    sub-double v26, v26, v28

    move-wide/from16 v28, v13

    move-wide/from16 v30, v17

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    .line 427
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v21, v26

    goto/16 :goto_3

    .line 429
    :cond_a
    move-wide/from16 v26, v4

    move-object/from16 v28, v3

    move-object/from16 v29, v12

    .line 430
    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/ToolBar;->getWidth()D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v28

    move-wide/from16 v30, v4

    sub-double v28, v28, v30

    move-object/from16 v30, v3

    .line 431
    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snappedRightInset()D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v30, v17

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    .line 430
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v21, v26

    goto/16 :goto_3

    .line 437
    .end local v25    # "pos":Ljavafx/geometry/HPos;
    :cond_b
    move-wide/from16 v26, v15

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_c

    .line 438
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->savedPrefHeight:D

    move-wide/from16 v26, v0

    move-wide/from16 v15, v26

    .line 440
    :cond_c
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->box:Ljavafx/scene/layout/Pane;

    move-object/from16 v26, v0

    check-cast v26, Ljavafx/scene/layout/HBox;

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/HBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v26

    move-object/from16 v25, v26

    .line 441
    .local v25, "pos":Ljavafx/geometry/VPos;
    sget-object v26, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    move-object/from16 v27, v25

    invoke-virtual/range {v26 .. v27}, Ljavafx/geometry/VPos;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 442
    move-wide/from16 v26, v6

    move-wide/from16 v28, v15

    move-wide/from16 v30, v19

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    .line 443
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v23, v26

    .line 450
    :goto_6
    move-object/from16 v26, v3

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ToolBar;->getWidth()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v28, v17

    sub-double v26, v26, v28

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snappedRightInset()D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v21, v26

    goto/16 :goto_4

    .line 444
    :cond_d
    sget-object v26, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    move-object/from16 v27, v25

    invoke-virtual/range {v26 .. v27}, Ljavafx/geometry/VPos;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 445
    move-object/from16 v26, v3

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ToolBar;->getHeight()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSize(D)D

    move-result-wide v26

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snappedBottomInset()D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v28, v15

    sub-double v26, v26, v28

    move-wide/from16 v28, v15

    move-wide/from16 v30, v19

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    .line 446
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v23, v26

    goto :goto_6

    .line 448
    :cond_e
    move-wide/from16 v26, v6

    move-wide/from16 v28, v15

    move-wide/from16 v30, v19

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v23, v26

    goto :goto_6
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 780
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :goto_0
    return-object v0

    .line 779
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->overflowMenu:Lcom/sun/javafx/scene/control/skin/ToolBarSkin$ToolBarOverflowMenu;

    move-object v0, v3

    goto :goto_0

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final setBoxAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->boxAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public final setSpacing(D)V
    .locals 9

    .prologue
    .line 218
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->spacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->snapSpace(D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 219
    return-void
.end method

.method public final spacingProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 227
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    .line 255
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    return-object v0
.end method
