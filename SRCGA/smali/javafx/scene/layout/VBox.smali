.class public Ljavafx/scene/layout/VBox;
.super Ljavafx/scene/layout/Pane;
.source "VBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/layout/VBox$StyleableProperties;
    }
.end annotation


# static fields
.field private static final MARGIN_CONSTRAINT:Ljava/lang/String; = "vbox-margin"

.field private static final VGROW_CONSTRAINT:Ljava/lang/String; = "vbox-vgrow"

.field private static final marginAccessor:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private bias:Ljavafx/geometry/Orientation;

.field private biasDirty:Z

.field private fillWidth:Ljavafx/beans/property/BooleanProperty;

.field private performingLayout:Z

.field private spacing:Ljavafx/beans/property/DoubleProperty;

.field private tempArray:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Ljavafx/scene/layout/VBox$$Lambda$1;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v0

    sput-object v0, Ljavafx/scene/layout/VBox;->marginAccessor:Ljavafx/util/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 140
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/VBox;->biasDirty:Z

    .line 141
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/layout/VBox;->performingLayout:Z

    .line 216
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-wide v1, p1

    .local v1, "spacing":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/VBox;-><init>()V

    .line 224
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/VBox;->setSpacing(D)V

    .line 225
    return-void
.end method

.method public varargs constructor <init>(D[Ljavafx/scene/Node;)V
    .locals 9

    .prologue
    .line 244
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/VBox;
    move-wide v2, p1

    .local v2, "spacing":D
    move-object v4, p3

    .local v4, "children":[Ljavafx/scene/Node;
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/layout/VBox;-><init>()V

    .line 245
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/VBox;->setSpacing(D)V

    .line 246
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 247
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v1, p1

    .local v1, "children":[Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 140
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/layout/VBox;->biasDirty:Z

    .line 141
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/layout/VBox;->performingLayout:Z

    .line 234
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 235
    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/layout/VBox;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/VBox;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/layout/VBox;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/VBox;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/layout/VBox;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/VBox;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/VBox;->lambda$static$513(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private adjustAreaHeights(Ljava/util/List;[[DDD)D
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;[[DDD)D"
        }
    .end annotation

    .prologue
    .line 450
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/VBox;
    move-object/from16 v3, p1

    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v4, p2

    .local v4, "areaHeights":[[D
    move-wide/from16 v5, p3

    .local v5, "height":D
    move-wide/from16 v7, p5

    .local v7, "width":D
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/VBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v22

    move-object/from16 v9, v22

    .line 451
    .local v9, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 452
    .local v10, "left":D
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 454
    .local v12, "right":D
    move-object/from16 v22, v4

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljavafx/scene/layout/VBox;->sum([DI)D

    move-result-wide v22

    move-object/from16 v24, v3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v2

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/layout/VBox;->getSpacing()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 455
    .local v14, "contentHeight":D
    move-wide/from16 v22, v5

    move-object/from16 v24, v2

    move-object/from16 v25, v9

    .line 456
    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v2

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-wide/from16 v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 458
    .local v16, "extraHeight":D
    move-wide/from16 v22, v16

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_0

    .line 459
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/VBox;->isFillWidth()Z

    move-result v22

    if-eqz v22, :cond_1

    move-wide/from16 v22, v7

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_1

    move-wide/from16 v22, v7

    move-wide/from16 v24, v10

    sub-double v22, v22, v24

    move-wide/from16 v24, v12

    sub-double v22, v22, v24

    :goto_0
    move-wide/from16 v18, v22

    .line 460
    .local v18, "refWidth":D
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    sget-object v25, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    move-wide/from16 v26, v16

    move-wide/from16 v28, v18

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/VBox;->growOrShrinkAreaHeights(Ljava/util/List;[[DLjavafx/scene/layout/Priority;DD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 461
    .local v20, "remaining":D
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    sget-object v25, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    move-wide/from16 v26, v20

    move-wide/from16 v28, v18

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/VBox;->growOrShrinkAreaHeights(Ljava/util/List;[[DLjavafx/scene/layout/Priority;DD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 462
    move-wide/from16 v22, v14

    move-wide/from16 v24, v16

    move-wide/from16 v26, v20

    sub-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 465
    .end local v18    # "refWidth":D
    .end local v20    # "remaining":D
    :cond_0
    move-wide/from16 v22, v14

    move-wide/from16 v2, v22

    .end local v2    # "this":Ljavafx/scene/layout/VBox;
    return-wide v2

    .line 459
    .restart local v2    # "this":Ljavafx/scene/layout/VBox;
    :cond_1
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public static clearConstraints(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/VBox;->setVgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 204
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/VBox;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 205
    return-void
.end method

.method private computeContentHeight(Ljava/util/List;DZ)D
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;DZ)D"
        }
    .end annotation

    .prologue
    .line 518
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/VBox;
    move-object v2, p1

    .local v2, "managedChildren":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-wide/from16 v3, p2

    .local v3, "width":D
    move/from16 v5, p4

    .local v5, "minimum":Z
    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/VBox;->getAreaHeights(Ljava/util/List;DZ)[[D

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljavafx/scene/layout/VBox;->sum([DI)D

    move-result-wide v6

    move-object v8, v2

    .line 519
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/layout/VBox;->getSpacing()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Ljavafx/scene/layout/VBox;
    return-wide v1
.end method

.method private getAlignmentInternal()Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/VBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v2

    move-object v1, v2

    .line 318
    .local v1, "localPos":Ljavafx/geometry/Pos;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/VBox;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getAreaHeights(Ljava/util/List;DZ)[[D
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;DZ)[[D"
        }
    .end annotation

    .prologue
    .line 425
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/VBox;
    move-object/from16 v2, p1

    .local v2, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-wide/from16 v3, p2

    .local v3, "width":D
    move/from16 v5, p4

    .local v5, "minimum":Z
    move-object v14, v1

    move-object v15, v2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljavafx/scene/layout/VBox;->getTempArray(I)[[D

    move-result-object v14

    move-object v6, v14

    .line 426
    .local v6, "temp":[[D
    move-wide v14, v3

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 427
    :goto_0
    move-wide v7, v14

    .line 428
    .local v7, "insideWidth":D
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/layout/VBox;->isFillWidth()Z

    move-result v14

    move v9, v14

    .line 429
    .local v9, "isFillWidth":Z
    const/4 v14, 0x0

    move v10, v14

    .local v10, "i":I
    move-object v14, v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v11, v14

    .local v11, "size":I
    :goto_1
    move v14, v10

    move v15, v11

    if-ge v14, v15, :cond_4

    .line 430
    move-object v14, v2

    move v15, v10

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    move-object v12, v14

    .line 431
    .local v12, "child":Ljavafx/scene/Node;
    move-object v14, v12

    invoke-static {v14}, Ljavafx/scene/layout/VBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v14

    move-object v13, v14

    .line 432
    .local v13, "margin":Ljavafx/geometry/Insets;
    move v14, v5

    if-eqz v14, :cond_2

    .line 433
    move-wide v14, v7

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_1

    move v14, v9

    if-eqz v14, :cond_1

    .line 434
    move-object v14, v6

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    move-object/from16 v20, v13

    move-wide/from16 v21, v7

    invoke-virtual/range {v16 .. v22}, Ljavafx/scene/layout/VBox;->computeChildMinAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v16

    aput-wide v16, v14, v15

    .line 429
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 426
    .end local v7    # "insideWidth":D
    .end local v9    # "isFillWidth":Z
    .end local v10    # "i":I
    .end local v11    # "size":I
    .end local v12    # "child":Ljavafx/scene/Node;
    .end local v13    # "margin":Ljavafx/geometry/Insets;
    :cond_0
    move-wide v14, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    .line 427
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/VBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/VBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    goto :goto_0

    .line 436
    .restart local v7    # "insideWidth":D
    .restart local v9    # "isFillWidth":Z
    .restart local v10    # "i":I
    .restart local v11    # "size":I
    .restart local v12    # "child":Ljavafx/scene/Node;
    .restart local v13    # "margin":Ljavafx/geometry/Insets;
    :cond_1
    move-object v14, v6

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    move-object/from16 v20, v13

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v22}, Ljavafx/scene/layout/VBox;->computeChildMinAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v16

    aput-wide v16, v14, v15

    goto :goto_2

    .line 439
    :cond_2
    move-wide v14, v7

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_3

    move v14, v9

    if-eqz v14, :cond_3

    .line 440
    move-object v14, v6

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    move-object/from16 v20, v13

    move-wide/from16 v21, v7

    invoke-virtual/range {v16 .. v22}, Ljavafx/scene/layout/VBox;->computeChildPrefAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v16

    aput-wide v16, v14, v15

    goto :goto_2

    .line 442
    :cond_3
    move-object v14, v6

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    move-object/from16 v20, v13

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v22}, Ljavafx/scene/layout/VBox;->computeChildPrefAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v16

    aput-wide v16, v14, v15

    goto :goto_2

    .line 446
    .end local v12    # "child":Ljavafx/scene/Node;
    .end local v13    # "margin":Ljavafx/geometry/Insets;
    :cond_4
    move-object v14, v6

    move-object v1, v14

    .end local v1    # "this":Ljavafx/scene/layout/VBox;
    return-object v1
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
    .line 656
    # getter for: Ljavafx/scene/layout/VBox$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/layout/VBox$StyleableProperties;->access$600()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 3

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "vbox-margin"

    invoke-static {v1, v2}, Ljavafx/scene/layout/VBox;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getTempArray(I)[[D
    .locals 6

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/VBox;->tempArray:[[D

    if-nez v2, :cond_1

    .line 575
    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    filled-new-array {v3, v4}, [I

    move-result-object v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, v2, Ljavafx/scene/layout/VBox;->tempArray:[[D

    .line 579
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/VBox;->tempArray:[[D

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-object v0

    .line 576
    .restart local v0    # "this":Ljavafx/scene/layout/VBox;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/VBox;->tempArray:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 577
    move-object v2, v0

    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/VBox;->tempArray:[[D

    array-length v4, v4

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    move v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, v2, Ljavafx/scene/layout/VBox;->tempArray:[[D

    goto :goto_0
.end method

.method public static getVgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "vbox-vgrow"

    invoke-static {v1, v2}, Ljavafx/scene/layout/VBox;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/layout/Priority;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private growOrShrinkAreaHeights(Ljava/util/List;[[DLjavafx/scene/layout/Priority;DD)D
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;[[D",
            "Ljavafx/scene/layout/Priority;",
            "DD)D"
        }
    .end annotation

    .prologue
    .line 469
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/VBox;
    move-object/from16 v3, p1

    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v4, p2

    .local v4, "areaHeights":[[D
    move-object/from16 v5, p3

    .local v5, "priority":Ljavafx/scene/layout/Priority;
    move-wide/from16 v6, p4

    .local v6, "extraHeight":D
    move-wide/from16 v8, p6

    .local v8, "width":D
    move-wide/from16 v24, v6

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_0

    const/16 v24, 0x1

    :goto_0
    move/from16 v10, v24

    .line 470
    .local v10, "shrinking":Z
    const/16 v24, 0x0

    move/from16 v11, v24

    .line 472
    .local v11, "adjustingNumber":I
    move-object/from16 v24, v4

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v12, v24

    .line 473
    .local v12, "usedHeights":[D
    move-object/from16 v24, v4

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v13, v24

    .line 475
    .local v13, "temp":[D
    move/from16 v24, v10

    if-eqz v24, :cond_3

    .line 476
    move-object/from16 v24, v3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v11, v24

    .line 477
    const/16 v24, 0x0

    move/from16 v14, v24

    .local v14, "i":I
    move-object/from16 v24, v3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v15, v24

    .local v15, "size":I
    :goto_1
    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 478
    move-object/from16 v24, v3

    move/from16 v25, v14

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/Node;

    move-object/from16 v16, v24

    .line 479
    .local v16, "child":Ljavafx/scene/Node;
    move-object/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v2

    move-object/from16 v27, v16

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    move-object/from16 v30, v16

    invoke-static/range {v30 .. v30}, Ljavafx/scene/layout/VBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v30

    move-wide/from16 v31, v8

    invoke-virtual/range {v26 .. v32}, Ljavafx/scene/layout/VBox;->computeChildMinAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v26

    aput-wide v26, v24, v25

    .line 477
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 469
    .end local v10    # "shrinking":Z
    .end local v11    # "adjustingNumber":I
    .end local v12    # "usedHeights":[D
    .end local v13    # "temp":[D
    .end local v14    # "i":I
    .end local v15    # "size":I
    .end local v16    # "child":Ljavafx/scene/Node;
    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .line 477
    .line 493
    .restart local v10    # "shrinking":Z
    .restart local v11    # "adjustingNumber":I
    .restart local v12    # "usedHeights":[D
    .restart local v13    # "temp":[D
    .restart local v14    # "i":I
    .restart local v15    # "size":I
    :cond_1
    move-wide/from16 v24, v6

    move-wide/from16 v14, v24

    .line 494
    .end local v15    # "size":I
    .local v14, "available":D
    :goto_2
    move-wide/from16 v24, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_6

    move/from16 v24, v11

    if-lez v24, :cond_6

    .line 495
    move-object/from16 v24, v2

    move-wide/from16 v25, v14

    move/from16 v27, v11

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/VBox;->snapPortion(D)D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 496
    .local v16, "portion":D
    const/16 v24, 0x0

    move/from16 v18, v24

    .local v18, "i":I
    move-object/from16 v24, v3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v19, v24

    .local v19, "size":I
    :goto_3
    move/from16 v24, v18

    move/from16 v25, v19

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 497
    move-object/from16 v24, v13

    move/from16 v25, v18

    aget-wide v24, v24, v25

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_5

    .line 498
    .line 496
    :cond_2
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 482
    .end local v14    # "available":D
    .end local v16    # "portion":D
    .end local v18    # "i":I
    .end local v19    # "size":I
    :cond_3
    const/16 v24, 0x0

    move/from16 v14, v24

    .local v14, "i":I
    move-object/from16 v24, v3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v15, v24

    .restart local v15    # "size":I
    :goto_5
    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 483
    move-object/from16 v24, v3

    move/from16 v25, v14

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/Node;

    move-object/from16 v16, v24

    .line 484
    .local v16, "child":Ljavafx/scene/Node;
    move-object/from16 v24, v16

    invoke-static/range {v24 .. v24}, Ljavafx/scene/layout/VBox;->getVgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;

    move-result-object v24

    move-object/from16 v25, v5

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 485
    move-object/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v2

    move-object/from16 v27, v16

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    move-object/from16 v30, v16

    invoke-static/range {v30 .. v30}, Ljavafx/scene/layout/VBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v30

    move-wide/from16 v31, v8

    invoke-virtual/range {v26 .. v32}, Ljavafx/scene/layout/VBox;->computeChildMaxAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v26

    aput-wide v26, v24, v25

    .line 486
    add-int/lit8 v11, v11, 0x1

    .line 482
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 488
    :cond_4
    move-object/from16 v24, v13

    move/from16 v25, v14

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    aput-wide v26, v24, v25

    goto :goto_6

    .line 500
    .end local v15    # "size":I
    .local v14, "available":D
    .local v16, "portion":D
    .restart local v18    # "i":I
    .restart local v19    # "size":I
    :cond_5
    move-object/from16 v24, v13

    move/from16 v25, v18

    aget-wide v24, v24, v25

    move-object/from16 v26, v12

    move/from16 v27, v18

    aget-wide v26, v26, v27

    sub-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 501
    .local v20, "limit":D
    move-wide/from16 v24, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v26, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v24, v24, v26

    if-gtz v24, :cond_7

    move-wide/from16 v24, v20

    :goto_7
    move-wide/from16 v22, v24

    .line 502
    .local v22, "change":D
    move-object/from16 v24, v12

    move/from16 v25, v18

    move-object/from16 v33, v24

    move/from16 v34, v25

    move-object/from16 v24, v33

    move/from16 v25, v34

    move-object/from16 v26, v33

    move/from16 v27, v34

    aget-wide v26, v26, v27

    move-wide/from16 v28, v22

    add-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 503
    move-wide/from16 v24, v14

    move-wide/from16 v26, v22

    sub-double v24, v24, v26

    move-wide/from16 v14, v24

    .line 504
    move-wide/from16 v24, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_8

    .line 505
    .line 514
    .end local v16    # "portion":D
    .end local v18    # "i":I
    .end local v19    # "size":I
    .end local v20    # "limit":D
    .end local v22    # "change":D
    :cond_6
    move-wide/from16 v24, v14

    move-wide/from16 v2, v24

    .end local v2    # "this":Ljavafx/scene/layout/VBox;
    return-wide v2

    .line 501
    .restart local v2    # "this":Ljavafx/scene/layout/VBox;
    .restart local v16    # "portion":D
    .restart local v18    # "i":I
    .restart local v19    # "size":I
    .restart local v20    # "limit":D
    :cond_7
    move-wide/from16 v24, v16

    goto :goto_7

    .line 507
    .restart local v22    # "change":D
    :cond_8
    move-wide/from16 v24, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v26, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    .line 508
    move-object/from16 v24, v13

    move/from16 v25, v18

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    aput-wide v26, v24, v25

    .line 509
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4

    .line 512
    .end local v20    # "limit":D
    .end local v22    # "change":D
    :cond_9
    goto/16 :goto_2
.end method

.method private static synthetic lambda$static$513(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "n":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/VBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "n":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    const-string v3, "vbox-margin"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/VBox;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public static setVgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/layout/Priority;
    move-object v2, v0

    const-string v3, "vbox-vgrow"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/VBox;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method private static sum([DI)D
    .locals 10

    .prologue
    .line 523
    move-object v1, p0

    .local v1, "array":[D
    move v2, p1

    .local v2, "size":I
    const/4 v6, 0x0

    move v3, v6

    .line 524
    .local v3, "i":I
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 525
    .local v4, "res":D
    :goto_0
    move v6, v3

    move v7, v2

    if-eq v6, v7, :cond_0

    .line 526
    move-wide v6, v4

    move-object v8, v1

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    move-wide v4, v6

    goto :goto_0

    .line 528
    :cond_0
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "array":[D
    return-wide v1
.end method


# virtual methods
.method public final alignmentProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 288
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/VBox$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/VBox$2;-><init>(Ljavafx/scene/layout/VBox;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Ljavafx/scene/layout/VBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    .line 310
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-object v0
.end method

.method protected computeMinHeight(D)D
    .locals 11

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-wide v1, p1

    .local v1, "width":D
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/VBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    move-object v3, v4

    .line 395
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v4

    move-object v6, v0

    move-object v7, v0

    .line 396
    invoke-virtual {v7}, Ljavafx/scene/layout/VBox;->getManagedChildren()Ljava/util/List;

    move-result-object v7

    move-wide v8, v1

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/VBox;->computeContentHeight(Ljava/util/List;DZ)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v0

    move-object v7, v3

    .line 397
    invoke-virtual {v7}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-wide v0
.end method

.method protected computeMinWidth(D)D
    .locals 15

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-wide/from16 v1, p1

    .local v1, "height":D
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/VBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v8

    move-object v3, v8

    .line 381
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/VBox;->getManagedChildren()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 382
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const-wide/16 v8, 0x0

    move-wide v5, v8

    .line 383
    .local v5, "contentWidth":D
    move-wide v8, v1

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/VBox;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 384
    move-object v8, v0

    move-object v9, v4

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/VBox;->getAreaHeights(Ljava/util/List;DZ)[[D

    move-result-object v8

    move-object v7, v8

    .line 385
    .local v7, "prefHeights":[[D
    move-object v8, v0

    move-object v9, v4

    move-object v10, v7

    move-wide v11, v1

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-direct/range {v8 .. v14}, Ljavafx/scene/layout/VBox;->adjustAreaHeights(Ljava/util/List;[[DDD)D

    move-result-wide v8

    .line 386
    move-object v8, v0

    move-object v9, v4

    sget-object v10, Ljavafx/scene/layout/VBox;->marginAccessor:Ljavafx/util/Callback;

    move-object v11, v7

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/VBox;->computeMaxMinAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZ)D

    move-result-wide v8

    move-wide v5, v8

    .line 390
    .end local v7    # "prefHeights":[[D
    :goto_0
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v8

    move-wide v10, v5

    add-double/2addr v8, v10

    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-wide v0

    .line 388
    .restart local v0    # "this":Ljavafx/scene/layout/VBox;
    :cond_0
    move-object v8, v0

    move-object v9, v4

    sget-object v10, Ljavafx/scene/layout/VBox;->marginAccessor:Ljavafx/util/Callback;

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/VBox;->computeMaxMinAreaWidth(Ljava/util/List;Ljavafx/util/Callback;)D

    move-result-wide v8

    move-wide v5, v8

    goto :goto_0
.end method

.method protected computePrefHeight(D)D
    .locals 13

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-wide v1, p1

    .local v1, "width":D
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/VBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    move-object v3, v6

    .line 416
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v6

    move-object v8, v0

    move-object v9, v0

    .line 417
    invoke-virtual {v9}, Ljavafx/scene/layout/VBox;->getManagedChildren()Ljava/util/List;

    move-result-object v9

    move-wide v10, v1

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/VBox;->computeContentHeight(Ljava/util/List;DZ)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-object v8, v0

    move-object v9, v3

    .line 418
    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 419
    .local v4, "d":D
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-wide v0
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-wide/from16 v1, p1

    .local v1, "height":D
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/VBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v8

    move-object v3, v8

    .line 402
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/VBox;->getManagedChildren()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 403
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const-wide/16 v8, 0x0

    move-wide v5, v8

    .line 404
    .local v5, "contentWidth":D
    move-wide v8, v1

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/VBox;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 405
    move-object v8, v0

    move-object v9, v4

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/VBox;->getAreaHeights(Ljava/util/List;DZ)[[D

    move-result-object v8

    move-object v7, v8

    .line 406
    .local v7, "prefHeights":[[D
    move-object v8, v0

    move-object v9, v4

    move-object v10, v7

    move-wide v11, v1

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-direct/range {v8 .. v14}, Ljavafx/scene/layout/VBox;->adjustAreaHeights(Ljava/util/List;[[DDD)D

    move-result-wide v8

    .line 407
    move-object v8, v0

    move-object v9, v4

    sget-object v10, Ljavafx/scene/layout/VBox;->marginAccessor:Ljavafx/util/Callback;

    move-object v11, v7

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/VBox;->computeMaxPrefAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZ)D

    move-result-wide v8

    move-wide v5, v8

    .line 411
    .end local v7    # "prefHeights":[[D
    :goto_0
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v8

    move-wide v10, v5

    add-double/2addr v8, v10

    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-wide v0

    .line 409
    .restart local v0    # "this":Ljavafx/scene/layout/VBox;
    :cond_0
    move-object v8, v0

    move-object v9, v4

    sget-object v10, Ljavafx/scene/layout/VBox;->marginAccessor:Ljavafx/util/Callback;

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/VBox;->computeMaxPrefAreaWidth(Ljava/util/List;Ljavafx/util/Callback;)D

    move-result-wide v8

    move-wide v5, v8

    goto :goto_0
.end method

.method public final fillWidthProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 328
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/VBox$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/VBox$3;-><init>(Ljavafx/scene/layout/VBox;Z)V

    iput-object v2, v1, Ljavafx/scene/layout/VBox;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    .line 350
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-object v0
.end method

.method public final getAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/VBox;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 7

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/VBox;->biasDirty:Z

    if-eqz v5, :cond_1

    .line 363
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/layout/VBox;->bias:Ljavafx/geometry/Orientation;

    .line 364
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/layout/VBox;->getManagedChildren()Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 365
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v3, v5

    .line 366
    .local v3, "child":Ljavafx/scene/Node;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v5

    move-object v4, v5

    .line 367
    .local v4, "contentBias":Ljavafx/geometry/Orientation;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 368
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/layout/VBox;->bias:Ljavafx/geometry/Orientation;

    .line 369
    move-object v5, v4

    sget-object v6, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v5, v6, :cond_2

    .line 370
    .line 374
    .end local v3    # "child":Ljavafx/scene/Node;
    .end local v4    # "contentBias":Ljavafx/geometry/Orientation;
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/layout/VBox;->biasDirty:Z

    .line 376
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/VBox;->bias:Ljavafx/geometry/Orientation;

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-object v0

    .line 373
    .restart local v0    # "this":Ljavafx/scene/layout/VBox;
    .restart local v1    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .restart local v3    # "child":Ljavafx/scene/Node;
    .restart local v4    # "contentBias":Ljavafx/geometry/Orientation;
    :cond_2
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
    .line 668
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    invoke-static {}, Ljavafx/scene/layout/VBox;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-object v0
.end method

.method public final getSpacing()D
    .locals 4

    .prologue
    .line 281
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/VBox;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/VBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/VBox;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/VBox;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/VBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final isFillWidth()Z
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/VBox;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 51

    .prologue
    .line 541
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/VBox;
    move-object/from16 v34, v2

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Ljavafx/scene/layout/VBox;->performingLayout:Z

    .line 542
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/VBox;->getManagedChildren()Ljava/util/List;

    move-result-object v34

    move-object/from16 v3, v34

    .line 543
    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/VBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v34

    move-object/from16 v4, v34

    .line 544
    .local v4, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/VBox;->getWidth()D

    move-result-wide v34

    move-wide/from16 v5, v34

    .line 545
    .local v5, "width":D
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/VBox;->getHeight()D

    move-result-wide v34

    move-wide/from16 v7, v34

    .line 546
    .local v7, "height":D
    move-object/from16 v34, v2

    move-object/from16 v35, v4

    invoke-virtual/range {v35 .. v35}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v34

    move-wide/from16 v9, v34

    .line 547
    .local v9, "top":D
    move-object/from16 v34, v2

    move-object/from16 v35, v4

    invoke-virtual/range {v35 .. v35}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v34

    move-wide/from16 v11, v34

    .line 548
    .local v11, "left":D
    move-object/from16 v34, v2

    move-object/from16 v35, v4

    invoke-virtual/range {v35 .. v35}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v34

    move-wide/from16 v13, v34

    .line 549
    .local v13, "bottom":D
    move-object/from16 v34, v2

    move-object/from16 v35, v4

    invoke-virtual/range {v35 .. v35}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v34

    move-wide/from16 v15, v34

    .line 550
    .local v15, "right":D
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Ljavafx/scene/layout/VBox;->getSpacing()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Ljavafx/scene/layout/VBox;->snapSpace(D)D

    move-result-wide v34

    move-wide/from16 v17, v34

    .line 551
    .local v17, "space":D
    move-object/from16 v34, v2

    invoke-direct/range {v34 .. v34}, Ljavafx/scene/layout/VBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v34

    move-object/from16 v19, v34

    .line 552
    .local v19, "hpos":Ljavafx/geometry/HPos;
    move-object/from16 v34, v2

    invoke-direct/range {v34 .. v34}, Ljavafx/scene/layout/VBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v34

    move-object/from16 v20, v34

    .line 553
    .local v20, "vpos":Ljavafx/geometry/VPos;
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/VBox;->isFillWidth()Z

    move-result v34

    move/from16 v21, v34

    .line 555
    .local v21, "isFillWidth":Z
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-wide/from16 v36, v5

    const/16 v38, 0x0

    invoke-direct/range {v34 .. v38}, Ljavafx/scene/layout/VBox;->getAreaHeights(Ljava/util/List;DZ)[[D

    move-result-object v34

    move-object/from16 v22, v34

    .line 556
    .local v22, "actualAreaHeights":[[D
    move-wide/from16 v34, v5

    move-wide/from16 v36, v11

    sub-double v34, v34, v36

    move-wide/from16 v36, v15

    sub-double v34, v34, v36

    move-wide/from16 v23, v34

    .line 557
    .local v23, "contentWidth":D
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v22

    move-wide/from16 v37, v7

    move-wide/from16 v39, v5

    invoke-direct/range {v34 .. v40}, Ljavafx/scene/layout/VBox;->adjustAreaHeights(Ljava/util/List;[[DDD)D

    move-result-wide v34

    move-wide/from16 v25, v34

    .line 559
    .local v25, "contentHeight":D
    move-wide/from16 v34, v11

    move-wide/from16 v27, v34

    .line 560
    .local v27, "x":D
    move-wide/from16 v34, v9

    move-wide/from16 v36, v7

    move-wide/from16 v38, v9

    sub-double v36, v36, v38

    move-wide/from16 v38, v13

    sub-double v36, v36, v38

    move-wide/from16 v38, v25

    move-object/from16 v40, v20

    invoke-static/range {v36 .. v40}, Ljavafx/scene/layout/VBox;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v36

    add-double v34, v34, v36

    move-wide/from16 v29, v34

    .line 562
    .local v29, "y":D
    const/16 v34, 0x0

    move/from16 v31, v34

    .local v31, "i":I
    move-object/from16 v34, v3

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v32, v34

    .local v32, "size":I
    :goto_0
    move/from16 v34, v31

    move/from16 v35, v32

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    .line 563
    move-object/from16 v34, v3

    move/from16 v35, v31

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/Node;

    move-object/from16 v33, v34

    .line 564
    .local v33, "child":Ljavafx/scene/Node;
    move-object/from16 v34, v2

    move-object/from16 v35, v33

    move-wide/from16 v36, v27

    move-wide/from16 v38, v29

    move-wide/from16 v40, v23

    move-object/from16 v42, v22

    const/16 v43, 0x0

    aget-object v42, v42, v43

    move/from16 v43, v31

    aget-wide v42, v42, v43

    move-object/from16 v44, v22

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move/from16 v45, v31

    aget-wide v44, v44, v45

    move-object/from16 v46, v33

    .line 566
    invoke-static/range {v46 .. v46}, Ljavafx/scene/layout/VBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v46

    move/from16 v47, v21

    const/16 v48, 0x1

    move-object/from16 v49, v19

    move-object/from16 v50, v20

    .line 564
    invoke-virtual/range {v34 .. v50}, Ljavafx/scene/layout/VBox;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 568
    move-wide/from16 v34, v29

    move-object/from16 v36, v22

    const/16 v37, 0x0

    aget-object v36, v36, v37

    move/from16 v37, v31

    aget-wide v36, v36, v37

    move-wide/from16 v38, v17

    add-double v36, v36, v38

    add-double v34, v34, v36

    move-wide/from16 v29, v34

    .line 562
    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    .line 570
    .end local v33    # "child":Ljavafx/scene/Node;
    :cond_0
    move-object/from16 v34, v2

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Ljavafx/scene/layout/VBox;->performingLayout:Z

    .line 571
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/VBox;->performingLayout:Z

    if-eqz v1, :cond_0

    .line 533
    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/VBox;->biasDirty:Z

    .line 536
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/VBox;->bias:Ljavafx/geometry/Orientation;

    .line 537
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 538
    goto :goto_0
.end method

.method public final setAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/VBox;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setFillWidth(Z)V
    .locals 4

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/VBox;->fillWidthProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setSpacing(D)V
    .locals 7

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->spacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final spacingProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 254
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/VBox$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/VBox$1;-><init>(Ljavafx/scene/layout/VBox;)V

    iput-object v2, v1, Ljavafx/scene/layout/VBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    .line 276
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox;
    return-object v0
.end method
