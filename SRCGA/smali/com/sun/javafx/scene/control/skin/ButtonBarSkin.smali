.class public Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "ButtonBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/ButtonBar;",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/ButtonBar;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final BUTTON_DATA_PROPERTY:Ljava/lang/String; = "javafx.scene.control.ButtonBar.ButtonData"

.field public static final BUTTON_SIZE_INDEPENDENCE:Ljava/lang/String; = "javafx.scene.control.ButtonBar.independentSize"

.field private static final CATEGORIZED_TYPES:Ljava/lang/String; = "LRHEYNXBIACO"

.field private static final DO_NOT_CHANGE_SIZE:D = 1.7976931348623157E308

.field private static final GAP_SIZE:D = 10.0


# instance fields
.field private buttonDataListener:Ljavafx/beans/InvalidationListener;

.field private layout:Ljavafx/scene/layout/HBox;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ButtonBar;)V
    .locals 9

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/ButtonBar;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 79
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->buttonDataListener:Ljavafx/beans/InvalidationListener;

    .line 92
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    sget-object v3, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/HBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "container"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 102
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 104
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layoutButtons()V

    .line 106
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBar;->getButtons()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->updateButtonListeners(Ljava/util/List;Z)V

    .line 107
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBar;->getButtons()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 115
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBar;->buttonOrderProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    const-string v4, "BUTTON_ORDER"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 116
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBar;->buttonMinWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    const-string v4, "BUTTON_MIN_WIDTH"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;)V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->resizeButtons()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->lambda$new$276(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->lambda$new$277(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private buildButtonMap(Ljava/util/List;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/Node;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v1, p1

    .local v1, "buttons":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    new-instance v7, Ljava/util/HashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v2, v7

    .line 313
    .local v2, "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavafx/scene/Node;>;>;"
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v4, v7

    .line 314
    .local v4, "btn":Ljavafx/scene/Node;
    move-object v7, v4

    if-nez v7, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->getButtonType(Ljavafx/scene/Node;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 316
    .local v5, "type":Ljava/lang/String;
    move-object v7, v2

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v6, v7

    .line 317
    .local v6, "typedButtons":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v7, v6

    if-nez v7, :cond_1

    .line 318
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 319
    move-object v7, v2

    move-object v8, v5

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 321
    :cond_1
    move-object v7, v6

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 322
    goto :goto_0

    .line 323
    .end local v4    # "btn":Ljavafx/scene/Node;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "typedButtons":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :cond_2
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    return-object v0
.end method

.method private doButtonOrderLayout(Ljava/lang/String;)V
    .locals 28

    .prologue
    .line 193
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object/from16 v4, p1

    .local v4, "buttonOrder":Ljava/lang/String;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/ButtonBar;

    move-object/from16 v5, v20

    .line 194
    .local v5, "buttonBar":Ljavafx/scene/control/ButtonBar;
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ButtonBar;->getButtons()Ljavafx/collections/ObservableList;

    move-result-object v20

    move-object/from16 v6, v20

    .line 195
    .local v6, "buttons":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ButtonBar;->getButtonMinWidth()D

    move-result-wide v20

    move-wide/from16 v7, v20

    .line 196
    .local v7, "buttonMinWidth":D
    move-object/from16 v20, v3

    move-object/from16 v21, v6

    invoke-direct/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->buildButtonMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v9, v20

    .line 198
    .local v9, "buttonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavafx/scene/Node;>;>;"
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v20

    move-object/from16 v10, v20

    .line 200
    .local v10, "buttonOrderArr":[C
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 201
    .local v11, "buttonIndex":I
    sget-object v20, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->NONE:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-object/from16 v12, v20

    .line 203
    .local v12, "spacer":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "i":I
    :goto_0
    move/from16 v20, v13

    move-object/from16 v21, v10

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 204
    move-object/from16 v20, v10

    move/from16 v21, v13

    aget-char v20, v20, v21

    move/from16 v14, v20

    .line 205
    .local v14, "type":C
    move/from16 v20, v11

    if-gtz v20, :cond_1

    move/from16 v20, v11

    move-object/from16 v21, v6

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    const/16 v20, 0x1

    :goto_1
    move/from16 v15, v20

    .line 206
    .local v15, "edgeCase":Z
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    const/16 v20, 0x1

    :goto_2
    move/from16 v16, v20

    .line 207
    .local v16, "hasChildren":Z
    move/from16 v20, v14

    const/16 v21, 0x2b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 208
    move-object/from16 v20, v12

    sget-object v21, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->DYNAMIC:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->replace(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;)Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-result-object v20

    move-object/from16 v12, v20

    .line 203
    :cond_0
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 205
    .end local v15    # "edgeCase":Z
    .end local v16    # "hasChildren":Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 206
    .restart local v15    # "edgeCase":Z
    :cond_2
    const/16 v20, 0x0

    goto :goto_2

    .line 209
    .restart local v16    # "hasChildren":Z
    :cond_3
    move/from16 v20, v14

    const/16 v21, 0x5f

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move/from16 v20, v16

    if-eqz v20, :cond_4

    .line 210
    move-object/from16 v20, v12

    sget-object v21, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->FIXED:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->replace(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;)Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-result-object v20

    move-object/from16 v12, v20

    goto :goto_3

    .line 212
    :cond_4
    move-object/from16 v20, v9

    move/from16 v21, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v17, v20

    .line 213
    .local v17, "buttonList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v20, v17

    if-eqz v20, :cond_0

    .line 214
    move-object/from16 v20, v12

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    move-object/from16 v21, v0

    move/from16 v22, v15

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->add(Ljavafx/scene/layout/Pane;Z)V

    .line 216
    move-object/from16 v20, v17

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v18, v20

    :goto_4
    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v20, v18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v19, v20

    .line 217
    .local v19, "btn":Ljavafx/scene/Node;
    move-object/from16 v20, v3

    move-object/from16 v21, v19

    move-wide/from16 v22, v7

    const-wide v24, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct/range {v20 .. v27}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->sizeButton(Ljavafx/scene/Node;DDD)V

    .line 219
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v20

    move-object/from16 v21, v19

    invoke-interface/range {v20 .. v21}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 220
    move-object/from16 v20, v19

    sget-object v21, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-static/range {v20 .. v21}, Ljavafx/scene/layout/HBox;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 221
    add-int/lit8 v11, v11, 0x1

    .line 222
    goto :goto_4

    .line 223
    .end local v19    # "btn":Ljavafx/scene/Node;
    :cond_5
    move-object/from16 v20, v12

    sget-object v21, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->NONE:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->replace(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;)Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-result-object v20

    move-object/from16 v12, v20

    goto/16 :goto_3

    .line 236
    .end local v14    # "type":C
    .end local v15    # "edgeCase":Z
    .end local v16    # "hasChildren":Z
    .end local v17    # "buttonList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :cond_6
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 237
    .local v13, "isDefaultSet":Z
    move-object/from16 v20, v6

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v14, v20

    .line 238
    .local v14, "childrenCount":I
    const/16 v20, 0x0

    move/from16 v15, v20

    .local v15, "i":I
    :goto_5
    move/from16 v20, v15

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 239
    move-object/from16 v20, v6

    move/from16 v21, v15

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v16, v20

    .line 241
    .local v16, "btn":Ljavafx/scene/Node;
    move-object/from16 v20, v16

    move-object/from16 v0, v20

    instance-of v0, v0, Ljavafx/scene/control/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v20, v16

    check-cast v20, Ljavafx/scene/control/Button;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Button;->isDefaultButton()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 242
    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->requestFocus()V

    .line 243
    const/16 v20, 0x1

    move/from16 v13, v20

    .line 247
    .end local v16    # "btn":Ljavafx/scene/Node;
    :cond_7
    move/from16 v20, v13

    if-nez v20, :cond_8

    .line 248
    const/16 v20, 0x0

    move/from16 v15, v20

    :goto_6
    move/from16 v20, v15

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 249
    move-object/from16 v20, v6

    move/from16 v21, v15

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v16, v20

    .line 250
    .restart local v16    # "btn":Ljavafx/scene/Node;
    move-object/from16 v20, v16

    invoke-static/range {v20 .. v20}, Ljavafx/scene/control/ButtonBar;->getButtonData(Ljavafx/scene/Node;)Ljavafx/scene/control/ButtonBar$ButtonData;

    move-result-object v20

    move-object/from16 v17, v20

    .line 252
    .local v17, "btnData":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object/from16 v20, v17

    if-eqz v20, :cond_a

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ButtonBar$ButtonData;->isDefaultButton()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 253
    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->requestFocus()V

    .line 254
    const/16 v20, 0x1

    move/from16 v13, v20

    .line 259
    .end local v16    # "btn":Ljavafx/scene/Node;
    .end local v17    # "btnData":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_8
    return-void

    .line 238
    .restart local v16    # "btn":Ljavafx/scene/Node;
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 248
    .restart local v17    # "btnData":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_6
.end method

.method private getButtonType(Ljavafx/scene/Node;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v1, p1

    .local v1, "btn":Ljavafx/scene/Node;
    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/control/ButtonBar;->getButtonData(Ljavafx/scene/Node;)Ljavafx/scene/control/ButtonBar$ButtonData;

    move-result-object v4

    move-object v2, v4

    .line 301
    .local v2, "buttonType":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 303
    sget-object v4, Ljavafx/scene/control/ButtonBar$ButtonData;->OTHER:Ljavafx/scene/control/ButtonBar$ButtonData;

    move-object v2, v4

    .line 306
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ButtonBar$ButtonData;->getTypeCode()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 307
    .local v3, "typeCode":Ljava/lang/String;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v3, v4

    .line 308
    const-string v4, "LRHEYNXBIACO"

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    :goto_1
    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    return-object v0

    .line 307
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 308
    :cond_2
    sget-object v4, Ljavafx/scene/control/ButtonBar$ButtonData;->OTHER:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-virtual {v4}, Ljavafx/scene/control/ButtonBar$ButtonData;->getTypeCode()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private synthetic lambda$new$276(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layoutButtons()V

    return-void
.end method

.method private synthetic lambda$new$277(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->updateButtonListeners(Ljava/util/List;Z)V

    .line 110
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->updateButtonListeners(Ljava/util/List;Z)V

    goto :goto_0

    .line 112
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layoutButtons()V

    .line 113
    return-void
.end method

.method private layoutButtons()V
    .locals 17

    .prologue
    .line 164
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ButtonBar;

    move-object v1, v8

    .line 165
    .local v1, "buttonBar":Ljavafx/scene/control/ButtonBar;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/ButtonBar;->getButtons()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v2, v8

    .line 166
    .local v2, "buttons":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/ButtonBar;->getButtonMinWidth()D

    move-result-wide v8

    move-wide v3, v8

    .line 168
    .local v3, "buttonMinWidth":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ButtonBar;

    invoke-virtual {v8}, Ljavafx/scene/control/ButtonBar;->getButtonOrder()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 170
    .local v5, "buttonOrder":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    invoke-virtual {v8}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->clear()V

    .line 173
    move-object v8, v5

    if-nez v8, :cond_0

    .line 174
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const-string v10, "ButtonBar buttonOrder string can not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 177
    :cond_0
    move-object v8, v5

    const-string v9, ""

    if-ne v8, v9, :cond_2

    .line 181
    sget-object v8, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->DYNAMIC:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->add(Ljavafx/scene/layout/Pane;Z)V

    .line 182
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v7, v8

    .line 183
    .local v7, "btn":Ljavafx/scene/Node;
    move-object v8, v0

    move-object v9, v7

    move-wide v10, v3

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct/range {v8 .. v15}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->sizeButton(Ljavafx/scene/Node;DDD)V

    .line 184
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layout:Ljavafx/scene/layout/HBox;

    invoke-virtual {v8}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v7

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 185
    move-object v8, v7

    sget-object v9, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-static {v8, v9}, Ljavafx/scene/layout/HBox;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 186
    goto :goto_0

    .line 190
    .end local v7    # "btn":Ljavafx/scene/Node;
    :cond_1
    :goto_1
    return-void

    .line 188
    :cond_2
    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->doButtonOrderLayout(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private resizeButtons()V
    .locals 18

    .prologue
    .line 262
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/ButtonBar;

    move-object v2, v10

    .line 263
    .local v2, "buttonBar":Ljavafx/scene/control/ButtonBar;
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/ButtonBar;->getButtonMinWidth()D

    move-result-wide v10

    move-wide v3, v10

    .line 264
    .local v3, "buttonMinWidth":D
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/ButtonBar;->getButtons()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v5, v10

    .line 267
    .local v5, "buttons":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    move-wide v10, v3

    move-wide v6, v10

    .line 268
    .local v6, "widest":D
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_0
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v9, v10

    .line 269
    .local v9, "button":Ljavafx/scene/Node;
    move-object v10, v9

    invoke-static {v10}, Ljavafx/scene/control/ButtonBar;->isButtonUniformSize(Ljavafx/scene/Node;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 270
    move-object v10, v9

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v10

    move-wide v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide v6, v10

    .line 272
    :cond_0
    goto :goto_0

    .line 275
    .end local v9    # "button":Ljavafx/scene/Node;
    :cond_1
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    check-cast v10, Ljavafx/scene/Node;

    move-object v9, v10

    .line 276
    .restart local v9    # "button":Ljavafx/scene/Node;
    move-object v10, v9

    invoke-static {v10}, Ljavafx/scene/control/ButtonBar;->isButtonUniformSize(Ljavafx/scene/Node;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 277
    move-object v10, v1

    move-object v11, v9

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v14, v6

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct/range {v10 .. v17}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->sizeButton(Ljavafx/scene/Node;DDD)V

    .line 279
    :cond_2
    goto :goto_1

    .line 280
    .end local v9    # "button":Ljavafx/scene/Node;
    :cond_3
    return-void
.end method

.method private sizeButton(Ljavafx/scene/Node;DDD)V
    .locals 14

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v1, p1

    .local v1, "btn":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "min":D
    move-wide/from16 v4, p4

    .local v4, "pref":D
    move-wide/from16 v6, p6

    .local v6, "max":D
    move-object v9, v1

    instance-of v9, v9, Ljavafx/scene/layout/Region;

    if-eqz v9, :cond_2

    .line 284
    move-object v9, v1

    check-cast v9, Ljavafx/scene/layout/Region;

    move-object v8, v9

    .line 286
    .local v8, "regionBtn":Ljavafx/scene/layout/Region;
    move-wide v9, v2

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_0

    .line 287
    move-object v9, v8

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/Region;->setMinWidth(D)V

    .line 289
    :cond_0
    move-wide v9, v4

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_1

    .line 290
    move-object v9, v8

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/Region;->setPrefWidth(D)V

    .line 292
    :cond_1
    move-wide v9, v6

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_2

    .line 293
    move-object v9, v8

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/Region;->setMaxWidth(D)V

    .line 296
    .end local v8    # "regionBtn":Ljavafx/scene/layout/Region;
    :cond_2
    return-void
.end method

.method private updateButtonListeners(Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/Node;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    move v2, p2

    .local v2, "buttonsAdded":Z
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 121
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v4, v7

    .line 122
    .local v4, "n":Ljavafx/scene/Node;
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v7

    move-object v5, v7

    .line 123
    .local v5, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v7, v5

    const-string v8, "javafx.scene.control.ButtonBar.ButtonData"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 124
    move-object v7, v5

    const-string v8, "javafx.scene.control.ButtonBar.ButtonData"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/beans/property/ObjectProperty;

    move-object v6, v7

    .line 125
    .local v6, "property":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/control/ButtonBar$ButtonData;>;"
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 126
    move v7, v2

    if-eqz v7, :cond_1

    .line 127
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->buttonDataListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 133
    .end local v6    # "property":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/control/ButtonBar$ButtonData;>;"
    :cond_0
    :goto_1
    goto :goto_0

    .line 129
    .restart local v6    # "property":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/control/ButtonBar$ButtonData;>;"
    :cond_1
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->buttonDataListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_1

    .line 135
    .end local v4    # "n":Ljavafx/scene/Node;
    .end local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "property":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/control/ButtonBar$ButtonData;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 147
    const-string v2, "BUTTON_ORDER"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->layoutButtons()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v2, "BUTTON_MIN_WIDTH"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->resizeButtons()V

    goto :goto_0
.end method
