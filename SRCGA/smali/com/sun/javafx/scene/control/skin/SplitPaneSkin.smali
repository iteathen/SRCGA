.class public Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "SplitPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;,
        Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;,
        Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/SplitPane;",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/SplitPane;",
        ">;>;"
    }
.end annotation


# instance fields
.field private checkDividerPos:Z

.field private contentDividers:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;",
            ">;"
        }
    .end annotation
.end field

.field private contentRegions:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;",
            ">;"
        }
    .end annotation
.end field

.field private horizontal:Z

.field private lastDividerUpdate:I

.field private previousSize:D

.field private resize:Z


# direct methods
.method public constructor <init>(Ljavafx/scene/control/SplitPane;)V
    .locals 12

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, p1

    .local v1, "splitPane":Ljavafx/scene/control/SplitPane;
    move-object v5, v0

    move-object v6, v1

    new-instance v7, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 537
    move-object v5, v0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->previousSize:D

    .line 538
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lastDividerUpdate:I

    .line 539
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->resize:Z

    .line 540
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->checkDividerPos:Z

    .line 59
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    .line 61
    move-object v5, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    .line 62
    move-object v5, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    .line 64
    const/4 v5, 0x0

    move v2, v5

    .line 65
    .local v2, "index":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v5}, Ljavafx/scene/control/SplitPane;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v4, v5

    .line 66
    .local v4, "n":Ljavafx/scene/Node;
    move-object v5, v0

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->addContent(ILjavafx/scene/Node;)V

    .line 67
    goto :goto_1

    .line 59
    .end local v2    # "index":I
    .end local v4    # "n":Ljavafx/scene/Node;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 68
    .restart local v2    # "index":I
    :cond_1
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->initializeContentListener()V

    .line 70
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v5}, Ljavafx/scene/control/SplitPane;->getDividers()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/SplitPane$Divider;

    move-object v4, v5

    .line 71
    .local v4, "d":Ljavafx/scene/control/SplitPane$Divider;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->addDivider(Ljavafx/scene/control/SplitPane$Divider;)V

    .line 72
    goto :goto_2

    .line 74
    .end local v4    # "d":Ljavafx/scene/control/SplitPane$Divider;
    :cond_2
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "ORIENTATION"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 75
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    const-string v7, "WIDTH"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 76
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    const-string v7, "HEIGHT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;)Z
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->checkDividerPos:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    return v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;)Z
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    return v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lambda$initializeContentListener$479(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lambda$initializeDivderEventHandlers$480(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lambda$initializeDivderEventHandlers$481(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lambda$initializeDivderEventHandlers$482(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private addContent(ILjavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "n":Ljavafx/scene/Node;
    new-instance v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;-><init>(Ljavafx/scene/Node;)V

    move-object v3, v4

    .line 81
    .local v3, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 82
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method private addDivider(Ljavafx/scene/control/SplitPane$Divider;)V
    .locals 10

    .prologue
    .line 212
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v2, p1

    .local v2, "d":Ljavafx/scene/control/SplitPane$Divider;
    new-instance v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;-><init>(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Ljavafx/scene/control/SplitPane$Divider;)V

    move-object v3, v5

    .line 213
    .local v3, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane$Divider;->getPosition()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setInitialPos(D)V

    .line 214
    move-object v5, v3

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setDividerPos(D)V

    .line 215
    new-instance v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$PosPropertyListener;-><init>(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)V

    move-object v4, v5

    .line 216
    .local v4, "posPropertyListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<Ljava/lang/Number;>;"
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setPosPropertyListener(Ljavafx/beans/value/ChangeListener;)V

    .line 217
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/SplitPane$Divider;->positionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 218
    move-object v5, v1

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->initializeDivderEventHandlers(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)V

    .line 219
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 220
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 221
    return-void
.end method

.method private checkDividerPosition(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;DD)V
    .locals 38

    .prologue
    .line 148
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object/from16 v4, p1

    .local v4, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide/from16 v5, p2

    .local v5, "newPos":D
    move-wide/from16 v7, p4

    .local v7, "oldPos":D
    move-object/from16 v34, v4

    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v34

    move-wide/from16 v9, v34

    .line 149
    .local v9, "dividerWidth":D
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    invoke-direct/range {v34 .. v35}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getLeft(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-result-object v34

    move-object/from16 v11, v34

    .line 150
    .local v11, "left":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    invoke-direct/range {v34 .. v35}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getRight(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-result-object v34

    move-object/from16 v12, v34

    .line 151
    .local v12, "right":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v34, v11

    if-nez v34, :cond_2

    const-wide/16 v34, 0x0

    :goto_0
    move-wide/from16 v13, v34

    .line 152
    .local v13, "minLeft":D
    move-object/from16 v34, v12

    if-nez v34, :cond_4

    const-wide/16 v34, 0x0

    :goto_1
    move-wide/from16 v15, v34

    .line 153
    .local v15, "minRight":D
    move-object/from16 v34, v11

    if-nez v34, :cond_6

    const-wide/16 v34, 0x0

    .line 154
    :goto_2
    move-wide/from16 v17, v34

    .line 155
    .local v17, "maxLeft":D
    move-object/from16 v34, v12

    if-nez v34, :cond_9

    const-wide/16 v34, 0x0

    .line 156
    :goto_3
    move-wide/from16 v19, v34

    .line 158
    .local v19, "maxRight":D
    const-wide/16 v34, 0x0

    move-wide/from16 v21, v34

    .line 159
    .local v21, "previousDividerPos":D
    move-object/from16 v34, v3

    invoke-direct/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSize()D

    move-result-wide v34

    move-wide/from16 v23, v34

    .line 160
    .local v23, "nextDividerPos":D
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v34, v0

    move-object/from16 v35, v4

    invoke-interface/range {v34 .. v35}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v34

    move/from16 v25, v34

    .line 162
    .local v25, "index":I
    move/from16 v34, v25

    const/16 v35, 0x1

    add-int/lit8 v34, v34, -0x1

    if-ltz v34, :cond_0

    .line 163
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v34, v0

    move/from16 v35, v25

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    invoke-interface/range {v34 .. v35}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getDividerPos()D

    move-result-wide v34

    move-wide/from16 v21, v34

    .line 164
    move-wide/from16 v34, v21

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    cmpl-double v34, v34, v36

    if-nez v34, :cond_0

    .line 166
    move-object/from16 v34, v3

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v35, v0

    move/from16 v36, v25

    const/16 v37, 0x1

    add-int/lit8 v36, v36, -0x1

    invoke-interface/range {v35 .. v36}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    invoke-direct/range {v34 .. v35}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)D

    move-result-wide v34

    move-wide/from16 v21, v34

    .line 169
    :cond_0
    move/from16 v34, v25

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljavafx/collections/ObservableList;->size()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    .line 170
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v34, v0

    move/from16 v35, v25

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    invoke-interface/range {v34 .. v35}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getDividerPos()D

    move-result-wide v34

    move-wide/from16 v23, v34

    .line 171
    move-wide/from16 v34, v23

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    cmpl-double v34, v34, v36

    if-nez v34, :cond_1

    .line 173
    move-object/from16 v34, v3

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v35, v0

    move/from16 v36, v25

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    invoke-interface/range {v35 .. v36}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    invoke-direct/range {v34 .. v35}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)D

    move-result-wide v34

    move-wide/from16 v23, v34

    .line 178
    :cond_1
    move-object/from16 v34, v3

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->checkDividerPos:Z

    .line 179
    move-wide/from16 v34, v5

    move-wide/from16 v36, v7

    cmpl-double v34, v34, v36

    if-lez v34, :cond_f

    .line 180
    move-wide/from16 v34, v21

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-nez v34, :cond_c

    move-wide/from16 v34, v17

    :goto_4
    move-wide/from16 v26, v34

    .line 181
    .local v26, "max":D
    move-wide/from16 v34, v23

    move-wide/from16 v36, v15

    sub-double v34, v34, v36

    move-wide/from16 v36, v9

    sub-double v34, v34, v36

    move-wide/from16 v28, v34

    .line 182
    .local v28, "min":D
    move-wide/from16 v34, v26

    move-wide/from16 v36, v28

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->min(DD)D

    move-result-wide v34

    move-wide/from16 v30, v34

    .line 183
    .local v30, "stopPos":D
    move-wide/from16 v34, v5

    move-wide/from16 v36, v30

    cmpl-double v34, v34, v36

    if-ltz v34, :cond_d

    .line 184
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-wide/from16 v36, v30

    invoke-direct/range {v34 .. v37}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    .line 193
    .line 208
    :goto_5
    move-object/from16 v34, v3

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->checkDividerPos:Z

    .line 209
    return-void

    .line 151
    .end local v13    # "minLeft":D
    .end local v15    # "minRight":D
    .end local v17    # "maxLeft":D
    .end local v19    # "maxRight":D
    .end local v21    # "previousDividerPos":D
    .end local v23    # "nextDividerPos":D
    .end local v25    # "index":I
    .end local v26    # "max":D
    .end local v28    # "min":D
    .end local v30    # "stopPos":D
    :cond_2
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v34, v0

    if-eqz v34, :cond_3

    move-object/from16 v34, v11

    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v34

    goto/16 :goto_0

    :cond_3
    move-object/from16 v34, v11

    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v34

    goto/16 :goto_0

    .line 152
    .restart local v13    # "minLeft":D
    :cond_4
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v34, v0

    if-eqz v34, :cond_5

    move-object/from16 v34, v12

    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v34

    goto/16 :goto_1

    :cond_5
    move-object/from16 v34, v12

    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v34

    goto/16 :goto_1

    .line 153
    .restart local v15    # "minRight":D
    :cond_6
    move-object/from16 v34, v11

    .line 154
    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getContent()Ljavafx/scene/Node;

    move-result-object v34

    if-eqz v34, :cond_8

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v34, v0

    if-eqz v34, :cond_7

    move-object/from16 v34, v11

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getContent()Ljavafx/scene/Node;

    move-result-object v34

    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v34 .. v36}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v34

    goto/16 :goto_2

    :cond_7
    move-object/from16 v34, v11

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getContent()Ljavafx/scene/Node;

    move-result-object v34

    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v34 .. v36}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v34

    goto/16 :goto_2

    :cond_8
    const-wide/16 v34, 0x0

    goto/16 :goto_2

    .line 155
    .restart local v17    # "maxLeft":D
    :cond_9
    move-object/from16 v34, v12

    .line 156
    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getContent()Ljavafx/scene/Node;

    move-result-object v34

    if-eqz v34, :cond_b

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v34, v0

    if-eqz v34, :cond_a

    move-object/from16 v34, v12

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getContent()Ljavafx/scene/Node;

    move-result-object v34

    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v34 .. v36}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v34

    goto/16 :goto_3

    :cond_a
    move-object/from16 v34, v12

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getContent()Ljavafx/scene/Node;

    move-result-object v34

    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v34 .. v36}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v34

    goto/16 :goto_3

    :cond_b
    const-wide/16 v34, 0x0

    goto/16 :goto_3

    .line 180
    .restart local v19    # "maxRight":D
    .restart local v21    # "previousDividerPos":D
    .restart local v23    # "nextDividerPos":D
    .restart local v25    # "index":I
    :cond_c
    move-wide/from16 v34, v21

    move-wide/from16 v36, v9

    add-double v34, v34, v36

    move-wide/from16 v36, v17

    add-double v34, v34, v36

    goto/16 :goto_4

    .line 186
    .restart local v26    # "max":D
    .restart local v28    # "min":D
    .restart local v30    # "stopPos":D
    :cond_d
    move-wide/from16 v34, v23

    move-wide/from16 v36, v19

    sub-double v34, v34, v36

    move-wide/from16 v36, v9

    sub-double v34, v34, v36

    move-wide/from16 v32, v34

    .line 187
    .local v32, "rightMax":D
    move-wide/from16 v34, v5

    move-wide/from16 v36, v32

    cmpg-double v34, v34, v36

    if-gtz v34, :cond_e

    .line 188
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-wide/from16 v36, v32

    invoke-direct/range {v34 .. v37}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    goto/16 :goto_5

    .line 190
    :cond_e
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-wide/from16 v36, v5

    invoke-direct/range {v34 .. v37}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    goto/16 :goto_5

    .line 194
    .end local v26    # "max":D
    .end local v28    # "min":D
    .end local v30    # "stopPos":D
    .end local v32    # "rightMax":D
    :cond_f
    move-wide/from16 v34, v23

    move-wide/from16 v36, v19

    sub-double v34, v34, v36

    move-wide/from16 v36, v9

    sub-double v34, v34, v36

    move-wide/from16 v26, v34

    .line 195
    .restart local v26    # "max":D
    move-wide/from16 v34, v21

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-nez v34, :cond_10

    move-wide/from16 v34, v13

    :goto_6
    move-wide/from16 v28, v34

    .line 196
    .restart local v28    # "min":D
    move-wide/from16 v34, v26

    move-wide/from16 v36, v28

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    move-wide/from16 v30, v34

    .line 197
    .restart local v30    # "stopPos":D
    move-wide/from16 v34, v5

    move-wide/from16 v36, v30

    cmpg-double v34, v34, v36

    if-gtz v34, :cond_11

    .line 198
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-wide/from16 v36, v30

    invoke-direct/range {v34 .. v37}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    goto/16 :goto_5

    .line 195
    .end local v28    # "min":D
    .end local v30    # "stopPos":D
    :cond_10
    move-wide/from16 v34, v21

    move-wide/from16 v36, v13

    add-double v34, v34, v36

    move-wide/from16 v36, v9

    add-double v34, v34, v36

    goto :goto_6

    .line 200
    .restart local v28    # "min":D
    .restart local v30    # "stopPos":D
    :cond_11
    move-wide/from16 v34, v21

    move-wide/from16 v36, v17

    add-double v34, v34, v36

    move-wide/from16 v36, v9

    add-double v34, v34, v36

    move-wide/from16 v32, v34

    .line 201
    .local v32, "leftMax":D
    move-wide/from16 v34, v5

    move-wide/from16 v36, v32

    cmpl-double v34, v34, v36

    if-ltz v34, :cond_12

    .line 202
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-wide/from16 v36, v32

    invoke-direct/range {v34 .. v37}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    goto/16 :goto_5

    .line 204
    :cond_12
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-wide/from16 v36, v5

    invoke-direct/range {v34 .. v37}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    goto/16 :goto_5
.end method

.method private distributeFrom(DLjava/util/List;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-wide v1, p1

    .local v1, "size":D
    move-object/from16 v3, p3

    .local v3, "available":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 426
    move-wide v8, v1

    move-wide v0, v8

    .line 464
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :goto_0
    return-wide v0

    .line 429
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_0
    move-object v8, v0

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->snapSize(D)D

    move-result-wide v8

    move-wide v1, v8

    .line 430
    move-wide v8, v1

    double-to-int v8, v8

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/2addr v8, v9

    move v4, v8

    .line 433
    .local v4, "portion":I
    :goto_1
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_6

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 434
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    .line 435
    .local v6, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    :goto_2
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 436
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object v7, v8

    .line 438
    .local v7, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move v8, v4

    int-to-double v8, v8

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    .line 439
    move-object v8, v7

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v9

    move-object v11, v7

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 440
    move-wide v8, v1

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v1, v8

    .line 441
    move-object v8, v7

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 442
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 449
    :goto_3
    move-wide v8, v1

    double-to-int v8, v8

    if-nez v8, :cond_2

    .line 450
    move-wide v8, v1

    move-wide v0, v8

    goto :goto_0

    .line 445
    :cond_1
    move-object v8, v7

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v9

    move v11, v4

    int-to-double v11, v11

    sub-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 446
    move-object v8, v7

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v9

    move v11, v4

    int-to-double v11, v11

    sub-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 447
    move-wide v8, v1

    move v10, v4

    int-to-double v10, v10

    sub-double/2addr v8, v10

    move-wide v1, v8

    goto :goto_3

    .line 452
    :cond_2
    goto :goto_2

    .line 453
    .end local v7    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_3
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 455
    move-wide v8, v1

    move-wide v0, v8

    goto/16 :goto_0

    .line 457
    :cond_4
    move-wide v8, v1

    double-to-int v8, v8

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/2addr v8, v9

    move v4, v8

    .line 458
    move-wide v8, v1

    double-to-int v8, v8

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v8, v9

    move v5, v8

    .line 459
    .local v5, "remainder":I
    move v8, v4

    if-nez v8, :cond_5

    move v8, v5

    if-eqz v8, :cond_5

    .line 460
    move v8, v5

    move v4, v8

    .line 461
    const/4 v8, 0x0

    move v5, v8

    .line 463
    :cond_5
    goto/16 :goto_1

    .line 464
    .end local v5    # "remainder":I
    .end local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    :cond_6
    move-wide v8, v1

    move-wide v0, v8

    goto/16 :goto_0
.end method

.method private distributeTo(Ljava/util/List;D)D
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;",
            ">;D)D"
        }
    .end annotation

    .prologue
    .line 371
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object/from16 v1, p1

    .local v1, "available":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    move-wide/from16 v2, p2

    .local v2, "size":D
    move-object v12, v1

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 372
    move-wide v12, v2

    move-wide v0, v12

    .line 419
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :goto_0
    return-wide v0

    .line 375
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_0
    move-object v12, v0

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->snapSize(D)D

    move-result-wide v12

    move-wide v2, v12

    .line 376
    move-wide v12, v2

    double-to-int v12, v12

    move-object v13, v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    div-int/2addr v12, v13

    move v4, v12

    .line 379
    .local v4, "portion":I
    :goto_1
    move-wide v12, v2

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_9

    move-object v12, v1

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 380
    move-object v12, v1

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v6, v12

    .line 381
    .local v6, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    :goto_2
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 382
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object v7, v12

    .line 383
    .local v7, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v12, v0

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v12, :cond_1

    move-object v12, v7

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->maxWidth(D)D

    move-result-wide v12

    :goto_3
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    move-wide v8, v12

    .line 384
    .local v8, "max":D
    move-object v12, v0

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v12, :cond_2

    move-object v12, v7

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v12

    :goto_4
    move-wide v10, v12

    .line 387
    .local v10, "min":D
    move-object v12, v7

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v12

    move-wide v14, v8

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_3

    .line 388
    move-object v12, v7

    move-object v13, v7

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v13

    move-wide v15, v10

    sub-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 389
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 390
    goto :goto_2

    .line 383
    .end local v8    # "max":D
    .end local v10    # "min":D
    :cond_1
    move-object v12, v7

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->maxHeight(D)D

    move-result-wide v12

    goto :goto_3

    .line 384
    .restart local v8    # "max":D
    :cond_2
    move-object v12, v7

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v12

    goto :goto_4

    .line 393
    .restart local v10    # "min":D
    :cond_3
    move v12, v4

    int-to-double v12, v12

    move-wide v14, v8

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v16

    sub-double v14, v14, v16

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_4

    .line 394
    move-wide v12, v2

    move-wide v14, v8

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v16

    sub-double v14, v14, v16

    sub-double/2addr v12, v14

    move-wide v2, v12

    .line 395
    move-object v12, v7

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 396
    move-object v12, v7

    move-wide v13, v8

    move-wide v15, v10

    sub-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 397
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 404
    :goto_5
    move-wide v12, v2

    double-to-int v12, v12

    if-nez v12, :cond_5

    .line 405
    move-wide v12, v2

    move-wide v0, v12

    goto/16 :goto_0

    .line 400
    :cond_4
    move-object v12, v7

    move-object v13, v7

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v13

    move v15, v4

    int-to-double v15, v15

    add-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 401
    move-object v12, v7

    move-object v13, v7

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v13

    move-wide v15, v10

    sub-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 402
    move-wide v12, v2

    move v14, v4

    int-to-double v14, v14

    sub-double/2addr v12, v14

    move-wide v2, v12

    goto :goto_5

    .line 407
    :cond_5
    goto/16 :goto_2

    .line 408
    .end local v7    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .end local v8    # "max":D
    .end local v10    # "min":D
    :cond_6
    move-object v12, v1

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 410
    move-wide v12, v2

    move-wide v0, v12

    goto/16 :goto_0

    .line 412
    :cond_7
    move-wide v12, v2

    double-to-int v12, v12

    move-object v13, v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    div-int/2addr v12, v13

    move v4, v12

    .line 413
    move-wide v12, v2

    double-to-int v12, v12

    move-object v13, v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    rem-int/2addr v12, v13

    move v5, v12

    .line 414
    .local v5, "remainder":I
    move v12, v4

    if-nez v12, :cond_8

    move v12, v5

    if-eqz v12, :cond_8

    .line 415
    move v12, v5

    move v4, v12

    .line 416
    const/4 v12, 0x0

    move v5, v12

    .line 418
    :cond_8
    goto/16 :goto_1

    .line 419
    .end local v5    # "remainder":I
    .end local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    :cond_9
    move-wide v12, v2

    move-wide v0, v12

    goto/16 :goto_0
.end method

.method private getAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)D
    .locals 10

    .prologue
    .line 319
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v2, p1

    .local v2, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane;->getWidth()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane;->getHeight()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    move-object v6, v2

    if-eqz v6, :cond_0

    .line 320
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getDivider()Ljavafx/scene/control/SplitPane$Divider;

    move-result-object v6

    move-object v3, v6

    .line 321
    .local v3, "paneDivider":Ljavafx/scene/control/SplitPane$Divider;
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/SplitPane$Divider;->getPosition()D

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->posToDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)D

    move-result-wide v6

    move-wide v4, v6

    .line 322
    .local v4, "newPos":D
    move-object v6, v2

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setDividerPos(D)V

    .line 323
    move-wide v6, v4

    move-wide v1, v6

    .line 325
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    .end local v3    # "paneDivider":Ljavafx/scene/control/SplitPane$Divider;
    .end local v4    # "newPos":D
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_0
    const-wide/16 v6, 0x0

    move-wide v1, v6

    goto :goto_0
.end method

.method private getLeft(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .locals 5

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, p1

    .local v1, "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 270
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 271
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object v0, v3

    .line 273
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private getRight(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, p1

    .local v1, "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 278
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 279
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object v0, v3

    .line 281
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private getSize()D
    .locals 8

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/SplitPane;

    move-object v1, v4

    .line 355
    .local v1, "s":Ljavafx/scene/control/SplitPane;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->totalMinSize()D

    move-result-wide v4

    move-wide v2, v4

    .line 356
    .local v2, "size":D
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v4, :cond_1

    .line 357
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/SplitPane;->getWidth()D

    move-result-wide v4

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 358
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/SplitPane;->getWidth()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->snappedLeftInset()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->snappedRightInset()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-wide v2, v4

    .line 365
    :cond_0
    :goto_0
    move-wide v4, v2

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    return-wide v0

    .line 361
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/SplitPane;->getHeight()D

    move-result-wide v4

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 362
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/SplitPane;->getHeight()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->snappedTopInset()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->snappedBottomInset()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-wide v2, v4

    goto :goto_0
.end method

.method private initializeContentListener()V
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v1}, Ljavafx/scene/control/SplitPane;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 128
    return-void
.end method

.method private initializeDivderEventHandlers(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)V
    .locals 5

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, p1

    .local v1, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$$Lambda$2;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 241
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 254
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 266
    return-void
.end method

.method private synthetic lambda$initializeContentListener$479(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 98
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->wasUpdated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 104
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 105
    const/4 v5, 0x0

    move v2, v5

    .line 106
    .local v2, "index":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v4, v5

    .line 107
    .local v4, "n":Ljavafx/scene/Node;
    move-object v5, v0

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->addContent(ILjavafx/scene/Node;)V

    .line 108
    goto :goto_1

    .line 110
    .end local v4    # "n":Ljavafx/scene/Node;
    :cond_1
    goto :goto_0

    .line 111
    .end local v2    # "index":I
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_2
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v3, v5

    .line 112
    .local v3, "n":Ljavafx/scene/Node;
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->removeContent(Ljavafx/scene/Node;)V

    .line 113
    goto :goto_2

    .line 115
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    move v2, v5

    .line 116
    .restart local v2    # "index":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_3
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v4, v5

    .line 117
    .restart local v4    # "n":Ljavafx/scene/Node;
    move-object v5, v0

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->addContent(ILjavafx/scene/Node;)V

    .line 118
    goto :goto_3

    .line 119
    .end local v4    # "n":Ljavafx/scene/Node;
    :cond_4
    goto/16 :goto_0

    .line 123
    .end local v2    # "index":I
    :cond_5
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->removeAllDividers()V

    .line 124
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v5}, Ljavafx/scene/control/SplitPane;->getDividers()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_4
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/SplitPane$Divider;

    move-object v3, v5

    .line 125
    .local v3, "d":Ljavafx/scene/control/SplitPane$Divider;
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->addDivider(Ljavafx/scene/control/SplitPane$Divider;)V

    .line 126
    goto :goto_4

    .line 127
    .end local v3    # "d":Ljavafx/scene/control/SplitPane$Divider;
    :cond_6
    return-void
.end method

.method private static synthetic lambda$initializeDivderEventHandlers$480(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "event":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 239
    return-void
.end method

.method private synthetic lambda$initializeDivderEventHandlers$481(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, p1

    .local v1, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v2, p2

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v3, :cond_1

    .line 243
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getDividerPos()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setInitialPos(D)V

    .line 244
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setPressPos(D)V

    .line 245
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v4}, Ljavafx/scene/control/SplitPane;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v4, v5, :cond_0

    move-object v4, v0

    .line 246
    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v4}, Ljavafx/scene/control/SplitPane;->getWidth()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 245
    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setPressPos(D)V

    .line 251
    :goto_1
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 252
    return-void

    .line 246
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v4

    goto :goto_0

    .line 248
    :cond_1
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getDividerPos()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setInitialPos(D)V

    .line 249
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setPressPos(D)V

    goto :goto_1
.end method

.method private synthetic lambda$initializeDivderEventHandlers$482(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Ljavafx/scene/input/MouseEvent;)V
    .locals 12

    .prologue
    .line 255
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v2, p1

    .local v2, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v3, p2

    .local v3, "e":Ljavafx/scene/input/MouseEvent;
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 256
    .local v4, "delta":D
    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v6, :cond_1

    .line 257
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v6, v7, :cond_0

    move-object v6, v1

    .line 258
    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane;->getWidth()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    :goto_0
    move-wide v4, v6

    .line 262
    :goto_1
    move-wide v6, v4

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getPressPos()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 263
    move-object v6, v1

    move-object v7, v2

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getInitialPos()D

    move-result-wide v8

    move-wide v10, v4

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAndCheckAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    .line 264
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 265
    return-void

    .line 258
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v6

    goto :goto_0

    .line 260
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v6

    move-wide v4, v6

    goto :goto_1
.end method

.method private layoutDividersAndContent(DD)V
    .locals 29

    .prologue
    .line 507
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "height":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->snappedLeftInset()D

    move-result-wide v14

    move-wide v6, v14

    .line 508
    .local v6, "paddingX":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->snappedTopInset()D

    move-result-wide v14

    move-wide v8, v14

    .line 509
    .local v8, "paddingY":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    const-wide/16 v14, 0x0

    :goto_0
    move-wide v10, v14

    .line 511
    .local v10, "dividerWidth":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v12, v14

    :goto_1
    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object v13, v14

    .line 513
    .local v13, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v14, v1

    iget-boolean v14, v14, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v14, :cond_1

    .line 514
    move-object v14, v13

    move-object v15, v13

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v15

    move-wide/from16 v17, v4

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setClipSize(DD)V

    .line 515
    move-object v14, v1

    move-object v15, v13

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getX()D

    move-result-wide v16

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getY()D

    move-result-wide v18

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v20

    move-wide/from16 v22, v4

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 522
    :goto_2
    goto :goto_1

    .line 509
    .end local v10    # "dividerWidth":D
    .end local v13    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_0
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v14

    goto :goto_0

    .line 518
    .restart local v10    # "dividerWidth":D
    .restart local v13    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_1
    move-object v14, v13

    move-wide v15, v2

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v17

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setClipSize(DD)V

    .line 519
    move-object v14, v1

    move-object v15, v13

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getX()D

    move-result-wide v16

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getY()D

    move-result-wide v18

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v20, v2

    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    goto :goto_2

    .line 523
    .end local v13    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_2
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v12, v14

    :goto_3
    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v14, v12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object v13, v14

    .line 525
    .local v13, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v14, v1

    iget-boolean v14, v14, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v14, :cond_3

    .line 526
    move-object v14, v13

    move-wide v15, v10

    move-wide/from16 v17, v4

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->resize(DD)V

    .line 527
    move-object v14, v1

    move-object v15, v13

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getX()D

    move-result-wide v16

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getY()D

    move-result-wide v18

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v20, v10

    move-wide/from16 v22, v4

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 534
    :goto_4
    goto :goto_3

    .line 530
    :cond_3
    move-object v14, v13

    move-wide v15, v2

    move-wide/from16 v17, v10

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->resize(DD)V

    .line 531
    move-object v14, v1

    move-object v15, v13

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getX()D

    move-result-wide v16

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getY()D

    move-result-wide v18

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v20, v2

    move-wide/from16 v22, v10

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    goto :goto_4

    .line 535
    .end local v13    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    :cond_4
    return-void
.end method

.method private posToDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)D
    .locals 12

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, p1

    .local v1, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v2, p2

    .local v2, "pos":D
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSize()D

    move-result-wide v6

    move-wide v8, v2

    mul-double/2addr v6, v8

    move-wide v4, v6

    .line 332
    .local v4, "newPos":D
    move-wide v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 333
    move-wide v6, v4

    move-object v8, v1

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 337
    :goto_0
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    return-wide v0

    .line 335
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_0
    move-wide v6, v4

    move-object v8, v1

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    move-wide v4, v6

    goto :goto_0
.end method

.method private removeAllDividers()V
    .locals 5

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    move-object v1, v3

    .line 225
    .local v1, "dividers":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;>;"
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object v2, v3

    .line 227
    .local v2, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 228
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getDivider()Ljavafx/scene/control/SplitPane$Divider;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/SplitPane$Divider;->positionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getPosPropertyListener()Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 229
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 230
    goto :goto_0

    .line 231
    .end local v2    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lastDividerUpdate:I

    .line 232
    return-void
.end method

.method private removeContent(Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object v3, v4

    .line 87
    .local v3, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getContent()Ljavafx/scene/Node;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 89
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 90
    .line 93
    .end local v3    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_0
    return-void

    .line 92
    .restart local v3    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_1
    goto :goto_0
.end method

.method private setAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V
    .locals 16

    .prologue
    .line 300
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object/from16 v2, p1

    .local v2, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide/from16 v3, p2

    .local v3, "value":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v10}, Ljavafx/scene/control/SplitPane;->getWidth()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v10}, Ljavafx/scene/control/SplitPane;->getHeight()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    move-object v10, v2

    if-eqz v10, :cond_0

    .line 301
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getDivider()Ljavafx/scene/control/SplitPane$Divider;

    move-result-object v10

    move-object v5, v10

    .line 302
    .local v5, "paneDivider":Ljavafx/scene/control/SplitPane$Divider;
    move-object v10, v2

    move-wide v11, v3

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setDividerPos(D)V

    .line 303
    move-object v10, v1

    invoke-direct {v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSize()D

    move-result-wide v10

    move-wide v6, v10

    .line 304
    .local v6, "size":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 307
    move-wide v10, v3

    move-object v12, v2

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v8, v10

    .line 308
    .local v8, "pos":D
    move-object v10, v5

    move-wide v11, v8

    move-wide v13, v6

    div-double/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/SplitPane$Divider;->setPosition(D)V

    .line 309
    .line 313
    .end local v5    # "paneDivider":Ljavafx/scene/control/SplitPane$Divider;
    .end local v6    # "size":D
    .end local v8    # "pos":D
    :cond_0
    :goto_0
    return-void

    .line 310
    .restart local v5    # "paneDivider":Ljavafx/scene/control/SplitPane$Divider;
    .restart local v6    # "size":D
    :cond_1
    move-object v10, v5

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/SplitPane$Divider;->setPosition(D)V

    goto :goto_0
.end method

.method private setAndCheckAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V
    .locals 12

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v1, p1

    .local v1, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v2, p2

    .local v2, "value":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getDividerPos()D

    move-result-wide v6

    move-wide v4, v6

    .line 838
    .local v4, "oldPos":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    .line 839
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->checkDividerPosition(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;DD)V

    .line 840
    return-void
.end method

.method private setupContentAndDividerForLayout()V
    .locals 16

    .prologue
    .line 469
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    const-wide/16 v10, 0x0

    :goto_0
    move-wide v2, v10

    .line 470
    .local v2, "dividerWidth":D
    const-wide/16 v10, 0x0

    move-wide v4, v10

    .line 471
    .local v4, "startX":D
    const-wide/16 v10, 0x0

    move-wide v6, v10

    .line 472
    .local v6, "startY":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_1
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object v9, v10

    .line 473
    .local v9, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->resize:Z

    if-eqz v10, :cond_0

    move-object v10, v9

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->isResizableWithParent()Z

    move-result v10

    if-nez v10, :cond_0

    .line 474
    move-object v10, v9

    move-object v11, v9

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getResizableWithParentArea()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 477
    :cond_0
    move-object v10, v9

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setX(D)V

    .line 478
    move-object v10, v9

    move-wide v11, v6

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setY(D)V

    .line 479
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v10, :cond_2

    .line 480
    move-wide v10, v4

    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v12

    move-wide v14, v2

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v4, v10

    .line 484
    :goto_2
    goto :goto_1

    .line 469
    .end local v2    # "dividerWidth":D
    .end local v4    # "startX":D
    .end local v6    # "startY":D
    .end local v9    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v10

    goto :goto_0

    .line 482
    .restart local v2    # "dividerWidth":D
    .restart local v4    # "startX":D
    .restart local v6    # "startY":D
    .restart local v9    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_2
    move-wide v10, v6

    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v12

    move-wide v14, v2

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v6, v10

    goto :goto_2

    .line 486
    .end local v9    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_3
    const-wide/16 v10, 0x0

    move-wide v4, v10

    .line 487
    const-wide/16 v10, 0x0

    move-wide v6, v10

    .line 490
    move-object v10, v1

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->checkDividerPos:Z

    .line 491
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_3
    move v10, v8

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 492
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move v11, v8

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object v9, v10

    .line 493
    .local v9, "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v10, :cond_5

    .line 494
    move-wide v10, v4

    move-object v12, v1

    move-object v13, v9

    invoke-direct {v12, v13}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getLeft(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v12

    move v14, v8

    if-nez v14, :cond_4

    const-wide/16 v14, 0x0

    :goto_4
    add-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v4, v10

    .line 498
    :goto_5
    move-object v10, v9

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setX(D)V

    .line 499
    move-object v10, v9

    move-wide v11, v6

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setY(D)V

    .line 500
    move-object v10, v1

    move-object v11, v9

    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v12, :cond_7

    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getX()D

    move-result-wide v12

    :goto_6
    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    .line 501
    move-object v10, v9

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->access$102(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Z)Z

    move-result v10

    .line 491
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 494
    :cond_4
    move-wide v14, v2

    goto :goto_4

    .line 496
    :cond_5
    move-wide v10, v6

    move-object v12, v1

    move-object v13, v9

    invoke-direct {v12, v13}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getLeft(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v12

    move v14, v8

    if-nez v14, :cond_6

    const-wide/16 v14, 0x0

    :goto_7
    add-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v6, v10

    goto :goto_5

    :cond_6
    move-wide v14, v2

    goto :goto_7

    .line 500
    :cond_7
    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getY()D

    move-result-wide v12

    goto :goto_6

    .line 503
    .end local v9    # "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    :cond_8
    move-object v10, v1

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->checkDividerPos:Z

    .line 504
    return-void
.end method

.method private totalMinSize()D
    .locals 13

    .prologue
    .line 341
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    int-to-double v8, v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    :goto_0
    move-wide v2, v8

    .line 342
    .local v2, "dividerWidth":D
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 343
    .local v4, "minSize":D
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object v7, v8

    .line 344
    .local v7, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v8, v1

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    if-eqz v8, :cond_1

    .line 345
    move-wide v8, v4

    move-object v10, v7

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 349
    :goto_2
    goto :goto_1

    .line 341
    .end local v2    # "dividerWidth":D
    .end local v4    # "minSize":D
    .end local v7    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_0
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 347
    .restart local v2    # "dividerWidth":D
    .restart local v4    # "minSize":D
    .restart local v7    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_1
    move-wide v8, v4

    move-object v10, v7

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v4, v8

    goto :goto_2

    .line 350
    .end local v7    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_2
    move-wide v8, v4

    move-wide v10, v2

    add-double/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    return-wide v1
.end method


# virtual methods
.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 860
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
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
    const-wide/16 v18, 0x0

    move-wide/from16 v12, v18

    .line 861
    .local v12, "minHeight":D
    const-wide/16 v18, 0x0

    move-wide/from16 v14, v18

    .line 862
    .local v14, "maxMinHeight":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_0
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v17, v18

    .line 863
    .local v17, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide/from16 v18, v12

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 864
    move-wide/from16 v18, v14

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 865
    goto :goto_0

    .line 866
    .end local v17    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_0
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_1
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object/from16 v17, v18

    .line 867
    .local v17, "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide/from16 v18, v12

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 868
    goto :goto_1

    .line 869
    .end local v17    # "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    :cond_1
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 870
    move-wide/from16 v18, v14

    move-wide/from16 v20, v4

    add-double v18, v18, v20

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v1, v18

    .line 872
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :goto_2
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_2
    move-wide/from16 v18, v12

    move-wide/from16 v20, v4

    add-double v18, v18, v20

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v1, v18

    goto :goto_2
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 23

    .prologue
    .line 843
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
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
    const-wide/16 v18, 0x0

    move-wide/from16 v12, v18

    .line 844
    .local v12, "minWidth":D
    const-wide/16 v18, 0x0

    move-wide/from16 v14, v18

    .line 845
    .local v14, "maxMinWidth":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_0
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v17, v18

    .line 846
    .local v17, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide/from16 v18, v12

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 847
    move-wide/from16 v18, v14

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 848
    goto :goto_0

    .line 849
    .end local v17    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_0
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_1
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object/from16 v17, v18

    .line 850
    .local v17, "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide/from16 v18, v12

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 851
    goto :goto_1

    .line 852
    .end local v17    # "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    :cond_1
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 853
    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    add-double v18, v18, v20

    move-wide/from16 v1, v18

    .line 855
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :goto_2
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_2
    move-wide/from16 v18, v14

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    add-double v18, v18, v20

    move-wide/from16 v1, v18

    goto :goto_2
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 23

    .prologue
    .line 894
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
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
    const-wide/16 v18, 0x0

    move-wide/from16 v12, v18

    .line 895
    .local v12, "prefHeight":D
    const-wide/16 v18, 0x0

    move-wide/from16 v14, v18

    .line 896
    .local v14, "maxPrefHeight":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_0
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v17, v18

    .line 897
    .local v17, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide/from16 v18, v12

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->prefHeight(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 898
    move-wide/from16 v18, v14

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->prefHeight(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 899
    goto :goto_0

    .line 900
    .end local v17    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_0
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_1
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object/from16 v17, v18

    .line 901
    .local v17, "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide/from16 v18, v12

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 902
    goto :goto_1

    .line 903
    .end local v17    # "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    :cond_1
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 904
    move-wide/from16 v18, v14

    move-wide/from16 v20, v4

    add-double v18, v18, v20

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v1, v18

    .line 906
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :goto_2
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_2
    move-wide/from16 v18, v12

    move-wide/from16 v20, v4

    add-double v18, v18, v20

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v1, v18

    goto :goto_2
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 877
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
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
    const-wide/16 v18, 0x0

    move-wide/from16 v12, v18

    .line 878
    .local v12, "prefWidth":D
    const-wide/16 v18, 0x0

    move-wide/from16 v14, v18

    .line 879
    .local v14, "prefMaxWidth":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_0
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v17, v18

    .line 880
    .local v17, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide/from16 v18, v12

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->prefWidth(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 881
    move-wide/from16 v18, v14

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->prefWidth(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 882
    goto :goto_0

    .line 883
    .end local v17    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_0
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_1
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object/from16 v17, v18

    .line 884
    .local v17, "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide/from16 v18, v12

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 885
    goto :goto_1

    .line 886
    .end local v17    # "d":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    :cond_1
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 887
    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    add-double v18, v18, v20

    move-wide/from16 v1, v18

    .line 889
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :goto_2
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    :cond_2
    move-wide/from16 v18, v14

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    add-double v18, v18, v20

    move-wide/from16 v1, v18

    goto :goto_2
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 285
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v2, p1

    .local v2, "property":Ljava/lang/String;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 286
    const-string v5, "ORIENTATION"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 287
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    .line 288
    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->previousSize:D

    .line 289
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object v4, v5

    .line 290
    .local v4, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v5, v4

    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setGrabberStyle(Z)V

    .line 291
    goto :goto_1

    .line 287
    .end local v4    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 292
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v5}, Ljavafx/scene/control/SplitPane;->requestLayout()V

    .line 296
    :cond_2
    :goto_2
    return-void

    .line 293
    :cond_3
    const-string v5, "WIDTH"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "HEIGHT"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 294
    :cond_4
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/SplitPane;

    invoke-virtual {v5}, Ljavafx/scene/control/SplitPane;->requestLayout()V

    goto :goto_2
.end method

.method protected layoutChildren(DDDD)V
    .locals 47

    .prologue
    .line 544
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v40, v3

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v40

    check-cast v40, Ljavafx/scene/control/SplitPane;

    move-object/from16 v12, v40

    .line 545
    .local v12, "s":Ljavafx/scene/control/SplitPane;
    move-object/from16 v40, v12

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/control/SplitPane;->getWidth()D

    move-result-wide v40

    move-wide/from16 v13, v40

    .line 546
    .local v13, "sw":D
    move-object/from16 v40, v12

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/control/SplitPane;->getHeight()D

    move-result-wide v40

    move-wide/from16 v15, v40

    .line 548
    .local v15, "sh":D
    move-object/from16 v40, v12

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/control/SplitPane;->isVisible()Z

    move-result v40

    if-eqz v40, :cond_0

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1

    move-wide/from16 v40, v13

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-nez v40, :cond_2

    .line 551
    .line 834
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    move-wide/from16 v40, v15

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-eqz v40, :cond_0

    :cond_2
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    .line 550
    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 554
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_4

    const-wide/16 v40, 0x0

    :goto_1
    move-wide/from16 v17, v40

    .line 556
    .local v17, "dividerWidth":D
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->size()I

    move-result v40

    if-lez v40, :cond_17

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->previousSize:D

    move-wide/from16 v40, v0

    const-wide/high16 v42, -0x4010000000000000L    # -1.0

    cmpl-double v40, v40, v42

    if-eqz v40, :cond_17

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->previousSize:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v42, v0

    if-eqz v42, :cond_5

    move-wide/from16 v42, v13

    :goto_2
    cmpl-double v40, v40, v42

    if-eqz v40, :cond_17

    .line 558
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v46, v40

    move-object/from16 v40, v46

    move-object/from16 v41, v46

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v40

    .line 559
    .local v19, "resizeList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move-object/from16 v20, v40

    :goto_3
    move-object/from16 v40, v20

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_6

    move-object/from16 v40, v20

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v21, v40

    .line 560
    .local v21, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v40, v21

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->isResizableWithParent()Z

    move-result v40

    if-eqz v40, :cond_3

    .line 561
    move-object/from16 v40, v19

    move-object/from16 v41, v21

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v40

    .line 563
    :cond_3
    goto :goto_3

    .line 554
    .end local v17    # "dividerWidth":D
    .end local v19    # "resizeList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .end local v21    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_4
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-interface/range {v40 .. v41}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->prefWidth(D)D

    move-result-wide v40

    goto/16 :goto_1

    .line 556
    .restart local v17    # "dividerWidth":D
    :cond_5
    move-wide/from16 v42, v15

    goto :goto_2

    .line 565
    .restart local v19    # "resizeList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    :cond_6
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_9

    move-object/from16 v40, v12

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/control/SplitPane;->getWidth()D

    move-result-wide v40

    :goto_4
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->previousSize:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    move-wide/from16 v20, v40

    .line 566
    .local v20, "delta":D
    move-wide/from16 v40, v20

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-lez v40, :cond_a

    const/16 v40, 0x1

    :goto_5
    move/from16 v22, v40

    .line 568
    .local v22, "growing":Z
    move-wide/from16 v40, v20

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    move-wide/from16 v20, v40

    .line 570
    move-wide/from16 v40, v20

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-eqz v40, :cond_15

    move-object/from16 v40, v19

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_15

    .line 571
    move-wide/from16 v40, v20

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v40, v0

    move-object/from16 v41, v19

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v41

    div-int v40, v40, v41

    move/from16 v23, v40

    .line 572
    .local v23, "portion":I
    move-wide/from16 v40, v20

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v40, v0

    move-object/from16 v41, v19

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v41

    rem-int v40, v40, v41

    move/from16 v24, v40

    .line 573
    .local v24, "remainder":I
    const/16 v40, 0x0

    move/from16 v25, v40

    .line 574
    .local v25, "size":I
    move/from16 v40, v23

    if-nez v40, :cond_b

    .line 575
    move/from16 v40, v24

    move/from16 v23, v40

    .line 576
    move/from16 v40, v24

    move/from16 v25, v40

    .line 577
    const/16 v40, 0x0

    move/from16 v24, v40

    .line 582
    :goto_6
    move/from16 v40, v25

    if-lez v40, :cond_13

    move-object/from16 v40, v19

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_13

    .line 583
    move/from16 v40, v22

    if-eqz v40, :cond_c

    .line 584
    move-object/from16 v40, v3

    move-object/from16 v46, v40

    move-object/from16 v40, v46

    move-object/from16 v41, v46

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lastDividerUpdate:I

    move/from16 v41, v0

    const/16 v42, 0x1

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lastDividerUpdate:I

    .line 591
    :cond_7
    :goto_7
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lastDividerUpdate:I

    move/from16 v40, v0

    move-object/from16 v41, v3

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljavafx/collections/ObservableList;->size()I

    move-result v41

    rem-int v40, v40, v41

    move/from16 v26, v40

    .line 592
    .local v26, "id":I
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    move/from16 v41, v26

    invoke-interface/range {v40 .. v41}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v27, v40

    .line 593
    .local v27, "content":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v40, v27

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->isResizableWithParent()Z

    move-result v40

    if-eqz v40, :cond_8

    move-object/from16 v40, v19

    move-object/from16 v41, v27

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 594
    move-object/from16 v40, v27

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v40

    move-wide/from16 v28, v40

    .line 595
    .local v28, "area":D
    move/from16 v40, v22

    if-eqz v40, :cond_f

    .line 596
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_d

    move-object/from16 v40, v27

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->maxWidth(D)D

    move-result-wide v40

    :goto_8
    move-wide/from16 v30, v40

    .line 597
    .local v30, "max":D
    move-wide/from16 v40, v28

    move/from16 v42, v23

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    add-double v40, v40, v42

    move-wide/from16 v42, v30

    cmpg-double v40, v40, v42

    if-gtz v40, :cond_e

    .line 598
    move-wide/from16 v40, v28

    move/from16 v42, v23

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    add-double v40, v40, v42

    move-wide/from16 v28, v40

    .line 603
    .line 612
    .end local v30    # "max":D
    :goto_9
    move-object/from16 v40, v27

    move-wide/from16 v41, v28

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 613
    move/from16 v40, v25

    move/from16 v41, v23

    sub-int v40, v40, v41

    move/from16 v25, v40

    .line 614
    move/from16 v40, v25

    if-nez v40, :cond_12

    move/from16 v40, v24

    if-eqz v40, :cond_12

    .line 615
    move/from16 v40, v24

    move/from16 v23, v40

    .line 616
    move/from16 v40, v24

    move/from16 v25, v40

    .line 617
    const/16 v40, 0x0

    move/from16 v24, v40

    .line 622
    .end local v28    # "area":D
    :cond_8
    goto/16 :goto_6

    .line 565
    .end local v20    # "delta":D
    .end local v22    # "growing":Z
    .end local v23    # "portion":I
    .end local v24    # "remainder":I
    .end local v25    # "size":I
    .end local v26    # "id":I
    .end local v27    # "content":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_9
    move-object/from16 v40, v12

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/control/SplitPane;->getHeight()D

    move-result-wide v40

    goto/16 :goto_4

    .line 566
    .restart local v20    # "delta":D
    :cond_a
    const/16 v40, 0x0

    goto/16 :goto_5

    .line 579
    .restart local v22    # "growing":Z
    .restart local v23    # "portion":I
    .restart local v24    # "remainder":I
    .restart local v25    # "size":I
    :cond_b
    move/from16 v40, v23

    move-object/from16 v41, v19

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v41

    mul-int v40, v40, v41

    move/from16 v25, v40

    goto/16 :goto_6

    .line 586
    :cond_c
    move-object/from16 v40, v3

    move-object/from16 v46, v40

    move-object/from16 v40, v46

    move-object/from16 v41, v46

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lastDividerUpdate:I

    move/from16 v41, v0

    const/16 v42, 0x1

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lastDividerUpdate:I

    .line 587
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lastDividerUpdate:I

    move/from16 v40, v0

    if-gez v40, :cond_7

    .line 588
    move-object/from16 v40, v3

    move-object/from16 v41, v3

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljavafx/collections/ObservableList;->size()I

    move-result v41

    const/16 v42, 0x1

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->lastDividerUpdate:I

    goto/16 :goto_7

    .line 596
    .restart local v26    # "id":I
    .restart local v27    # "content":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .restart local v28    # "area":D
    :cond_d
    move-object/from16 v40, v27

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->maxHeight(D)D

    move-result-wide v40

    goto/16 :goto_8

    .line 600
    .restart local v30    # "max":D
    :cond_e
    move-object/from16 v40, v19

    move-object/from16 v41, v27

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v40

    .line 601
    goto/16 :goto_6

    .line 604
    .end local v30    # "max":D
    :cond_f
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_10

    move-object/from16 v40, v27

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v40

    :goto_a
    move-wide/from16 v30, v40

    .line 605
    .local v30, "min":D
    move-wide/from16 v40, v28

    move/from16 v42, v23

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    move-wide/from16 v42, v30

    cmpl-double v40, v40, v42

    if-ltz v40, :cond_11

    .line 606
    move-wide/from16 v40, v28

    move/from16 v42, v23

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    move-wide/from16 v28, v40

    goto/16 :goto_9

    .line 604
    .end local v30    # "min":D
    :cond_10
    move-object/from16 v40, v27

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v40

    goto :goto_a

    .line 608
    .restart local v30    # "min":D
    :cond_11
    move-object/from16 v40, v19

    move-object/from16 v41, v27

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v40

    .line 609
    goto/16 :goto_6

    .line 618
    .end local v30    # "min":D
    :cond_12
    move/from16 v40, v25

    if-nez v40, :cond_8

    .line 619
    .line 627
    .end local v26    # "id":I
    .end local v27    # "content":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .end local v28    # "area":D
    :cond_13
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move-object/from16 v26, v40

    :goto_b
    move-object/from16 v40, v26

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_14

    move-object/from16 v40, v26

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v27, v40

    .line 628
    .local v27, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v40, v27

    move-object/from16 v41, v27

    invoke-virtual/range {v41 .. v41}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v41

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setResizableWithParentArea(D)V

    .line 629
    move-object/from16 v40, v27

    const-wide/16 v41, 0x0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 630
    goto :goto_b

    .line 632
    .end local v27    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_14
    move-object/from16 v40, v3

    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->resize:Z

    .line 635
    .end local v23    # "portion":I
    .end local v24    # "remainder":I
    .end local v25    # "size":I
    :cond_15
    move-object/from16 v40, v3

    move-object/from16 v41, v3

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v41, v0

    if-eqz v41, :cond_16

    move-wide/from16 v41, v13

    :goto_c
    move-wide/from16 v0, v41

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->previousSize:D

    .line 636
    .line 642
    .end local v19    # "resizeList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .end local v20    # "delta":D
    .end local v22    # "growing":Z
    :goto_d
    move-object/from16 v40, v3

    invoke-direct/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->totalMinSize()D

    move-result-wide v40

    move-wide/from16 v19, v40

    .line 643
    .local v19, "minSize":D
    move-wide/from16 v40, v19

    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v42, v0

    if-eqz v42, :cond_19

    move-wide/from16 v42, v8

    :goto_e
    cmpl-double v40, v40, v42

    if-lez v40, :cond_1d

    .line 644
    const-wide/16 v40, 0x0

    move-wide/from16 v21, v40

    .line 645
    .local v21, "percentage":D
    const/16 v40, 0x0

    move/from16 v23, v40

    .local v23, "i":I
    :goto_f
    move/from16 v40, v23

    move-object/from16 v41, v3

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljavafx/collections/ObservableList;->size()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_1c

    .line 646
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    move/from16 v41, v23

    invoke-interface/range {v40 .. v41}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v24, v40

    .line 647
    .local v24, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1a

    move-object/from16 v40, v24

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v40

    :goto_10
    move-wide/from16 v25, v40

    .line 648
    .local v25, "min":D
    move-wide/from16 v40, v25

    move-wide/from16 v42, v19

    div-double v40, v40, v42

    move-wide/from16 v21, v40

    .line 649
    move-object/from16 v40, v24

    move-object/from16 v41, v3

    move-wide/from16 v42, v21

    move-object/from16 v44, v3

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1b

    move-wide/from16 v44, v8

    :goto_11
    mul-double v42, v42, v44

    invoke-virtual/range {v41 .. v43}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->snapSpace(D)D

    move-result-wide v41

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 650
    move-object/from16 v40, v24

    const-wide/16 v41, 0x0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 645
    add-int/lit8 v23, v23, 0x1

    goto :goto_f

    .line 635
    .end local v21    # "percentage":D
    .end local v23    # "i":I
    .end local v24    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .end local v25    # "min":D
    .local v19, "resizeList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .restart local v20    # "delta":D
    .restart local v22    # "growing":Z
    :cond_16
    move-wide/from16 v41, v15

    goto/16 :goto_c

    .line 637
    .end local v19    # "resizeList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .end local v20    # "delta":D
    .end local v22    # "growing":Z
    :cond_17
    move-object/from16 v40, v3

    move-object/from16 v41, v3

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v41, v0

    if-eqz v41, :cond_18

    move-wide/from16 v41, v13

    :goto_12
    move-wide/from16 v0, v41

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->previousSize:D

    goto/16 :goto_d

    :cond_18
    move-wide/from16 v41, v15

    goto :goto_12

    .line 643
    .local v19, "minSize":D
    :cond_19
    move-wide/from16 v42, v10

    goto/16 :goto_e

    .line 647
    .restart local v21    # "percentage":D
    .restart local v23    # "i":I
    .restart local v24    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_1a
    move-object/from16 v40, v24

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v40

    goto :goto_10

    .line 649
    .restart local v25    # "min":D
    :cond_1b
    move-wide/from16 v44, v10

    goto :goto_11

    .line 652
    .end local v24    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .end local v25    # "min":D
    :cond_1c
    move-object/from16 v40, v3

    invoke-direct/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setupContentAndDividerForLayout()V

    .line 653
    move-object/from16 v40, v3

    move-wide/from16 v41, v8

    move-wide/from16 v43, v10

    invoke-direct/range {v40 .. v44}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->layoutDividersAndContent(DD)V

    .line 654
    move-object/from16 v40, v3

    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->resize:Z

    .line 655
    goto/16 :goto_0

    .line 658
    .end local v21    # "percentage":D
    .end local v23    # "i":I
    :cond_1d
    const/16 v40, 0x0

    move/from16 v21, v40

    .local v21, "trys":I
    :goto_13
    move/from16 v40, v21

    const/16 v41, 0xa

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_40

    .line 660
    const/16 v40, 0x0

    move-object/from16 v22, v40

    .line 661
    .local v22, "previousDivider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    const/16 v40, 0x0

    move-object/from16 v23, v40

    .line 662
    .local v23, "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    const/16 v40, 0x0

    move/from16 v24, v40

    .local v24, "i":I
    :goto_14
    move/from16 v40, v24

    move-object/from16 v41, v3

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljavafx/collections/ObservableList;->size()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_27

    .line 663
    const-wide/16 v40, 0x0

    move-wide/from16 v25, v40

    .line 664
    .local v25, "space":D
    move/from16 v40, v24

    move-object/from16 v41, v3

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljavafx/collections/ObservableList;->size()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_24

    .line 665
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    move/from16 v41, v24

    invoke-interface/range {v40 .. v41}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object/from16 v23, v40

    .line 666
    move-object/from16 v40, v23

    invoke-static/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->access$100(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Z

    move-result v40

    if-eqz v40, :cond_1e

    .line 667
    move-object/from16 v40, v3

    move-object/from16 v41, v23

    move-object/from16 v42, v3

    move-object/from16 v43, v23

    move-object/from16 v44, v23

    invoke-static/range {v44 .. v44}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->access$200(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Ljavafx/scene/control/SplitPane$Divider;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/control/SplitPane$Divider;->getPosition()D

    move-result-wide v44

    invoke-direct/range {v42 .. v45}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->posToDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)D

    move-result-wide v42

    move-object/from16 v44, v23

    .line 668
    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getDividerPos()D

    move-result-wide v44

    .line 667
    invoke-direct/range {v40 .. v45}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->checkDividerPosition(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;DD)V

    .line 670
    :cond_1e
    move/from16 v40, v24

    if-nez v40, :cond_22

    .line 672
    move-object/from16 v40, v3

    move-object/from16 v41, v23

    invoke-direct/range {v40 .. v41}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)D

    move-result-wide v40

    move-wide/from16 v25, v40

    .line 688
    :cond_1f
    :goto_15
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->resize:Z

    move/from16 v40, v0

    if-eqz v40, :cond_20

    move-object/from16 v40, v23

    invoke-static/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->access$100(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Z

    move-result v40

    if-eqz v40, :cond_21

    .line 689
    :cond_20
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    move/from16 v41, v24

    invoke-interface/range {v40 .. v41}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-wide/from16 v41, v25

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 691
    :cond_21
    move-object/from16 v40, v23

    move-object/from16 v22, v40

    .line 662
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_14

    .line 674
    :cond_22
    move-object/from16 v40, v3

    move-object/from16 v41, v22

    invoke-direct/range {v40 .. v41}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)D

    move-result-wide v40

    move-wide/from16 v42, v17

    add-double v40, v40, v42

    move-wide/from16 v27, v40

    .line 676
    .local v27, "newPos":D
    move-object/from16 v40, v3

    move-object/from16 v41, v23

    invoke-direct/range {v40 .. v41}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)D

    move-result-wide v40

    move-object/from16 v42, v3

    move-object/from16 v43, v22

    invoke-direct/range {v42 .. v43}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)D

    move-result-wide v42

    cmpg-double v40, v40, v42

    if-gtz v40, :cond_23

    .line 680
    move-object/from16 v40, v3

    move-object/from16 v41, v23

    move-wide/from16 v42, v27

    invoke-direct/range {v40 .. v43}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setAndCheckAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;D)V

    .line 682
    :cond_23
    move-object/from16 v40, v3

    move-object/from16 v41, v23

    invoke-direct/range {v40 .. v41}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)D

    move-result-wide v40

    move-wide/from16 v42, v27

    sub-double v40, v40, v42

    move-wide/from16 v25, v40

    .line 683
    goto :goto_15

    .line 684
    .end local v27    # "newPos":D
    :cond_24
    move/from16 v40, v24

    move-object/from16 v41, v3

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljavafx/collections/ObservableList;->size()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_1f

    .line 686
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_25

    move-wide/from16 v40, v8

    :goto_16
    move-object/from16 v42, v22

    if-eqz v42, :cond_26

    move-object/from16 v42, v3

    move-object/from16 v43, v22

    invoke-direct/range {v42 .. v43}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->getAbsoluteDividerPos(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)D

    move-result-wide v42

    move-wide/from16 v44, v17

    add-double v42, v42, v44

    :goto_17
    sub-double v40, v40, v42

    move-wide/from16 v25, v40

    goto/16 :goto_15

    :cond_25
    move-wide/from16 v40, v10

    goto :goto_16

    :cond_26
    const-wide/16 v42, 0x0

    goto :goto_17

    .line 699
    .end local v25    # "space":D
    :cond_27
    const-wide/16 v40, 0x0

    move-wide/from16 v24, v40

    .line 700
    .local v24, "spaceRequested":D
    const-wide/16 v40, 0x0

    move-wide/from16 v26, v40

    .line 701
    .local v26, "extraSpace":D
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move-object/from16 v28, v40

    :goto_18
    move-object/from16 v40, v28

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2d

    move-object/from16 v40, v28

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v29, v40

    .line 702
    .local v29, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    const-wide/16 v40, 0x0

    move-wide/from16 v30, v40

    .line 703
    .local v30, "max":D
    const-wide/16 v40, 0x0

    move-wide/from16 v32, v40

    .line 704
    .local v32, "min":D
    move-object/from16 v40, v29

    if-eqz v40, :cond_28

    .line 705
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_2b

    move-object/from16 v40, v29

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->maxWidth(D)D

    move-result-wide v40

    :goto_19
    move-wide/from16 v30, v40

    .line 706
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_2c

    move-object/from16 v40, v29

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v40

    :goto_1a
    move-wide/from16 v32, v40

    .line 709
    :cond_28
    move-object/from16 v40, v29

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v40

    move-wide/from16 v42, v30

    cmpl-double v40, v40, v42

    if-ltz v40, :cond_29

    .line 711
    move-wide/from16 v40, v26

    move-object/from16 v42, v29

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v42

    move-wide/from16 v44, v30

    sub-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v26, v40

    .line 712
    move-object/from16 v40, v29

    move-wide/from16 v41, v30

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 714
    :cond_29
    move-object/from16 v40, v29

    move-object/from16 v41, v29

    invoke-virtual/range {v41 .. v41}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v41

    move-wide/from16 v43, v32

    sub-double v41, v41, v43

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 715
    move-object/from16 v40, v29

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v40

    const-wide/16 v42, 0x0

    cmpg-double v40, v40, v42

    if-gez v40, :cond_2a

    .line 716
    move-wide/from16 v40, v24

    move-object/from16 v42, v29

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v42

    add-double v40, v40, v42

    move-wide/from16 v24, v40

    .line 718
    :cond_2a
    goto/16 :goto_18

    .line 705
    :cond_2b
    move-object/from16 v40, v29

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->maxHeight(D)D

    move-result-wide v40

    goto :goto_19

    .line 706
    :cond_2c
    move-object/from16 v40, v29

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v40

    goto :goto_1a

    .line 720
    .end local v29    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .end local v30    # "max":D
    .end local v32    # "min":D
    :cond_2d
    move-wide/from16 v40, v24

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    move-wide/from16 v24, v40

    .line 723
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v46, v40

    move-object/from16 v40, v46

    move-object/from16 v41, v46

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v40

    .line 724
    .local v28, "availableList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v46, v40

    move-object/from16 v40, v46

    move-object/from16 v41, v46

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v40

    .line 725
    .local v29, "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v46, v40

    move-object/from16 v40, v46

    move-object/from16 v41, v46

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v40

    .line 726
    .local v30, "spaceRequestor":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    const-wide/16 v40, 0x0

    move-wide/from16 v31, v40

    .line 727
    .local v31, "available":D
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move-object/from16 v33, v40

    :goto_1b
    move-object/from16 v40, v33

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_34

    move-object/from16 v40, v33

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v34, v40

    .line 728
    .local v34, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v40, v34

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v40

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-ltz v40, :cond_2e

    .line 729
    move-wide/from16 v40, v31

    move-object/from16 v42, v34

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v42

    add-double v40, v40, v42

    move-wide/from16 v31, v40

    .line 730
    move-object/from16 v40, v28

    move-object/from16 v41, v34

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v40

    .line 733
    :cond_2e
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->resize:Z

    move/from16 v40, v0

    if-eqz v40, :cond_2f

    move-object/from16 v40, v34

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->isResizableWithParent()Z

    move-result v40

    if-nez v40, :cond_2f

    .line 736
    move-object/from16 v40, v34

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v40

    move-object/from16 v42, v34

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getResizableWithParentArea()D

    move-result-wide v42

    cmpl-double v40, v40, v42

    if-ltz v40, :cond_32

    .line 737
    move-wide/from16 v40, v26

    move-object/from16 v42, v34

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v42

    move-object/from16 v44, v34

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getResizableWithParentArea()D

    move-result-wide v44

    sub-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v26, v40

    .line 743
    :goto_1c
    move-object/from16 v40, v34

    const-wide/16 v41, 0x0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 746
    :cond_2f
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->resize:Z

    move/from16 v40, v0

    if-eqz v40, :cond_33

    .line 747
    move-object/from16 v40, v34

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->isResizableWithParent()Z

    move-result v40

    if-eqz v40, :cond_30

    .line 748
    move-object/from16 v40, v29

    move-object/from16 v41, v34

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v40

    .line 754
    :cond_30
    :goto_1d
    move-object/from16 v40, v34

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v40

    const-wide/16 v42, 0x0

    cmpg-double v40, v40, v42

    if-gez v40, :cond_31

    .line 755
    move-object/from16 v40, v30

    move-object/from16 v41, v34

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v40

    .line 757
    :cond_31
    goto/16 :goto_1b

    .line 741
    :cond_32
    move-wide/from16 v40, v24

    move-object/from16 v42, v34

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getResizableWithParentArea()D

    move-result-wide v42

    move-object/from16 v44, v34

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v44

    sub-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v24, v40

    goto :goto_1c

    .line 751
    :cond_33
    move-object/from16 v40, v29

    move-object/from16 v41, v34

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v40

    goto :goto_1d

    .line 759
    .end local v34    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_34
    move-wide/from16 v40, v26

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-lez v40, :cond_37

    .line 760
    move-object/from16 v40, v3

    move-object/from16 v41, v29

    move-wide/from16 v42, v26

    invoke-direct/range {v40 .. v43}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->distributeTo(Ljava/util/List;D)D

    move-result-wide v40

    move-wide/from16 v26, v40

    .line 763
    const-wide/16 v40, 0x0

    move-wide/from16 v24, v40

    .line 764
    move-object/from16 v40, v30

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->clear()V

    .line 765
    const-wide/16 v40, 0x0

    move-wide/from16 v31, v40

    .line 766
    move-object/from16 v40, v28

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->clear()V

    .line 767
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move-object/from16 v33, v40

    :goto_1e
    move-object/from16 v40, v33

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_36

    move-object/from16 v40, v33

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v34, v40

    .line 768
    .restart local v34    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v40, v34

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v40

    const-wide/16 v42, 0x0

    cmpg-double v40, v40, v42

    if-gez v40, :cond_35

    .line 769
    move-wide/from16 v40, v24

    move-object/from16 v42, v34

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v42

    add-double v40, v40, v42

    move-wide/from16 v24, v40

    .line 770
    move-object/from16 v40, v30

    move-object/from16 v41, v34

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v40

    .line 775
    :goto_1f
    goto :goto_1e

    .line 772
    :cond_35
    move-wide/from16 v40, v31

    move-object/from16 v42, v34

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getAvailable()D

    move-result-wide v42

    add-double v40, v40, v42

    move-wide/from16 v31, v40

    .line 773
    move-object/from16 v40, v28

    move-object/from16 v41, v34

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v40

    goto :goto_1f

    .line 776
    .end local v34    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_36
    move-wide/from16 v40, v24

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    move-wide/from16 v24, v40

    .line 779
    :cond_37
    move-wide/from16 v40, v31

    move-wide/from16 v42, v24

    cmpl-double v40, v40, v42

    if-ltz v40, :cond_3d

    .line 780
    move-object/from16 v40, v30

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move-object/from16 v33, v40

    :goto_20
    move-object/from16 v40, v33

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_39

    move-object/from16 v40, v33

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v34, v40

    .line 781
    .local v34, "requestor":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_38

    move-object/from16 v40, v34

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v40

    :goto_21
    move-wide/from16 v35, v40

    .line 782
    .local v35, "min":D
    move-object/from16 v40, v34

    move-wide/from16 v41, v35

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setArea(D)V

    .line 783
    move-object/from16 v40, v34

    const-wide/16 v41, 0x0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setAvailable(D)V

    .line 784
    goto :goto_20

    .line 781
    .end local v35    # "min":D
    :cond_38
    move-object/from16 v40, v34

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v40

    goto :goto_21

    .line 788
    .end local v34    # "requestor":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_39
    move-wide/from16 v40, v24

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-lez v40, :cond_3a

    move-object/from16 v40, v30

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_3a

    .line 789
    move-object/from16 v40, v3

    move-wide/from16 v41, v24

    move-object/from16 v43, v28

    invoke-direct/range {v40 .. v43}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->distributeFrom(DLjava/util/List;)D

    move-result-wide v40

    .line 795
    :cond_3a
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->resize:Z

    move/from16 v40, v0

    if-eqz v40, :cond_3d

    .line 796
    const-wide/16 v40, 0x0

    move-wide/from16 v33, v40

    .line 797
    .local v33, "total":D
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move-object/from16 v35, v40

    :goto_22
    move-object/from16 v40, v35

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_3c

    move-object/from16 v40, v35

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v36, v40

    .line 798
    .local v36, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v40, v36

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->isResizableWithParent()Z

    move-result v40

    if-eqz v40, :cond_3b

    .line 799
    move-wide/from16 v40, v33

    move-object/from16 v42, v36

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v42

    add-double v40, v40, v42

    move-wide/from16 v33, v40

    .line 803
    :goto_23
    goto :goto_22

    .line 801
    :cond_3b
    move-wide/from16 v40, v33

    move-object/from16 v42, v36

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getResizableWithParentArea()D

    move-result-wide v42

    add-double v40, v40, v42

    move-wide/from16 v33, v40

    goto :goto_23

    .line 804
    .end local v36    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_3c
    move-wide/from16 v40, v33

    move-wide/from16 v42, v17

    move-object/from16 v44, v3

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentDividers:Ljavafx/collections/ObservableList;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Ljavafx/collections/ObservableList;->size()I

    move-result v44

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v33, v40

    .line 805
    move-wide/from16 v40, v33

    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v42, v0

    if-eqz v42, :cond_41

    move-wide/from16 v42, v8

    :goto_24
    cmpg-double v40, v40, v42

    if-gez v40, :cond_43

    .line 806
    move-wide/from16 v40, v26

    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v42, v0

    if-eqz v42, :cond_42

    move-wide/from16 v42, v8

    :goto_25
    move-wide/from16 v44, v33

    sub-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v26, v40

    .line 807
    move-object/from16 v40, v3

    move-object/from16 v41, v29

    move-wide/from16 v42, v26

    invoke-direct/range {v40 .. v43}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->distributeTo(Ljava/util/List;D)D

    move-result-wide v40

    .line 815
    .end local v33    # "total":D
    :cond_3d
    :goto_26
    move-object/from16 v40, v3

    invoke-direct/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->setupContentAndDividerForLayout()V

    .line 818
    const/16 v40, 0x1

    move/from16 v33, v40

    .line 819
    .local v33, "passed":Z
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->contentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move-object/from16 v34, v40

    :goto_27
    move-object/from16 v40, v34

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_3f

    move-object/from16 v40, v34

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;

    move-object/from16 v35, v40

    .line 820
    .local v35, "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_45

    move-object/from16 v40, v35

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->maxWidth(D)D

    move-result-wide v40

    :goto_28
    move-wide/from16 v36, v40

    .line 821
    .local v36, "max":D
    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v40, v0

    if-eqz v40, :cond_46

    move-object/from16 v40, v35

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minWidth(D)D

    move-result-wide v40

    :goto_29
    move-wide/from16 v38, v40

    .line 822
    .local v38, "min":D
    move-object/from16 v40, v35

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v40

    move-wide/from16 v42, v38

    cmpg-double v40, v40, v42

    if-ltz v40, :cond_3e

    move-object/from16 v40, v35

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getArea()D

    move-result-wide v40

    move-wide/from16 v42, v36

    cmpl-double v40, v40, v42

    if-lez v40, :cond_47

    .line 823
    :cond_3e
    const/16 v40, 0x0

    move/from16 v33, v40

    .line 827
    .end local v35    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .end local v36    # "max":D
    .end local v38    # "min":D
    :cond_3f
    move/from16 v40, v33

    if-eqz v40, :cond_48

    .line 828
    .line 832
    .end local v22    # "previousDivider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    .end local v23    # "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    .end local v24    # "spaceRequested":D
    .end local v26    # "extraSpace":D
    .end local v28    # "availableList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .end local v29    # "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .end local v30    # "spaceRequestor":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .end local v31    # "available":D
    .end local v33    # "passed":Z
    :cond_40
    move-object/from16 v40, v3

    move-wide/from16 v41, v8

    move-wide/from16 v43, v10

    invoke-direct/range {v40 .. v44}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->layoutDividersAndContent(DD)V

    .line 833
    move-object/from16 v40, v3

    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->resize:Z

    .line 834
    goto/16 :goto_0

    .line 805
    .restart local v22    # "previousDivider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    .restart local v23    # "divider":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    .restart local v24    # "spaceRequested":D
    .restart local v26    # "extraSpace":D
    .restart local v28    # "availableList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .restart local v29    # "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .restart local v30    # "spaceRequestor":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;>;"
    .restart local v31    # "available":D
    .local v33, "total":D
    :cond_41
    move-wide/from16 v42, v10

    goto/16 :goto_24

    .line 806
    :cond_42
    move-wide/from16 v42, v10

    goto/16 :goto_25

    .line 809
    :cond_43
    move-wide/from16 v40, v24

    move-wide/from16 v42, v33

    move-object/from16 v44, v3

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->horizontal:Z

    move/from16 v44, v0

    if-eqz v44, :cond_44

    move-wide/from16 v44, v8

    :goto_2a
    sub-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v24, v40

    .line 810
    move-object/from16 v40, v3

    move-wide/from16 v41, v24

    move-object/from16 v43, v29

    invoke-direct/range {v40 .. v43}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->distributeFrom(DLjava/util/List;)D

    move-result-wide v40

    goto/16 :goto_26

    .line 809
    :cond_44
    move-wide/from16 v44, v10

    goto :goto_2a

    .line 820
    .local v33, "passed":Z
    .restart local v35    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    :cond_45
    move-object/from16 v40, v35

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->maxHeight(D)D

    move-result-wide v40

    goto :goto_28

    .line 821
    .restart local v36    # "max":D
    :cond_46
    move-object/from16 v40, v35

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->minHeight(D)D

    move-result-wide v40

    goto :goto_29

    .line 826
    .restart local v38    # "min":D
    :cond_47
    goto/16 :goto_27

    .line 658
    .end local v35    # "c":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    .end local v36    # "max":D
    .end local v38    # "min":D
    :cond_48
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_13
.end method
