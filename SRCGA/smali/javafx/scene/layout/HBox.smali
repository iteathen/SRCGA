.class public Ljavafx/scene/layout/HBox;
.super Ljavafx/scene/layout/Pane;
.source "HBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/layout/HBox$StyleableProperties;
    }
.end annotation


# static fields
.field private static final HGROW_CONSTRAINT:Ljava/lang/String; = "hbox-hgrow"

.field private static final MARGIN_CONSTRAINT:Ljava/lang/String; = "hbox-margin"

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

.field private baselineOffset:D

.field private bias:Ljavafx/geometry/Orientation;

.field private biasDirty:Z

.field private fillHeight:Ljavafx/beans/property/BooleanProperty;

.field private minBaselineComplement:D

.field private performingLayout:Z

.field private prefBaselineComplement:D

.field private spacing:Ljavafx/beans/property/DoubleProperty;

.field private tempArray:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Ljavafx/scene/layout/HBox$$Lambda$2;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v0

    sput-object v0, Ljavafx/scene/layout/HBox;->marginAccessor:Ljavafx/util/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 153
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/HBox;->biasDirty:Z

    .line 154
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/layout/HBox;->performingLayout:Z

    .line 155
    move-object v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->minBaselineComplement:D

    .line 156
    move-object v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->prefBaselineComplement:D

    .line 579
    move-object v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->baselineOffset:D

    .line 231
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-wide v1, p1

    .local v1, "spacing":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/HBox;-><init>()V

    .line 239
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/HBox;->setSpacing(D)V

    .line 240
    return-void
.end method

.method public varargs constructor <init>(D[Ljavafx/scene/Node;)V
    .locals 9

    .prologue
    .line 259
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/HBox;
    move-wide v2, p1

    .local v2, "spacing":D
    move-object v4, p3

    .local v4, "children":[Ljavafx/scene/Node;
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/layout/HBox;-><init>()V

    .line 260
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/HBox;->setSpacing(D)V

    .line 261
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 262
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 248
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/HBox;
    move-object v2, p1

    .local v2, "children":[Ljavafx/scene/Node;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 153
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/layout/HBox;->biasDirty:Z

    .line 154
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/layout/HBox;->performingLayout:Z

    .line 155
    move-object v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    iput-wide v4, v3, Ljavafx/scene/layout/HBox;->minBaselineComplement:D

    .line 156
    move-object v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    iput-wide v4, v3, Ljavafx/scene/layout/HBox;->prefBaselineComplement:D

    .line 579
    move-object v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    iput-wide v4, v3, Ljavafx/scene/layout/HBox;->baselineOffset:D

    .line 249
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 250
    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/layout/HBox;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/HBox;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/layout/HBox;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/HBox;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/layout/HBox;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/HBox;
    return-object v0
.end method

.method static synthetic access$lambda$0([[DLjava/lang/Integer;)Ljava/lang/Double;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/layout/HBox;->lambda$layoutChildren$508([[DLjava/lang/Integer;)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/HBox;->lambda$static$507(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private adjustAreaWidths(Ljava/util/List;[[DDD)D
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
    .line 464
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/HBox;
    move-object/from16 v3, p1

    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v4, p2

    .local v4, "areaWidths":[[D
    move-wide/from16 v5, p3

    .local v5, "width":D
    move-wide/from16 v7, p5

    .local v7, "height":D
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/HBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v22

    move-object/from16 v9, v22

    .line 465
    .local v9, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 466
    .local v10, "top":D
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 468
    .local v12, "bottom":D
    move-object/from16 v22, v4

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljavafx/scene/layout/HBox;->sum([DI)D

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

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/layout/HBox;->getSpacing()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 469
    .local v14, "contentWidth":D
    move-wide/from16 v22, v5

    move-object/from16 v24, v2

    move-object/from16 v25, v9

    .line 470
    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v2

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-wide/from16 v24, v14

    sub-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 472
    .local v16, "extraWidth":D
    move-wide/from16 v22, v16

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_0

    .line 473
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Ljavafx/scene/layout/HBox;->shouldFillHeight()Z

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

    .line 474
    .local v18, "refHeight":D
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    sget-object v25, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    move-wide/from16 v26, v16

    move-wide/from16 v28, v18

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/HBox;->growOrShrinkAreaWidths(Ljava/util/List;[[DLjavafx/scene/layout/Priority;DD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 475
    .local v20, "remaining":D
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    sget-object v25, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    move-wide/from16 v26, v20

    move-wide/from16 v28, v18

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/HBox;->growOrShrinkAreaWidths(Ljava/util/List;[[DLjavafx/scene/layout/Priority;DD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 476
    move-wide/from16 v22, v14

    move-wide/from16 v24, v16

    move-wide/from16 v26, v20

    sub-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 478
    .end local v18    # "refHeight":D
    .end local v20    # "remaining":D
    :cond_0
    move-wide/from16 v22, v14

    move-wide/from16 v2, v22

    .end local v2    # "this":Ljavafx/scene/layout/HBox;
    return-wide v2

    .line 473
    .restart local v2    # "this":Ljavafx/scene/layout/HBox;
    :cond_1
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public static clearConstraints(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/HBox;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 219
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/HBox;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 220
    return-void
.end method

.method private computeContentWidth(Ljava/util/List;DZ)D
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
    .line 532
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/HBox;
    move-object v2, p1

    .local v2, "managedChildren":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-wide/from16 v3, p2

    .local v3, "height":D
    move/from16 v5, p4

    .local v5, "minimum":Z
    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/HBox;->getAreaWidths(Ljava/util/List;DZ)[[D

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljavafx/scene/layout/HBox;->sum([DI)D

    move-result-wide v6

    move-object v8, v2

    .line 533
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/layout/HBox;->getSpacing()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Ljavafx/scene/layout/HBox;
    return-wide v1
.end method

.method private getAlignmentInternal()Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v2

    move-object v1, v2

    .line 333
    .local v1, "localPos":Ljavafx/geometry/Pos;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getAreaWidths(Ljava/util/List;DZ)[[D
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
    .line 447
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/HBox;
    move-object/from16 v2, p1

    .local v2, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-wide/from16 v3, p2

    .local v3, "height":D
    move/from16 v5, p4

    .local v5, "minimum":Z
    move-object v14, v1

    move-object v15, v2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljavafx/scene/layout/HBox;->getTempArray(I)[[D

    move-result-object v14

    move-object v6, v14

    .line 448
    .local v6, "temp":[[D
    move-wide v14, v3

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 449
    :goto_0
    move-wide v7, v14

    .line 450
    .local v7, "insideHeight":D
    move-object v14, v1

    invoke-direct {v14}, Ljavafx/scene/layout/HBox;->shouldFillHeight()Z

    move-result v14

    move v9, v14

    .line 451
    .local v9, "shouldFillHeight":Z
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

    if-ge v14, v15, :cond_2

    .line 452
    move-object v14, v2

    move v15, v10

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    move-object v12, v14

    .line 453
    .local v12, "child":Ljavafx/scene/Node;
    move-object v14, v12

    invoke-static {v14}, Ljavafx/scene/layout/HBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v14

    move-object v13, v14

    .line 454
    .local v13, "margin":Ljavafx/geometry/Insets;
    move v14, v5

    if-eqz v14, :cond_1

    .line 455
    move-object v14, v6

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/layout/HBox;->getMinBaselineComplement()D

    move-result-wide v18

    move-object/from16 v20, v13

    move-wide/from16 v21, v7

    move/from16 v23, v9

    invoke-virtual/range {v16 .. v23}, Ljavafx/scene/layout/HBox;->computeChildMinAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v16

    aput-wide v16, v14, v15

    .line 451
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 448
    .end local v7    # "insideHeight":D
    .end local v9    # "shouldFillHeight":Z
    .end local v10    # "i":I
    .end local v11    # "size":I
    .end local v12    # "child":Ljavafx/scene/Node;
    .end local v13    # "margin":Ljavafx/geometry/Insets;
    :cond_0
    move-wide v14, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    .line 449
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/HBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/HBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    goto :goto_0

    .line 457
    .restart local v7    # "insideHeight":D
    .restart local v9    # "shouldFillHeight":Z
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

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/layout/HBox;->getPrefBaselineComplement()D

    move-result-wide v18

    move-object/from16 v20, v13

    move-wide/from16 v21, v7

    move/from16 v23, v9

    invoke-virtual/range {v16 .. v23}, Ljavafx/scene/layout/HBox;->computeChildPrefAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v16

    aput-wide v16, v14, v15

    goto :goto_2

    .line 460
    .end local v12    # "child":Ljavafx/scene/Node;
    .end local v13    # "margin":Ljavafx/geometry/Insets;
    :cond_2
    move-object v14, v6

    move-object v1, v14

    .end local v1    # "this":Ljavafx/scene/layout/HBox;
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
    .line 740
    # getter for: Ljavafx/scene/layout/HBox$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/layout/HBox$StyleableProperties;->access$600()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getHgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "hbox-hgrow"

    invoke-static {v1, v2}, Ljavafx/scene/layout/HBox;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/layout/Priority;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 3

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "hbox-margin"

    invoke-static {v1, v2}, Ljavafx/scene/layout/HBox;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getMinBaselineComplement()D
    .locals 4

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/HBox;->minBaselineComplement:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/HBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v1

    sget-object v2, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    if-ne v1, v2, :cond_1

    .line 560
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getManagedChildren()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljavafx/scene/layout/HBox;->getMinBaselineComplement(Ljava/util/List;)D

    move-result-wide v2

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->minBaselineComplement:D

    .line 565
    :cond_0
    :goto_0
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/HBox;->minBaselineComplement:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-wide v0

    .line 562
    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
    :cond_1
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->minBaselineComplement:D

    goto :goto_0
.end method

.method private getPrefBaselineComplement()D
    .locals 4

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/HBox;->prefBaselineComplement:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/HBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v1

    sget-object v2, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    if-ne v1, v2, :cond_1

    .line 571
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getManagedChildren()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljavafx/scene/layout/HBox;->getPrefBaselineComplement(Ljava/util/List;)D

    move-result-wide v2

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->prefBaselineComplement:D

    .line 576
    :cond_0
    :goto_0
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/HBox;->prefBaselineComplement:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-wide v0

    .line 573
    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
    :cond_1
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->prefBaselineComplement:D

    goto :goto_0
.end method

.method private getTempArray(I)[[D
    .locals 6

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/HBox;->tempArray:[[D

    if-nez v2, :cond_1

    .line 653
    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    filled-new-array {v3, v4}, [I

    move-result-object v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, v2, Ljavafx/scene/layout/HBox;->tempArray:[[D

    .line 657
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/HBox;->tempArray:[[D

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-object v0

    .line 654
    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/HBox;->tempArray:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 655
    move-object v2, v0

    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/HBox;->tempArray:[[D

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

    iput-object v3, v2, Ljavafx/scene/layout/HBox;->tempArray:[[D

    goto :goto_0
.end method

.method private growOrShrinkAreaWidths(Ljava/util/List;[[DLjavafx/scene/layout/Priority;DD)D
    .locals 38
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
    .line 482
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/HBox;
    move-object/from16 v4, p1

    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v5, p2

    .local v5, "areaWidths":[[D
    move-object/from16 v6, p3

    .local v6, "priority":Ljavafx/scene/layout/Priority;
    move-wide/from16 v7, p4

    .local v7, "extraWidth":D
    move-wide/from16 v9, p6

    .local v9, "height":D
    move-wide/from16 v26, v7

    const-wide/16 v28, 0x0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_0

    const/16 v26, 0x1

    :goto_0
    move/from16 v11, v26

    .line 483
    .local v11, "shrinking":Z
    const/16 v26, 0x0

    move/from16 v12, v26

    .line 485
    .local v12, "adjustingNumber":I
    move-object/from16 v26, v5

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v13, v26

    .line 486
    .local v13, "usedWidths":[D
    move-object/from16 v26, v5

    const/16 v27, 0x1

    aget-object v26, v26, v27

    move-object/from16 v14, v26

    .line 487
    .local v14, "temp":[D
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Ljavafx/scene/layout/HBox;->shouldFillHeight()Z

    move-result v26

    move/from16 v15, v26

    .line 489
    .local v15, "shouldFillHeight":Z
    move/from16 v26, v11

    if-eqz v26, :cond_3

    .line 490
    move-object/from16 v26, v4

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v12, v26

    .line 491
    const/16 v26, 0x0

    move/from16 v16, v26

    .local v16, "i":I
    move-object/from16 v26, v4

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v17, v26

    .local v17, "size":I
    :goto_1
    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 492
    move-object/from16 v26, v4

    move/from16 v27, v16

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/scene/Node;

    move-object/from16 v18, v26

    .line 493
    .local v18, "child":Ljavafx/scene/Node;
    move-object/from16 v26, v14

    move/from16 v27, v16

    move-object/from16 v28, v3

    move-object/from16 v29, v18

    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Ljavafx/scene/layout/HBox;->getMinBaselineComplement()D

    move-result-wide v30

    move-object/from16 v32, v18

    invoke-static/range {v32 .. v32}, Ljavafx/scene/layout/HBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v32

    move-wide/from16 v33, v9

    move/from16 v35, v15

    invoke-virtual/range {v28 .. v35}, Ljavafx/scene/layout/HBox;->computeChildMinAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v28

    aput-wide v28, v26, v27

    .line 491
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 482
    .end local v11    # "shrinking":Z
    .end local v12    # "adjustingNumber":I
    .end local v13    # "usedWidths":[D
    .end local v14    # "temp":[D
    .end local v15    # "shouldFillHeight":Z
    .end local v16    # "i":I
    .end local v17    # "size":I
    .end local v18    # "child":Ljavafx/scene/Node;
    :cond_0
    const/16 v26, 0x0

    goto :goto_0

    .line 491
    .line 507
    .restart local v11    # "shrinking":Z
    .restart local v12    # "adjustingNumber":I
    .restart local v13    # "usedWidths":[D
    .restart local v14    # "temp":[D
    .restart local v15    # "shouldFillHeight":Z
    .restart local v16    # "i":I
    .restart local v17    # "size":I
    :cond_1
    move-wide/from16 v26, v7

    move-wide/from16 v16, v26

    .line 508
    .end local v17    # "size":I
    .local v16, "available":D
    :goto_2
    move-wide/from16 v26, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v26, v28

    if-lez v26, :cond_6

    move/from16 v26, v12

    if-lez v26, :cond_6

    .line 509
    move-object/from16 v26, v3

    move-wide/from16 v27, v16

    move/from16 v29, v12

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    div-double v27, v27, v29

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/layout/HBox;->snapPortion(D)D

    move-result-wide v26

    move-wide/from16 v18, v26

    .line 510
    .local v18, "portion":D
    const/16 v26, 0x0

    move/from16 v20, v26

    .local v20, "i":I
    move-object/from16 v26, v4

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v21, v26

    .local v21, "size":I
    :goto_3
    move/from16 v26, v20

    move/from16 v27, v21

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 511
    move-object/from16 v26, v14

    move/from16 v27, v20

    aget-wide v26, v26, v27

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_5

    .line 512
    .line 510
    :cond_2
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 496
    .end local v16    # "available":D
    .end local v18    # "portion":D
    .end local v20    # "i":I
    .end local v21    # "size":I
    :cond_3
    const/16 v26, 0x0

    move/from16 v16, v26

    .local v16, "i":I
    move-object/from16 v26, v4

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v17, v26

    .restart local v17    # "size":I
    :goto_5
    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 497
    move-object/from16 v26, v4

    move/from16 v27, v16

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/scene/Node;

    move-object/from16 v18, v26

    .line 498
    .local v18, "child":Ljavafx/scene/Node;
    move-object/from16 v26, v18

    invoke-static/range {v26 .. v26}, Ljavafx/scene/layout/HBox;->getHgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;

    move-result-object v26

    move-object/from16 v27, v6

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 499
    move-object/from16 v26, v14

    move/from16 v27, v16

    move-object/from16 v28, v3

    move-object/from16 v29, v18

    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Ljavafx/scene/layout/HBox;->getMinBaselineComplement()D

    move-result-wide v30

    move-object/from16 v32, v18

    invoke-static/range {v32 .. v32}, Ljavafx/scene/layout/HBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v32

    move-wide/from16 v33, v9

    move/from16 v35, v15

    invoke-virtual/range {v28 .. v35}, Ljavafx/scene/layout/HBox;->computeChildMaxAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v28

    aput-wide v28, v26, v27

    .line 500
    add-int/lit8 v12, v12, 0x1

    .line 496
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 502
    :cond_4
    move-object/from16 v26, v14

    move/from16 v27, v16

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    aput-wide v28, v26, v27

    goto :goto_6

    .line 514
    .end local v17    # "size":I
    .local v16, "available":D
    .local v18, "portion":D
    .restart local v20    # "i":I
    .restart local v21    # "size":I
    :cond_5
    move-object/from16 v26, v14

    move/from16 v27, v20

    aget-wide v26, v26, v27

    move-object/from16 v28, v13

    move/from16 v29, v20

    aget-wide v28, v28, v29

    sub-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 515
    .local v22, "limit":D
    move-wide/from16 v26, v22

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    move-wide/from16 v28, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    cmpg-double v26, v26, v28

    if-gtz v26, :cond_7

    move-wide/from16 v26, v22

    :goto_7
    move-wide/from16 v24, v26

    .line 516
    .local v24, "change":D
    move-object/from16 v26, v13

    move/from16 v27, v20

    move-object/from16 v36, v26

    move/from16 v37, v27

    move-object/from16 v26, v36

    move/from16 v27, v37

    move-object/from16 v28, v36

    move/from16 v29, v37

    aget-wide v28, v28, v29

    move-wide/from16 v30, v24

    add-double v28, v28, v30

    aput-wide v28, v26, v27

    .line 517
    move-wide/from16 v26, v16

    move-wide/from16 v28, v24

    sub-double v26, v26, v28

    move-wide/from16 v16, v26

    .line 518
    move-wide/from16 v26, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_8

    .line 519
    .line 528
    .end local v18    # "portion":D
    .end local v20    # "i":I
    .end local v21    # "size":I
    .end local v22    # "limit":D
    .end local v24    # "change":D
    :cond_6
    move-wide/from16 v26, v16

    move-wide/from16 v3, v26

    .end local v3    # "this":Ljavafx/scene/layout/HBox;
    return-wide v3

    .line 515
    .restart local v3    # "this":Ljavafx/scene/layout/HBox;
    .restart local v18    # "portion":D
    .restart local v20    # "i":I
    .restart local v21    # "size":I
    .restart local v22    # "limit":D
    :cond_7
    move-wide/from16 v26, v18

    goto :goto_7

    .line 521
    .restart local v24    # "change":D
    :cond_8
    move-wide/from16 v26, v24

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    move-wide/from16 v28, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    cmpg-double v26, v26, v28

    if-gez v26, :cond_2

    .line 522
    move-object/from16 v26, v14

    move/from16 v27, v20

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    aput-wide v28, v26, v27

    .line 523
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_4

    .line 526
    .end local v22    # "limit":D
    .end local v24    # "change":D
    :cond_9
    goto/16 :goto_2
.end method

.method private static synthetic lambda$layoutChildren$508([[DLjava/lang/Integer;)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "actualAreaWidths":[[D
    move-object v1, p1

    .local v1, "i":Ljava/lang/Integer;
    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "actualAreaWidths":[[D
    return-object v0
.end method

.method private static synthetic lambda$static$507(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "n":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/HBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "n":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V
    .locals 5

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/layout/Priority;
    move-object v2, v0

    const-string v3, "hbox-hgrow"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/HBox;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public static setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    const-string v3, "hbox-margin"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/HBox;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method private shouldFillHeight()Z
    .locals 3

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/HBox;->isFillHeight()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/HBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v1

    sget-object v2, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sum([DI)D
    .locals 10

    .prologue
    .line 537
    move-object v1, p0

    .local v1, "array":[D
    move v2, p1

    .local v2, "size":I
    const/4 v6, 0x0

    move v3, v6

    .line 538
    .local v3, "i":I
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 539
    .local v4, "res":D
    :goto_0
    move v6, v3

    move v7, v2

    if-eq v6, v7, :cond_0

    .line 540
    move-wide v6, v4

    move-object v8, v1

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    move-wide v4, v6

    goto :goto_0

    .line 542
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
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 303
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/HBox$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/HBox$2;-><init>(Ljavafx/scene/layout/HBox;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Ljavafx/scene/layout/HBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    .line 325
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-object v0
.end method

.method protected computeMinHeight(D)D
    .locals 15

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/HBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v8

    move-object v3, v8

    .line 408
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/HBox;->getManagedChildren()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 409
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const-wide/16 v8, 0x0

    move-wide v5, v8

    .line 410
    .local v5, "contentHeight":D
    move-wide v8, v1

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/HBox;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 411
    move-object v8, v0

    move-object v9, v4

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/HBox;->getAreaWidths(Ljava/util/List;DZ)[[D

    move-result-object v8

    move-object v7, v8

    .line 412
    .local v7, "prefWidths":[[D
    move-object v8, v0

    move-object v9, v4

    move-object v10, v7

    move-wide v11, v1

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-direct/range {v8 .. v14}, Ljavafx/scene/layout/HBox;->adjustAreaWidths(Ljava/util/List;[[DDD)D

    move-result-wide v8

    .line 413
    move-object v8, v0

    move-object v9, v4

    sget-object v10, Ljavafx/scene/layout/HBox;->marginAccessor:Ljavafx/util/Callback;

    move-object v11, v7

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v12, v0

    invoke-direct {v12}, Ljavafx/scene/layout/HBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/HBox;->computeMaxMinAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;)D

    move-result-wide v8

    move-wide v5, v8

    .line 417
    .end local v7    # "prefWidths":[[D
    :goto_0
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v8

    move-wide v10, v5

    add-double/2addr v8, v10

    move-object v10, v0

    move-object v11, v3

    .line 419
    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-wide v0

    .line 415
    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
    :cond_0
    move-object v8, v0

    move-object v9, v4

    sget-object v10, Ljavafx/scene/layout/HBox;->marginAccessor:Ljavafx/util/Callback;

    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/layout/HBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Ljavafx/scene/layout/HBox;->computeMaxMinAreaHeight(Ljava/util/List;Ljavafx/util/Callback;Ljavafx/geometry/VPos;)D

    move-result-wide v8

    move-wide v5, v8

    goto :goto_0
.end method

.method protected computeMinWidth(D)D
    .locals 11

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-wide v1, p1

    .local v1, "height":D
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    move-object v3, v4

    .line 401
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v4

    move-object v6, v0

    move-object v7, v0

    .line 402
    invoke-virtual {v7}, Ljavafx/scene/layout/HBox;->getManagedChildren()Ljava/util/List;

    move-result-object v7

    move-wide v8, v1

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/HBox;->computeContentWidth(Ljava/util/List;DZ)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v0

    move-object v7, v3

    .line 403
    invoke-virtual {v7}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-wide v0
.end method

.method protected computePrefHeight(D)D
    .locals 15

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/HBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v8

    move-object v3, v8

    .line 431
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/HBox;->getManagedChildren()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 432
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const-wide/16 v8, 0x0

    move-wide v5, v8

    .line 433
    .local v5, "contentHeight":D
    move-wide v8, v1

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/HBox;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 434
    move-object v8, v0

    move-object v9, v4

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/HBox;->getAreaWidths(Ljava/util/List;DZ)[[D

    move-result-object v8

    move-object v7, v8

    .line 435
    .local v7, "prefWidths":[[D
    move-object v8, v0

    move-object v9, v4

    move-object v10, v7

    move-wide v11, v1

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-direct/range {v8 .. v14}, Ljavafx/scene/layout/HBox;->adjustAreaWidths(Ljava/util/List;[[DDD)D

    move-result-wide v8

    .line 436
    move-object v8, v0

    move-object v9, v4

    sget-object v10, Ljavafx/scene/layout/HBox;->marginAccessor:Ljavafx/util/Callback;

    move-object v11, v7

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v12, v0

    invoke-direct {v12}, Ljavafx/scene/layout/HBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/HBox;->computeMaxPrefAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;)D

    move-result-wide v8

    move-wide v5, v8

    .line 440
    .end local v7    # "prefWidths":[[D
    :goto_0
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v8

    move-wide v10, v5

    add-double/2addr v8, v10

    move-object v10, v0

    move-object v11, v3

    .line 442
    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-wide v0

    .line 438
    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
    :cond_0
    move-object v8, v0

    move-object v9, v4

    sget-object v10, Ljavafx/scene/layout/HBox;->marginAccessor:Ljavafx/util/Callback;

    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/layout/HBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Ljavafx/scene/layout/HBox;->computeMaxPrefAreaHeight(Ljava/util/List;Ljavafx/util/Callback;Ljavafx/geometry/VPos;)D

    move-result-wide v8

    move-wide v5, v8

    goto :goto_0
.end method

.method protected computePrefWidth(D)D
    .locals 11

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-wide v1, p1

    .local v1, "height":D
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    move-object v3, v4

    .line 424
    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v4

    move-object v6, v0

    move-object v7, v0

    .line 425
    invoke-virtual {v7}, Ljavafx/scene/layout/HBox;->getManagedChildren()Ljava/util/List;

    move-result-object v7

    move-wide v8, v1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/HBox;->computeContentWidth(Ljava/util/List;DZ)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v0

    move-object v7, v3

    .line 426
    invoke-virtual {v7}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-wide v0
.end method

.method public final fillHeightProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 344
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/HBox$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/HBox$3;-><init>(Ljavafx/scene/layout/HBox;Z)V

    iput-object v2, v1, Ljavafx/scene/layout/HBox;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    .line 366
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-object v0
.end method

.method public final getAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->alignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public getBaselineOffset()D
    .locals 20

    .prologue
    .line 583
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/HBox;
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/layout/HBox;->getManagedChildren()Ljava/util/List;

    move-result-object v14

    move-object v2, v14

    .line 584
    .local v2, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v14, v2

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 585
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-wide v1, v14

    .line 608
    .end local v1    # "this":Ljavafx/scene/layout/HBox;
    :goto_0
    return-wide v1

    .line 587
    .restart local v1    # "this":Ljavafx/scene/layout/HBox;
    :cond_0
    move-object v14, v1

    iget-wide v14, v14, Ljavafx/scene/layout/HBox;->baselineOffset:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 588
    move-object v14, v1

    invoke-direct {v14}, Ljavafx/scene/layout/HBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v14

    move-object v3, v14

    .line 589
    .local v3, "vpos":Ljavafx/geometry/VPos;
    move-object v14, v3

    sget-object v15, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    if-ne v14, v15, :cond_5

    .line 590
    const-wide/16 v14, 0x0

    move-wide v4, v14

    .line 591
    .local v4, "max":D
    const/4 v14, 0x0

    move v6, v14

    .local v6, "i":I
    move-object v14, v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v7, v14

    .local v7, "sz":I
    :goto_1
    move v14, v6

    move v15, v7

    if-ge v14, v15, :cond_1

    .line 592
    move-object v14, v2

    move v15, v6

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    move-object v8, v14

    .line 593
    .local v8, "child":Ljavafx/scene/Node;
    move-object v14, v8

    invoke-virtual {v14}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v14

    move-wide v9, v14

    .line 594
    .local v9, "offset":D
    move-wide v14, v9

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_3

    .line 595
    move-object v14, v1

    const-wide/high16 v15, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v15, v14, Ljavafx/scene/layout/HBox;->baselineOffset:D

    .line 596
    .line 603
    .end local v8    # "child":Ljavafx/scene/Node;
    .end local v9    # "offset":D
    :cond_1
    move-object v14, v1

    move-wide v15, v4

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/HBox;->snappedTopInset()D

    move-result-wide v17

    add-double v15, v15, v17

    iput-wide v15, v14, Ljavafx/scene/layout/HBox;->baselineOffset:D

    .line 604
    .line 608
    .end local v3    # "vpos":Ljavafx/geometry/VPos;
    .end local v4    # "max":D
    .end local v6    # "i":I
    .end local v7    # "sz":I
    :cond_2
    :goto_2
    move-object v14, v1

    iget-wide v14, v14, Ljavafx/scene/layout/HBox;->baselineOffset:D

    move-wide v1, v14

    goto :goto_0

    .line 598
    .restart local v3    # "vpos":Ljavafx/geometry/VPos;
    .restart local v4    # "max":D
    .restart local v6    # "i":I
    .restart local v7    # "sz":I
    .restart local v8    # "child":Ljavafx/scene/Node;
    .restart local v9    # "offset":D
    :cond_3
    move-object v14, v8

    invoke-static {v14}, Ljavafx/scene/layout/HBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v14

    move-object v11, v14

    .line 599
    .local v11, "margin":Ljavafx/geometry/Insets;
    move-object v14, v11

    if-eqz v14, :cond_4

    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v14

    :goto_3
    move-wide v12, v14

    .line 600
    .local v12, "top":D
    move-wide v14, v4

    move-wide/from16 v16, v12

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v9

    add-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-wide v4, v14

    .line 591
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 599
    .end local v12    # "top":D
    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_3

    .line 605
    .end local v4    # "max":D
    .end local v6    # "i":I
    .end local v7    # "sz":I
    .end local v8    # "child":Ljavafx/scene/Node;
    .end local v9    # "offset":D
    .end local v11    # "margin":Ljavafx/geometry/Insets;
    :cond_5
    move-object v14, v1

    const-wide/high16 v15, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v15, v14, Ljavafx/scene/layout/HBox;->baselineOffset:D

    goto :goto_2
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 7

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/HBox;->biasDirty:Z

    if-eqz v5, :cond_1

    .line 383
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/layout/HBox;->bias:Ljavafx/geometry/Orientation;

    .line 384
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getManagedChildren()Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 385
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

    .line 386
    .local v3, "child":Ljavafx/scene/Node;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v5

    move-object v4, v5

    .line 387
    .local v4, "contentBias":Ljavafx/geometry/Orientation;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 388
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/layout/HBox;->bias:Ljavafx/geometry/Orientation;

    .line 389
    move-object v5, v4

    sget-object v6, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v5, v6, :cond_2

    .line 390
    .line 394
    .end local v3    # "child":Ljavafx/scene/Node;
    .end local v4    # "contentBias":Ljavafx/geometry/Orientation;
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/layout/HBox;->biasDirty:Z

    .line 396
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/HBox;->bias:Ljavafx/geometry/Orientation;

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-object v0

    .line 393
    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
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
    .line 752
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    invoke-static {}, Ljavafx/scene/layout/HBox;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-object v0
.end method

.method public final getSpacing()D
    .locals 4

    .prologue
    .line 296
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/HBox;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/HBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/HBox;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/HBox;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/HBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final isFillHeight()Z
    .locals 2

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/HBox;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 55

    .prologue
    .line 612
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/HBox;
    move-object/from16 v38, v2

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput-boolean v0, v1, Ljavafx/scene/layout/HBox;->performingLayout:Z

    .line 613
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->getManagedChildren()Ljava/util/List;

    move-result-object v38

    move-object/from16 v3, v38

    .line 614
    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v38

    move-object/from16 v4, v38

    .line 615
    .local v4, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v38, v2

    invoke-direct/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v38

    move-object/from16 v5, v38

    .line 616
    .local v5, "align":Ljavafx/geometry/Pos;
    move-object/from16 v38, v5

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v38

    move-object/from16 v6, v38

    .line 617
    .local v6, "alignHpos":Ljavafx/geometry/HPos;
    move-object/from16 v38, v5

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v38

    move-object/from16 v7, v38

    .line 618
    .local v7, "alignVpos":Ljavafx/geometry/VPos;
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->getWidth()D

    move-result-wide v38

    move-wide/from16 v8, v38

    .line 619
    .local v8, "width":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->getHeight()D

    move-result-wide v38

    move-wide/from16 v10, v38

    .line 620
    .local v10, "height":D
    move-object/from16 v38, v2

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 621
    .local v12, "top":D
    move-object/from16 v38, v2

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v14, v38

    .line 622
    .local v14, "left":D
    move-object/from16 v38, v2

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v16, v38

    .line 623
    .local v16, "bottom":D
    move-object/from16 v38, v2

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v18, v38

    .line 624
    .local v18, "right":D
    move-object/from16 v38, v2

    move-object/from16 v39, v2

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/HBox;->getSpacing()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/HBox;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v20, v38

    .line 625
    .local v20, "space":D
    move-object/from16 v38, v2

    invoke-direct/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->shouldFillHeight()Z

    move-result v38

    move/from16 v22, v38

    .line 627
    .local v22, "shouldFillHeight":Z
    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-wide/from16 v40, v10

    const/16 v42, 0x0

    invoke-direct/range {v38 .. v42}, Ljavafx/scene/layout/HBox;->getAreaWidths(Ljava/util/List;DZ)[[D

    move-result-object v38

    move-object/from16 v23, v38

    .line 628
    .local v23, "actualAreaWidths":[[D
    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v40, v23

    move-wide/from16 v41, v8

    move-wide/from16 v43, v10

    invoke-direct/range {v38 .. v44}, Ljavafx/scene/layout/HBox;->adjustAreaWidths(Ljava/util/List;[[DDD)D

    move-result-wide v38

    move-wide/from16 v24, v38

    .line 629
    .local v24, "contentWidth":D
    move-wide/from16 v38, v10

    move-wide/from16 v40, v12

    sub-double v38, v38, v40

    move-wide/from16 v40, v16

    sub-double v38, v38, v40

    move-wide/from16 v26, v38

    .line 631
    .local v26, "contentHeight":D
    move-wide/from16 v38, v14

    move-wide/from16 v40, v8

    move-wide/from16 v42, v14

    sub-double v40, v40, v42

    move-wide/from16 v42, v18

    sub-double v40, v40, v42

    move-wide/from16 v42, v24

    move-object/from16 v44, v5

    invoke-virtual/range {v44 .. v44}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v44

    invoke-static/range {v40 .. v44}, Ljavafx/scene/layout/HBox;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v28, v38

    .line 632
    .local v28, "x":D
    move-wide/from16 v38, v12

    move-wide/from16 v30, v38

    .line 633
    .local v30, "y":D
    const-wide/high16 v38, -0x4010000000000000L    # -1.0

    move-wide/from16 v32, v38

    .line 634
    .local v32, "baselineOffset":D
    move-object/from16 v38, v7

    sget-object v39, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_0

    .line 635
    move-object/from16 v38, v2

    invoke-direct/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->getMinBaselineComplement()D

    move-result-wide v38

    move-wide/from16 v34, v38

    .line 636
    .local v34, "baselineComplement":D
    move-object/from16 v38, v2

    move-object/from16 v39, v3

    sget-object v40, Ljavafx/scene/layout/HBox;->marginAccessor:Ljavafx/util/Callback;

    move-object/from16 v41, v23

    invoke-static/range {v41 .. v41}, Ljavafx/scene/layout/HBox$$Lambda$1;->lambdaFactory$([[D)Ljava/util/function/Function;

    move-result-object v41

    move-wide/from16 v42, v26

    move/from16 v44, v22

    move-wide/from16 v45, v34

    invoke-virtual/range {v38 .. v46}, Ljavafx/scene/layout/HBox;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZD)D

    move-result-wide v38

    move-wide/from16 v32, v38

    .line 640
    .end local v34    # "baselineComplement":D
    :cond_0
    const/16 v38, 0x0

    move/from16 v34, v38

    .local v34, "i":I
    move-object/from16 v38, v3

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v35, v38

    .local v35, "size":I
    :goto_0
    move/from16 v38, v34

    move/from16 v39, v35

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1

    .line 641
    move-object/from16 v38, v3

    move/from16 v39, v34

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljavafx/scene/Node;

    move-object/from16 v36, v38

    .line 642
    .local v36, "child":Ljavafx/scene/Node;
    move-object/from16 v38, v36

    invoke-static/range {v38 .. v38}, Ljavafx/scene/layout/HBox;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v38

    move-object/from16 v37, v38

    .line 643
    .local v37, "margin":Ljavafx/geometry/Insets;
    move-object/from16 v38, v2

    move-object/from16 v39, v36

    move-wide/from16 v40, v28

    move-wide/from16 v42, v30

    move-object/from16 v44, v23

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move/from16 v45, v34

    aget-wide v44, v44, v45

    move-wide/from16 v46, v26

    move-wide/from16 v48, v32

    move-object/from16 v50, v37

    const/16 v51, 0x1

    move/from16 v52, v22

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    invoke-virtual/range {v38 .. v54}, Ljavafx/scene/layout/HBox;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 646
    move-wide/from16 v38, v28

    move-object/from16 v40, v23

    const/16 v41, 0x0

    aget-object v40, v40, v41

    move/from16 v41, v34

    aget-wide v40, v40, v41

    move-wide/from16 v42, v20

    add-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v28, v38

    .line 640
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 648
    .end local v36    # "child":Ljavafx/scene/Node;
    .end local v37    # "margin":Ljavafx/geometry/Insets;
    :cond_1
    move-object/from16 v38, v2

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput-boolean v0, v1, Ljavafx/scene/layout/HBox;->performingLayout:Z

    .line 649
    return-void
.end method

.method public requestLayout()V
    .locals 4

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/HBox;->performingLayout:Z

    if-eqz v1, :cond_0

    .line 547
    .line 555
    :goto_0
    return-void

    .line 549
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/HBox;->biasDirty:Z

    .line 550
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/HBox;->bias:Ljavafx/geometry/Orientation;

    .line 551
    move-object v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->minBaselineComplement:D

    .line 552
    move-object v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->prefBaselineComplement:D

    .line 553
    move-object v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, v1, Ljavafx/scene/layout/HBox;->baselineOffset:D

    .line 554
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 555
    goto :goto_0
.end method

.method public final setAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setFillHeight(Z)V
    .locals 4

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->fillHeightProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setSpacing(D)V
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->spacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final spacingProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 269
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/HBox$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/HBox$1;-><init>(Ljavafx/scene/layout/HBox;)V

    iput-object v2, v1, Ljavafx/scene/layout/HBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    .line 291
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox;->spacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox;
    return-object v0
.end method
