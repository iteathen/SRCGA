.class public Ljavafx/scene/layout/GridPane;
.super Ljavafx/scene/layout/Pane;
.source "GridPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/layout/GridPane$CompositeSize;,
        Ljavafx/scene/layout/GridPane$Interval;,
        Ljavafx/scene/layout/GridPane$StyleableProperties;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COLUMN_INDEX_CONSTRAINT:Ljava/lang/String; = "gridpane-column"

.field private static final COLUMN_SPAN_CONSTRAINT:Ljava/lang/String; = "gridpane-column-span"

.field private static final FILL_HEIGHT_CONSTRAINT:Ljava/lang/String; = "gridpane-fill-height"

.field private static final FILL_WIDTH_CONSTRAINT:Ljava/lang/String; = "gridpane-fill-width"

.field private static final GRID_LINE_COLOR:Ljavafx/scene/paint/Color;

.field private static final GRID_LINE_DASH:D = 3.0

.field private static final HALIGNMENT_CONSTRAINT:Ljava/lang/String; = "gridpane-halignment"

.field private static final HGROW_CONSTRAINT:Ljava/lang/String; = "gridpane-hgrow"

.field private static final MARGIN_CONSTRAINT:Ljava/lang/String; = "gridpane-margin"

.field public static final REMAINING:I = 0x7fffffff

.field private static final ROW_INDEX_CONSTRAINT:Ljava/lang/String; = "gridpane-row"

.field private static final ROW_SPAN_CONSTRAINT:Ljava/lang/String; = "gridpane-row-span"

.field private static final VALIGNMENT_CONSTRAINT:Ljava/lang/String; = "gridpane-valignment"

.field private static final VGROW_CONSTRAINT:Ljava/lang/String; = "gridpane-vgrow"

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

.field private final columnConstraints:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/layout/ColumnConstraints;",
            ">;"
        }
    .end annotation
.end field

.field private columnGrow:[Ljavafx/scene/layout/Priority;

.field private columnMaxWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

.field private columnMinWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

.field private columnPercentTotal:D

.field private columnPercentWidth:[D

.field private columnPrefWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

.field private currentHeights:Ljavafx/scene/layout/GridPane$CompositeSize;

.field private currentWidths:Ljavafx/scene/layout/GridPane$CompositeSize;

.field private gridLines:Ljavafx/scene/Group;

.field private gridLinesVisible:Ljavafx/beans/property/BooleanProperty;

.field private hgap:Ljavafx/beans/property/DoubleProperty;

.field private metricsDirty:Z

.field private numColumns:I

.field private numRows:I

.field private performingLayout:Z

.field private rowBaseline:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final rowConstraints:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/layout/RowConstraints;",
            ">;"
        }
    .end annotation
.end field

.field private rowGrow:[Ljavafx/scene/layout/Priority;

.field private rowMaxBaselineComplement:[D

.field private rowMaxHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

.field private rowMinBaselineComplement:[D

.field private rowMinHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

.field private rowPercentHeight:[D

.field private rowPercentTotal:D

.field private rowPrefBaselineComplement:[D

.field private rowPrefHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

.field private vgap:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 260
    const-class v0, Ljavafx/scene/layout/GridPane;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/layout/GridPane;->$assertionsDisabled:Z

    .line 414
    invoke-static {}, Ljavafx/scene/layout/GridPane$$Lambda$4;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v0

    sput-object v0, Ljavafx/scene/layout/GridPane;->marginAccessor:Ljavafx/util/Callback;

    .line 661
    const/16 v0, 0x1e

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Ljavafx/scene/paint/Color;->rgb(III)Ljavafx/scene/paint/Color;

    move-result-object v0

    sput-object v0, Ljavafx/scene/layout/GridPane;->GRID_LINE_COLOR:Ljavafx/scene/paint/Color;

    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 893
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/GridPane$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/GridPane$5;-><init>(Ljavafx/scene/layout/GridPane;)V

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->rowConstraints:Ljavafx/collections/ObservableList;

    .line 926
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/GridPane$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/GridPane$6;-><init>(Ljavafx/scene/layout/GridPane;)V

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->columnConstraints:Ljavafx/collections/ObservableList;

    .line 1045
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    .line 1057
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    .line 1064
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/GridPane;->metricsDirty:Z

    .line 1068
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    .line 731
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane$$Lambda$1;->lambdaFactory$(Ljavafx/scene/layout/GridPane;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 732
    return-void
.end method

.method static synthetic access$2200(Ljavafx/scene/layout/GridPane;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->gridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method static synthetic access$2300(Ljavafx/scene/layout/GridPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method static synthetic access$2400(Ljavafx/scene/layout/GridPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method static synthetic access$2500(Ljavafx/scene/layout/GridPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/layout/GridPane;)Ljavafx/scene/Group;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->gridLines:Ljavafx/scene/Group;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method static synthetic access$302(Ljavafx/scene/layout/GridPane;Ljavafx/scene/Group;)Ljavafx/scene/Group;
    .locals 7

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Group;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/layout/GridPane;->gridLines:Ljavafx/scene/Group;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/layout/GridPane;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->rowConstraints:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/layout/GridPane;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->columnConstraints:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/layout/GridPane;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/layout/GridPane;->lambda$new$504(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/layout/GridPane;ILjavafx/scene/layout/GridPane$CompositeSize;DLjava/lang/Integer;)Ljava/lang/Double;
    .locals 13

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move-wide v10, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Ljavafx/scene/layout/GridPane;->lambda$layoutChildren$505(ILjavafx/scene/layout/GridPane$CompositeSize;DLjava/lang/Integer;)Ljava/lang/Double;

    move-result-object v7

    move-object v1, v7

    return-object v1
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/layout/GridPane;Ljavafx/scene/Node;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/GridPane;->lambda$layoutChildren$506(Ljavafx/scene/Node;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/GridPane;->lambda$static$503(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private adjustColumnWidths(Ljavafx/scene/layout/GridPane$CompositeSize;D)D
    .locals 32

    .prologue
    .line 2047
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v4, p1

    .local v4, "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-wide/from16 v5, p2

    .local v5, "width":D
    sget-boolean v24, Ljavafx/scene/layout/GridPane;->$assertionsDisabled:Z

    if-nez v24, :cond_0

    move-wide/from16 v24, v5

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    new-instance v24, Ljava/lang/AssertionError;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 2048
    :cond_0
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/GridPane;->getHgap()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v24

    move-wide/from16 v7, v24

    .line 2049
    .local v7, "snaphgap":D
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v24

    move-wide/from16 v9, v24

    .line 2050
    .local v9, "left":D
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v24

    move-wide/from16 v11, v24

    .line 2051
    .local v11, "right":D
    move-wide/from16 v24, v7

    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Ljavafx/scene/layout/GridPane;->getNumberOfColumns()I

    move-result v26

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v13, v24

    .line 2052
    .local v13, "hgaps":D
    move-wide/from16 v24, v5

    move-wide/from16 v26, v9

    sub-double v24, v24, v26

    move-wide/from16 v26, v11

    sub-double v24, v24, v26

    move-wide/from16 v15, v24

    .line 2055
    .local v15, "contentWidth":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_3

    .line 2056
    const-wide/16 v24, 0x0

    move-wide/from16 v17, v24

    .line 2057
    .local v17, "remainder":D
    const/16 v24, 0x0

    move/from16 v19, v24

    .local v19, "i":I
    :goto_0
    move/from16 v24, v19

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 2058
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move-object/from16 v24, v0

    move/from16 v25, v19

    aget-wide v24, v24, v25

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_2

    .line 2059
    move-wide/from16 v24, v15

    move-wide/from16 v26, v13

    sub-double v24, v24, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move-object/from16 v26, v0

    move/from16 v27, v19

    aget-wide v26, v26, v27

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    div-double v26, v26, v28

    mul-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 2060
    .local v20, "size":D
    move-wide/from16 v24, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 2061
    .local v22, "floor":D
    move-wide/from16 v24, v17

    move-wide/from16 v26, v20

    move-wide/from16 v28, v22

    sub-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 2064
    move-wide/from16 v24, v22

    move-wide/from16 v20, v24

    .line 2065
    move-wide/from16 v24, v17

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_1

    .line 2066
    move-wide/from16 v24, v20

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 2067
    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    move-wide/from16 v26, v17

    add-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 2069
    :cond_1
    move-object/from16 v24, v4

    move/from16 v25, v19

    move-wide/from16 v26, v20

    invoke-static/range {v24 .. v27}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 2057
    .end local v20    # "size":D
    .end local v22    # "floor":D
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 2074
    .end local v17    # "remainder":D
    .end local v19    # "i":I
    :cond_3
    move-object/from16 v24, v4

    invoke-static/range {v24 .. v24}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1600(Ljavafx/scene/layout/GridPane$CompositeSize;)D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 2075
    .local v17, "columnTotal":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_4

    .line 2076
    move-wide/from16 v24, v5

    move-wide/from16 v26, v9

    sub-double v24, v24, v26

    move-wide/from16 v26, v11

    sub-double v24, v24, v26

    move-wide/from16 v26, v17

    sub-double v24, v24, v26

    move-wide/from16 v19, v24

    .line 2078
    .local v19, "widthAvailable":D
    move-wide/from16 v24, v19

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_4

    .line 2080
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v26, v19

    invoke-direct/range {v24 .. v27}, Ljavafx/scene/layout/GridPane;->growToMultiSpanPreferredWidths(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v24

    move-wide/from16 v21, v24

    .line 2081
    .local v21, "remaining":D
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    sget-object v26, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    move-wide/from16 v27, v21

    invoke-direct/range {v24 .. v28}, Ljavafx/scene/layout/GridPane;->growOrShrinkColumnWidths(Ljavafx/scene/layout/GridPane$CompositeSize;Ljavafx/scene/layout/Priority;D)D

    move-result-wide v24

    move-wide/from16 v21, v24

    .line 2082
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    sget-object v26, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    move-wide/from16 v27, v21

    invoke-direct/range {v24 .. v28}, Ljavafx/scene/layout/GridPane;->growOrShrinkColumnWidths(Ljavafx/scene/layout/GridPane$CompositeSize;Ljavafx/scene/layout/Priority;D)D

    move-result-wide v24

    move-wide/from16 v21, v24

    .line 2083
    move-wide/from16 v24, v17

    move-wide/from16 v26, v19

    move-wide/from16 v28, v21

    sub-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 2086
    .end local v19    # "widthAvailable":D
    .end local v21    # "remaining":D
    :cond_4
    move-wide/from16 v24, v17

    move-wide/from16 v3, v24

    .end local v3    # "this":Ljavafx/scene/layout/GridPane;
    return-wide v3
.end method

.method private adjustRowHeights(Ljavafx/scene/layout/GridPane$CompositeSize;D)D
    .locals 32

    .prologue
    .line 1806
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v4, p1

    .local v4, "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-wide/from16 v5, p2

    .local v5, "height":D
    sget-boolean v24, Ljavafx/scene/layout/GridPane;->$assertionsDisabled:Z

    if-nez v24, :cond_0

    move-wide/from16 v24, v5

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    new-instance v24, Ljava/lang/AssertionError;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 1807
    :cond_0
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/GridPane;->getVgap()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v24

    move-wide/from16 v7, v24

    .line 1808
    .local v7, "snapvgap":D
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v24

    move-wide/from16 v9, v24

    .line 1809
    .local v9, "top":D
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v24

    move-wide/from16 v11, v24

    .line 1810
    .local v11, "bottom":D
    move-wide/from16 v24, v7

    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Ljavafx/scene/layout/GridPane;->getNumberOfRows()I

    move-result v26

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v13, v24

    .line 1811
    .local v13, "vgaps":D
    move-wide/from16 v24, v5

    move-wide/from16 v26, v9

    sub-double v24, v24, v26

    move-wide/from16 v26, v11

    sub-double v24, v24, v26

    move-wide/from16 v15, v24

    .line 1814
    .local v15, "contentHeight":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_3

    .line 1815
    const-wide/16 v24, 0x0

    move-wide/from16 v17, v24

    .line 1816
    .local v17, "remainder":D
    const/16 v24, 0x0

    move/from16 v19, v24

    .local v19, "i":I
    :goto_0
    move/from16 v24, v19

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 1817
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move-object/from16 v24, v0

    move/from16 v25, v19

    aget-wide v24, v24, v25

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_2

    .line 1818
    move-wide/from16 v24, v15

    move-wide/from16 v26, v13

    sub-double v24, v24, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move-object/from16 v26, v0

    move/from16 v27, v19

    aget-wide v26, v26, v27

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    div-double v26, v26, v28

    mul-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 1819
    .local v20, "size":D
    move-wide/from16 v24, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 1820
    .local v22, "floor":D
    move-wide/from16 v24, v17

    move-wide/from16 v26, v20

    move-wide/from16 v28, v22

    sub-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 1823
    move-wide/from16 v24, v22

    move-wide/from16 v20, v24

    .line 1824
    move-wide/from16 v24, v17

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_1

    .line 1825
    move-wide/from16 v24, v20

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 1826
    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    move-wide/from16 v26, v17

    add-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 1828
    :cond_1
    move-object/from16 v24, v4

    move/from16 v25, v19

    move-wide/from16 v26, v20

    invoke-static/range {v24 .. v27}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1816
    .end local v20    # "size":D
    .end local v22    # "floor":D
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1832
    .end local v17    # "remainder":D
    .end local v19    # "i":I
    :cond_3
    move-object/from16 v24, v4

    invoke-static/range {v24 .. v24}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1600(Ljavafx/scene/layout/GridPane$CompositeSize;)D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 1833
    .local v17, "rowTotal":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_4

    .line 1834
    move-wide/from16 v24, v5

    move-wide/from16 v26, v9

    sub-double v24, v24, v26

    move-wide/from16 v26, v11

    sub-double v24, v24, v26

    move-wide/from16 v26, v17

    sub-double v24, v24, v26

    move-wide/from16 v19, v24

    .line 1836
    .local v19, "heightAvailable":D
    move-wide/from16 v24, v19

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_4

    .line 1838
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v26, v19

    invoke-direct/range {v24 .. v27}, Ljavafx/scene/layout/GridPane;->growToMultiSpanPreferredHeights(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v24

    move-wide/from16 v21, v24

    .line 1839
    .local v21, "remaining":D
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    sget-object v26, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    move-wide/from16 v27, v21

    invoke-direct/range {v24 .. v28}, Ljavafx/scene/layout/GridPane;->growOrShrinkRowHeights(Ljavafx/scene/layout/GridPane$CompositeSize;Ljavafx/scene/layout/Priority;D)D

    move-result-wide v24

    move-wide/from16 v21, v24

    .line 1840
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    sget-object v26, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    move-wide/from16 v27, v21

    invoke-direct/range {v24 .. v28}, Ljavafx/scene/layout/GridPane;->growOrShrinkRowHeights(Ljavafx/scene/layout/GridPane$CompositeSize;Ljavafx/scene/layout/Priority;D)D

    move-result-wide v24

    move-wide/from16 v21, v24

    .line 1841
    move-wide/from16 v24, v17

    move-wide/from16 v26, v19

    move-wide/from16 v28, v21

    sub-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 1845
    .end local v19    # "heightAvailable":D
    .end local v21    # "remaining":D
    :cond_4
    move-wide/from16 v24, v17

    move-wide/from16 v3, v24

    .end local v3    # "this":Ljavafx/scene/layout/GridPane;
    return-wide v3
.end method

.method public static clearConstraints(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->setRowIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 650
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->setColumnIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 651
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->setRowSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 652
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->setColumnSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 653
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->setHalignment(Ljavafx/scene/Node;Ljavafx/geometry/HPos;)V

    .line 654
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->setValignment(Ljavafx/scene/Node;Ljavafx/geometry/VPos;)V

    .line 655
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 656
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->setVgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 657
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 658
    return-void
.end method

.method private computeGridMetrics()V
    .locals 18

    .prologue
    .line 1089
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object v10, v1

    iget-boolean v10, v10, Ljavafx/scene/layout/GridPane;->metricsDirty:Z

    if-eqz v10, :cond_19

    .line 1090
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/layout/GridPane;->rowConstraints:Ljavafx/collections/ObservableList;

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    iput v11, v10, Ljavafx/scene/layout/GridPane;->numRows:I

    .line 1091
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/layout/GridPane;->columnConstraints:Ljavafx/collections/ObservableList;

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    iput v11, v10, Ljavafx/scene/layout/GridPane;->numColumns:I

    .line 1092
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/GridPane;->getManagedChildren()Ljava/util/List;

    move-result-object v10

    move-object v2, v10

    .line 1093
    .local v2, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v4, v10

    .local v4, "size":I
    :goto_0
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_2

    .line 1094
    move-object v10, v2

    move v11, v3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v5, v10

    .line 1095
    .local v5, "child":Ljavafx/scene/Node;
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v10

    move v6, v10

    .line 1096
    .local v6, "rowIndex":I
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v10

    move v7, v10

    .line 1097
    .local v7, "columnIndex":I
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeRowEnd(Ljavafx/scene/Node;)I

    move-result v10

    move v8, v10

    .line 1098
    .local v8, "rowEnd":I
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeColumnEnd(Ljavafx/scene/Node;)I

    move-result v10

    move v9, v10

    .line 1099
    .local v9, "columnEnd":I
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numRows:I

    move v12, v8

    const v13, 0x7fffffff

    if-eq v12, v13, :cond_0

    move v12, v8

    :goto_1
    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Ljavafx/scene/layout/GridPane;->numRows:I

    .line 1100
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numColumns:I

    move v12, v9

    const v13, 0x7fffffff

    if-eq v12, v13, :cond_1

    move v12, v9

    :goto_2
    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Ljavafx/scene/layout/GridPane;->numColumns:I

    .line 1093
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1099
    :cond_0
    move v12, v6

    goto :goto_1

    .line 1100
    :cond_1
    move v12, v7

    goto :goto_2

    .line 1102
    .end local v5    # "child":Ljavafx/scene/Node;
    .end local v6    # "rowIndex":I
    .end local v7    # "columnIndex":I
    .end local v8    # "rowEnd":I
    .end local v9    # "columnEnd":I
    :cond_2
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numRows:I

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-static {v11, v12, v13}, Ljavafx/scene/layout/GridPane;->createDoubleArray(ID)[D

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    .line 1103
    move-object v10, v1

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    .line 1104
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numColumns:I

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-static {v11, v12, v13}, Ljavafx/scene/layout/GridPane;->createDoubleArray(ID)[D

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    .line 1105
    move-object v10, v1

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    .line 1106
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numColumns:I

    sget-object v12, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-static {v11, v12}, Ljavafx/scene/layout/GridPane;->createPriorityArray(ILjavafx/scene/layout/Priority;)[Ljavafx/scene/layout/Priority;

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->columnGrow:[Ljavafx/scene/layout/Priority;

    .line 1107
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numRows:I

    sget-object v12, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-static {v11, v12}, Ljavafx/scene/layout/GridPane;->createPriorityArray(ILjavafx/scene/layout/Priority;)[Ljavafx/scene/layout/Priority;

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->rowGrow:[Ljavafx/scene/layout/Priority;

    .line 1108
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numRows:I

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-static {v11, v12, v13}, Ljavafx/scene/layout/GridPane;->createDoubleArray(ID)[D

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->rowMinBaselineComplement:[D

    .line 1109
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numRows:I

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-static {v11, v12, v13}, Ljavafx/scene/layout/GridPane;->createDoubleArray(ID)[D

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->rowPrefBaselineComplement:[D

    .line 1110
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numRows:I

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-static {v11, v12, v13}, Ljavafx/scene/layout/GridPane;->createDoubleArray(ID)[D

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->rowMaxBaselineComplement:[D

    .line 1111
    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Ljavafx/scene/layout/GridPane;->numRows:I

    new-array v11, v11, [Ljava/util/List;

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->rowBaseline:[Ljava/util/List;

    .line 1112
    const/4 v10, 0x0

    move v3, v10

    move-object v10, v1

    iget v10, v10, Ljavafx/scene/layout/GridPane;->numRows:I

    move v4, v10

    .local v4, "sz":I
    :goto_3
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_7

    .line 1113
    move v10, v3

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/layout/GridPane;->rowConstraints:Ljavafx/collections/ObservableList;

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 1114
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowConstraints:Ljavafx/collections/ObservableList;

    move v11, v3

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/layout/RowConstraints;

    move-object v5, v10

    .line 1115
    .local v5, "rc":Ljavafx/scene/layout/RowConstraints;
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/layout/RowConstraints;->getPercentHeight()D

    move-result-wide v10

    move-wide v6, v10

    .line 1116
    .local v6, "percentHeight":D
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/layout/RowConstraints;->getVgrow()Ljavafx/scene/layout/Priority;

    move-result-object v10

    move-object v8, v10

    .line 1117
    .local v8, "vGrow":Ljavafx/scene/layout/Priority;
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_3

    .line 1118
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move v11, v3

    move-wide v12, v6

    aput-wide v12, v10, v11

    .line 1120
    :cond_3
    move-object v10, v8

    if-eqz v10, :cond_4

    .line 1121
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowGrow:[Ljavafx/scene/layout/Priority;

    move v11, v3

    move-object v12, v8

    aput-object v12, v10, v11

    .line 1125
    .end local v5    # "rc":Ljavafx/scene/layout/RowConstraints;
    .end local v6    # "percentHeight":D
    .end local v8    # "vGrow":Ljavafx/scene/layout/Priority;
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    iget v12, v12, Ljavafx/scene/layout/GridPane;->numColumns:I

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v10

    .line 1126
    .local v5, "baselineNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v10, 0x0

    move v6, v10

    .local v6, "j":I
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v7, v10

    .local v7, "size":I
    :goto_4
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_6

    .line 1127
    move-object v10, v2

    move v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v8, v10

    .line 1128
    .local v8, "n":Ljavafx/scene/Node;
    move-object v10, v8

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v10

    move v11, v3

    if-ne v10, v11, :cond_5

    move-object v10, v1

    move-object v11, v8

    invoke-direct {v10, v11}, Ljavafx/scene/layout/GridPane;->isNodePositionedByBaseline(Ljavafx/scene/Node;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1129
    move-object v10, v5

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1126
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1132
    .end local v8    # "n":Ljavafx/scene/Node;
    :cond_6
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowMinBaselineComplement:[D

    move v11, v3

    move-object v12, v5

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getMinBaselineComplement(Ljava/util/List;)D

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 1133
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowPrefBaselineComplement:[D

    move v11, v3

    move-object v12, v5

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getPrefBaselineComplement(Ljava/util/List;)D

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 1134
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowMaxBaselineComplement:[D

    move v11, v3

    move-object v12, v5

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getMaxBaselineComplement(Ljava/util/List;)D

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 1135
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowBaseline:[Ljava/util/List;

    move v11, v3

    move-object v12, v5

    aput-object v12, v10, v11

    .line 1112
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 1138
    .end local v5    # "baselineNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v6    # "j":I
    .end local v7    # "size":I
    :cond_7
    const/4 v10, 0x0

    move v3, v10

    move-object v10, v1

    iget v10, v10, Ljavafx/scene/layout/GridPane;->numColumns:I

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/layout/GridPane;->columnConstraints:Ljavafx/collections/ObservableList;

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v4, v10

    :goto_5
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_a

    .line 1139
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnConstraints:Ljavafx/collections/ObservableList;

    move v11, v3

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/layout/ColumnConstraints;

    move-object v5, v10

    .line 1140
    .local v5, "cc":Ljavafx/scene/layout/ColumnConstraints;
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/layout/ColumnConstraints;->getPercentWidth()D

    move-result-wide v10

    move-wide v6, v10

    .line 1141
    .local v6, "percentWidth":D
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/layout/ColumnConstraints;->getHgrow()Ljavafx/scene/layout/Priority;

    move-result-object v10

    move-object v8, v10

    .line 1142
    .local v8, "hGrow":Ljavafx/scene/layout/Priority;
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_8

    .line 1143
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move v11, v3

    move-wide v12, v6

    aput-wide v12, v10, v11

    .line 1144
    :cond_8
    move-object v10, v8

    if-eqz v10, :cond_9

    .line 1145
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnGrow:[Ljavafx/scene/layout/Priority;

    move v11, v3

    move-object v12, v8

    aput-object v12, v10, v11

    .line 1138
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1148
    .end local v5    # "cc":Ljavafx/scene/layout/ColumnConstraints;
    .end local v6    # "percentWidth":D
    .end local v8    # "hGrow":Ljavafx/scene/layout/Priority;
    :cond_a
    const/4 v10, 0x0

    move v3, v10

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v4, v10

    .local v4, "size":I
    :goto_6
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_d

    .line 1149
    move-object v10, v2

    move v11, v3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v5, v10

    .line 1150
    .local v5, "child":Ljavafx/scene/Node;
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeColumnSpan(Ljavafx/scene/Node;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 1151
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeHgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;

    move-result-object v10

    move-object v6, v10

    .line 1152
    .local v6, "hg":Ljavafx/scene/layout/Priority;
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v10

    move v7, v10

    .line 1153
    .local v7, "idx":I
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnGrow:[Ljavafx/scene/layout/Priority;

    move v11, v7

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/layout/GridPane;->columnGrow:[Ljavafx/scene/layout/Priority;

    move v13, v7

    aget-object v12, v12, v13

    move-object v13, v6

    invoke-static {v12, v13}, Ljavafx/scene/layout/Priority;->max(Ljavafx/scene/layout/Priority;Ljavafx/scene/layout/Priority;)Ljavafx/scene/layout/Priority;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1155
    .end local v6    # "hg":Ljavafx/scene/layout/Priority;
    .end local v7    # "idx":I
    :cond_b
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeRowSpan(Ljavafx/scene/Node;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    .line 1156
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeVgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;

    move-result-object v10

    move-object v6, v10

    .line 1157
    .local v6, "vg":Ljavafx/scene/layout/Priority;
    move-object v10, v5

    invoke-static {v10}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v10

    move v7, v10

    .line 1158
    .restart local v7    # "idx":I
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowGrow:[Ljavafx/scene/layout/Priority;

    move v11, v7

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/layout/GridPane;->rowGrow:[Ljavafx/scene/layout/Priority;

    move v13, v7

    aget-object v12, v12, v13

    move-object v13, v6

    invoke-static {v12, v13}, Ljavafx/scene/layout/Priority;->max(Ljavafx/scene/layout/Priority;Ljavafx/scene/layout/Priority;)Ljavafx/scene/layout/Priority;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1148
    .end local v6    # "vg":Ljavafx/scene/layout/Priority;
    .end local v7    # "idx":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1162
    .end local v5    # "child":Ljavafx/scene/Node;
    :cond_d
    const/4 v10, 0x0

    move v3, v10

    :goto_7
    move v10, v3

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    array-length v11, v11

    if-ge v10, v11, :cond_f

    .line 1163
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move v11, v3

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_e

    .line 1164
    move-object v10, v1

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget-wide v11, v11, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    move-object v13, v1

    iget-object v13, v13, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move v14, v3

    aget-wide v13, v13, v14

    add-double/2addr v11, v13

    iput-wide v11, v10, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    .line 1162
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1167
    :cond_f
    move-object v10, v1

    iget-wide v10, v10, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_12

    .line 1168
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    div-double/2addr v10, v12

    move-wide v3, v10

    .line 1169
    .end local v4    # "size":I
    .local v3, "weight":D
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_8
    move v10, v5

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    array-length v11, v11

    if-ge v10, v11, :cond_11

    .line 1170
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move v11, v5

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_10

    .line 1171
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move v11, v5

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget-wide v12, v12, v13

    move-wide v14, v3

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 1169
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1174
    :cond_11
    move-object v10, v1

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    iput-wide v11, v10, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    .line 1176
    .end local v3    # "weight":D
    .end local v5    # "i":I
    :cond_12
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    :goto_9
    move v10, v3

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    array-length v11, v11

    if-ge v10, v11, :cond_14

    .line 1177
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move v11, v3

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_13

    .line 1178
    move-object v10, v1

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget-wide v11, v11, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    move-object v13, v1

    iget-object v13, v13, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move v14, v3

    aget-wide v13, v13, v14

    add-double/2addr v11, v13

    iput-wide v11, v10, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    .line 1176
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1181
    :cond_14
    move-object v10, v1

    iget-wide v10, v10, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_17

    .line 1182
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    div-double/2addr v10, v12

    move-wide v3, v10

    .line 1183
    .local v3, "weight":D
    const/4 v10, 0x0

    move v5, v10

    .restart local v5    # "i":I
    :goto_a
    move v10, v5

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    array-length v11, v11

    if-ge v10, v11, :cond_16

    .line 1184
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move v11, v5

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_15

    .line 1185
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move v11, v5

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget-wide v12, v12, v13

    move-wide v14, v3

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 1183
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1188
    :cond_16
    move-object v10, v1

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    iput-wide v11, v10, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    .line 1191
    .end local v3    # "weight":D
    .end local v5    # "i":I
    :cond_17
    move-object v10, v1

    const/4 v11, 0x0

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->bias:Ljavafx/geometry/Orientation;

    .line 1192
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    :goto_b
    move v10, v3

    move-object v11, v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_18

    .line 1193
    move-object v10, v2

    move v11, v3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    invoke-virtual {v10}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v10

    move-object v4, v10

    .line 1194
    .local v4, "b":Ljavafx/geometry/Orientation;
    move-object v10, v4

    if-eqz v10, :cond_1a

    .line 1195
    move-object v10, v1

    move-object v11, v4

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->bias:Ljavafx/geometry/Orientation;

    .line 1196
    move-object v10, v4

    sget-object v11, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_1a

    .line 1197
    .line 1202
    .end local v4    # "b":Ljavafx/geometry/Orientation;
    :cond_18
    move-object v10, v1

    const/4 v11, 0x0

    iput-boolean v11, v10, Ljavafx/scene/layout/GridPane;->metricsDirty:Z

    .line 1204
    .end local v2    # "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v3    # "i":I
    :cond_19
    return-void

    .line 1192
    .restart local v2    # "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .restart local v3    # "i":I
    .restart local v4    # "b":Ljavafx/geometry/Orientation;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method

.method private computeHeightsToFit(D)Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 9

    .prologue
    .line 1613
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-wide v1, p1

    .local v1, "height":D
    sget-boolean v4, Ljavafx/scene/layout/GridPane;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-wide v4, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1615
    :cond_0
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 1617
    move-object v4, v0

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/layout/GridPane;->createCompositeRows(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v4

    move-object v3, v4

    .line 1621
    .local v3, "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_0
    move-object v4, v0

    move-object v5, v3

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/GridPane;->adjustRowHeights(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v4

    .line 1622
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0

    .line 1619
    .end local v3    # "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljavafx/scene/layout/GridPane;->computePrefHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane$CompositeSize;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v3, v4

    .restart local v3    # "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    goto :goto_0
.end method

.method private computeMaxHeights()Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 18

    .prologue
    .line 1362
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowMaxHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    if-nez v10, :cond_4

    .line 1363
    move-object v10, v1

    move-object v11, v1

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v11, v12, v13}, Ljavafx/scene/layout/GridPane;->createCompositeRows(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->rowMaxHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    .line 1366
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v2, v10

    .line 1367
    .local v2, "rowConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/RowConstraints;>;"
    const/4 v10, 0x0

    move-object v3, v10

    .line 1368
    .local v3, "prefHeights":Ljavafx/scene/layout/GridPane$CompositeSize;
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    :goto_0
    move v10, v4

    move-object v11, v2

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 1369
    move-object v10, v2

    move v11, v4

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/layout/RowConstraints;

    move-object v5, v10

    .line 1370
    .local v5, "curConstraint":Ljavafx/scene/layout/RowConstraints;
    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/layout/RowConstraints;->getMaxHeight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v10

    move-wide v6, v10

    .line 1371
    .local v6, "maxRowHeight":D
    move-wide v10, v6

    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v10, v10, v12

    if-nez v10, :cond_2

    .line 1372
    move-object v10, v3

    if-nez v10, :cond_0

    .line 1373
    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljavafx/scene/layout/GridPane;->computePrefHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v10

    move-object v3, v10

    .line 1375
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowMaxHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move v11, v4

    move-object v12, v3

    move v13, v4

    invoke-static {v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1368
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1376
    :cond_2
    move-wide v10, v6

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 1377
    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/layout/RowConstraints;->getMinHeight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v10

    move-wide v8, v10

    .line 1378
    .local v8, "min":D
    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_3

    .line 1379
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowMaxHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move v11, v4

    move-wide v12, v8

    move-wide v14, v6

    move-wide/from16 v16, v6

    invoke-static/range {v12 .. v17}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_1

    .line 1381
    :cond_3
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowMaxHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move v11, v4

    move-wide v12, v6

    invoke-static {v10, v11, v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_1

    .line 1386
    .end local v2    # "rowConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/RowConstraints;>;"
    .end local v3    # "prefHeights":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v4    # "i":I
    .end local v5    # "curConstraint":Ljavafx/scene/layout/RowConstraints;
    .end local v6    # "maxRowHeight":D
    .end local v8    # "min":D
    :cond_4
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->rowMaxHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v1, v10

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-object v1
.end method

.method private computeMaxWidths()Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 18

    .prologue
    .line 1491
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnMaxWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    if-nez v10, :cond_4

    .line 1492
    move-object v10, v1

    move-object v11, v1

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v11, v12, v13}, Ljavafx/scene/layout/GridPane;->createCompositeColumns(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v11

    iput-object v11, v10, Ljavafx/scene/layout/GridPane;->columnMaxWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    .line 1495
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v2, v10

    .line 1496
    .local v2, "columnConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/ColumnConstraints;>;"
    const/4 v10, 0x0

    move-object v3, v10

    .line 1497
    .local v3, "prefWidths":Ljavafx/scene/layout/GridPane$CompositeSize;
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    :goto_0
    move v10, v4

    move-object v11, v2

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 1498
    move-object v10, v2

    move v11, v4

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/layout/ColumnConstraints;

    move-object v5, v10

    .line 1499
    .local v5, "curConstraint":Ljavafx/scene/layout/ColumnConstraints;
    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/layout/ColumnConstraints;->getMaxWidth()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v10

    move-wide v6, v10

    .line 1500
    .local v6, "maxColumnWidth":D
    move-wide v10, v6

    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v10, v10, v12

    if-nez v10, :cond_2

    .line 1501
    move-object v10, v3

    if-nez v10, :cond_0

    .line 1502
    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljavafx/scene/layout/GridPane;->computePrefWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v10

    move-object v3, v10

    .line 1504
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnMaxWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    move v11, v4

    move-object v12, v3

    move v13, v4

    invoke-static {v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1497
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1505
    :cond_2
    move-wide v10, v6

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 1506
    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/layout/ColumnConstraints;->getMinWidth()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v10

    move-wide v8, v10

    .line 1507
    .local v8, "min":D
    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_3

    .line 1508
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnMaxWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    move v11, v4

    move-wide v12, v8

    move-wide v14, v6

    move-wide/from16 v16, v6

    invoke-static/range {v12 .. v17}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_1

    .line 1510
    :cond_3
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnMaxWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    move v11, v4

    move-wide v12, v6

    invoke-static {v10, v11, v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_1

    .line 1515
    .end local v2    # "columnConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/ColumnConstraints;>;"
    .end local v3    # "prefWidths":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v4    # "i":I
    .end local v5    # "curConstraint":Ljavafx/scene/layout/ColumnConstraints;
    .end local v6    # "maxColumnWidth":D
    .end local v8    # "min":D
    :cond_4
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/layout/GridPane;->columnMaxWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v1, v10

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-object v1
.end method

.method private computeMinHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 22

    .prologue
    .line 1439
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v2, p1

    .local v2, "widths":[D
    move-object v14, v2

    if-nez v14, :cond_3

    .line 1440
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/layout/GridPane;->rowMinHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    if-eqz v14, :cond_0

    .line 1441
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/layout/GridPane;->rowMinHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v1, v14

    .line 1475
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-object v1

    .line 1443
    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v14, v1

    move-object v15, v1

    const-wide/16 v16, 0x0

    invoke-direct/range {v15 .. v17}, Ljavafx/scene/layout/GridPane;->createCompositeRows(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v15

    iput-object v15, v14, Ljavafx/scene/layout/GridPane;->rowMinHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    .line 1444
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/layout/GridPane;->rowMinHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v3, v14

    .line 1449
    .local v3, "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_1
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v14

    move-object v4, v14

    .line 1450
    .local v4, "rowConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/RowConstraints;>;"
    const/4 v14, 0x0

    move-object v5, v14

    .line 1451
    .local v5, "prefHeights":Ljavafx/scene/layout/GridPane$CompositeSize;
    const/4 v14, 0x0

    move v6, v14

    .local v6, "i":I
    :goto_2
    move v14, v6

    move-object v15, v4

    invoke-interface {v15}, Ljavafx/collections/ObservableList;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 1452
    move-object v14, v1

    move-object v15, v4

    move/from16 v16, v6

    invoke-interface/range {v15 .. v16}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/layout/RowConstraints;

    invoke-virtual {v15}, Ljavafx/scene/layout/RowConstraints;->getMinHeight()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v14

    move-wide v7, v14

    .line 1453
    .local v7, "minRowHeight":D
    move-wide v14, v7

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_4

    .line 1454
    move-object v14, v5

    if-nez v14, :cond_1

    .line 1455
    move-object v14, v1

    move-object v15, v2

    invoke-direct {v14, v15}, Ljavafx/scene/layout/GridPane;->computePrefHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v14

    move-object v5, v14

    .line 1457
    :cond_1
    move-object v14, v3

    move v15, v6

    move-object/from16 v16, v5

    move/from16 v17, v6

    invoke-static/range {v16 .. v17}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1451
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1446
    .end local v3    # "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v4    # "rowConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/RowConstraints;>;"
    .end local v5    # "prefHeights":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v6    # "i":I
    .end local v7    # "minRowHeight":D
    :cond_3
    move-object v14, v1

    const-wide/16 v15, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/layout/GridPane;->createCompositeRows(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v14

    move-object v3, v14

    .restart local v3    # "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    goto :goto_1

    .line 1458
    .restart local v4    # "rowConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/RowConstraints;>;"
    .restart local v5    # "prefHeights":Ljavafx/scene/layout/GridPane$CompositeSize;
    .restart local v6    # "i":I
    .restart local v7    # "minRowHeight":D
    :cond_4
    move-wide v14, v7

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_2

    .line 1459
    move-object v14, v3

    move v15, v6

    move-wide/from16 v16, v7

    invoke-static/range {v14 .. v17}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_3

    .line 1462
    .end local v7    # "minRowHeight":D
    :cond_5
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/layout/GridPane;->getManagedChildren()Ljava/util/List;

    move-result-object v14

    move-object v6, v14

    .line 1463
    .local v6, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v14, 0x0

    move v7, v14

    .local v7, "i":I
    move-object v14, v6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v8, v14

    .local v8, "size":I
    :goto_4
    move v14, v7

    move v15, v8

    if-ge v14, v15, :cond_a

    .line 1464
    move-object v14, v6

    move v15, v7

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    move-object v9, v14

    .line 1465
    .local v9, "child":Ljavafx/scene/Node;
    move-object v14, v9

    invoke-static {v14}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v14

    move v10, v14

    .line 1466
    .local v10, "start":I
    move-object v14, v1

    move-object v15, v9

    invoke-direct {v14, v15}, Ljavafx/scene/layout/GridPane;->getNodeRowEndConvertRemaining(Ljavafx/scene/Node;)I

    move-result v14

    move v11, v14

    .line 1467
    .local v11, "end":I
    move-object v14, v1

    move-object v15, v9

    move-object/from16 v16, v1

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v17}, Ljavafx/scene/layout/GridPane;->isNodePositionedByBaseline(Ljavafx/scene/Node;)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowMinBaselineComplement:[D

    move-object/from16 v16, v0

    move/from16 v17, v10

    aget-wide v16, v16, v17

    :goto_5
    move-object/from16 v18, v9

    invoke-static/range {v18 .. v18}, Ljavafx/scene/layout/GridPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v18

    move-object/from16 v19, v2

    if-nez v19, :cond_8

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    :goto_6
    invoke-virtual/range {v14 .. v20}, Ljavafx/scene/layout/GridPane;->computeChildMinAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v14

    move-wide v12, v14

    .line 1469
    .local v12, "childMinAreaHeight":D
    move v14, v10

    move v15, v11

    if-ne v14, v15, :cond_9

    move-object v14, v3

    move v15, v10

    invoke-static {v14, v15}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1200(Ljavafx/scene/layout/GridPane$CompositeSize;I)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1470
    move-object v14, v3

    move v15, v10

    move-wide/from16 v16, v12

    invoke-static/range {v14 .. v17}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1300(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1463
    :cond_6
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1467
    .end local v12    # "childMinAreaHeight":D
    :cond_7
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    goto :goto_5

    :cond_8
    move-object/from16 v19, v1

    move-object/from16 v20, v9

    move-object/from16 v21, v2

    .line 1468
    invoke-direct/range {v19 .. v21}, Ljavafx/scene/layout/GridPane;->getTotalWidthOfNodeColumns(Ljavafx/scene/Node;[D)D

    move-result-wide v19

    goto :goto_6

    .line 1471
    .restart local v12    # "childMinAreaHeight":D
    :cond_9
    move v14, v10

    move v15, v11

    if-eq v14, v15, :cond_6

    .line 1472
    move-object v14, v3

    move v15, v10

    move/from16 v16, v11

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move-wide/from16 v17, v12

    invoke-static/range {v14 .. v18}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1400(Ljavafx/scene/layout/GridPane$CompositeSize;IID)V

    goto :goto_7

    .line 1475
    .end local v9    # "child":Ljavafx/scene/Node;
    .end local v10    # "start":I
    .end local v11    # "end":I
    .end local v12    # "childMinAreaHeight":D
    :cond_a
    move-object v14, v3

    move-object v1, v14

    goto/16 :goto_0
.end method

.method private computeMinWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 23

    .prologue
    .line 1571
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v2, p1

    .local v2, "heights":[D
    move-object v12, v2

    if-nez v12, :cond_3

    .line 1572
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/layout/GridPane;->columnMinWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    if-eqz v12, :cond_0

    .line 1573
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/layout/GridPane;->columnMinWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v1, v12

    .line 1609
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-object v1

    .line 1575
    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v12, v1

    move-object v13, v1

    const-wide/16 v14, 0x0

    invoke-direct {v13, v14, v15}, Ljavafx/scene/layout/GridPane;->createCompositeColumns(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/layout/GridPane;->columnMinWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    .line 1576
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/layout/GridPane;->columnMinWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v3, v12

    .line 1581
    .local v3, "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_1
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v4, v12

    .line 1582
    .local v4, "columnConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/ColumnConstraints;>;"
    const/4 v12, 0x0

    move-object v5, v12

    .line 1583
    .local v5, "prefWidths":Ljavafx/scene/layout/GridPane$CompositeSize;
    const/4 v12, 0x0

    move v6, v12

    .local v6, "i":I
    :goto_2
    move v12, v6

    move-object v13, v4

    invoke-interface {v13}, Ljavafx/collections/ObservableList;->size()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 1584
    move-object v12, v1

    move-object v13, v4

    move v14, v6

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/layout/ColumnConstraints;

    invoke-virtual {v13}, Ljavafx/scene/layout/ColumnConstraints;->getMinWidth()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v12

    move-wide v7, v12

    .line 1585
    .local v7, "minColumnWidth":D
    move-wide v12, v7

    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v12, v12, v14

    if-nez v12, :cond_4

    .line 1586
    move-object v12, v5

    if-nez v12, :cond_1

    .line 1587
    move-object v12, v1

    move-object v13, v2

    invoke-direct {v12, v13}, Ljavafx/scene/layout/GridPane;->computePrefWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v12

    move-object v5, v12

    .line 1589
    :cond_1
    move-object v12, v3

    move v13, v6

    move-object v14, v5

    move v15, v6

    invoke-static {v14, v15}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1583
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1578
    .end local v3    # "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v4    # "columnConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/ColumnConstraints;>;"
    .end local v5    # "prefWidths":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v6    # "i":I
    .end local v7    # "minColumnWidth":D
    :cond_3
    move-object v12, v1

    const-wide/16 v13, 0x0

    invoke-direct {v12, v13, v14}, Ljavafx/scene/layout/GridPane;->createCompositeColumns(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v12

    move-object v3, v12

    .restart local v3    # "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    goto :goto_1

    .line 1590
    .restart local v4    # "columnConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/ColumnConstraints;>;"
    .restart local v5    # "prefWidths":Ljavafx/scene/layout/GridPane$CompositeSize;
    .restart local v6    # "i":I
    .restart local v7    # "minColumnWidth":D
    :cond_4
    move-wide v12, v7

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_2

    .line 1591
    move-object v12, v3

    move v13, v6

    move-wide v14, v7

    invoke-static {v12, v13, v14, v15}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_3

    .line 1594
    .end local v7    # "minColumnWidth":D
    :cond_5
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/layout/GridPane;->getManagedChildren()Ljava/util/List;

    move-result-object v12

    move-object v6, v12

    .line 1595
    .local v6, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i":I
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v8, v12

    .local v8, "size":I
    :goto_4
    move v12, v7

    move v13, v8

    if-ge v12, v13, :cond_a

    .line 1596
    move-object v12, v6

    move v13, v7

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v9, v12

    .line 1597
    .local v9, "child":Ljavafx/scene/Node;
    move-object v12, v9

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v12

    move v10, v12

    .line 1598
    .local v10, "start":I
    move-object v12, v1

    move-object v13, v9

    invoke-direct {v12, v13}, Ljavafx/scene/layout/GridPane;->getNodeColumnEndConvertRemaining(Ljavafx/scene/Node;)I

    move-result v12

    move v11, v12

    .line 1599
    .local v11, "end":I
    move v12, v10

    move v13, v11

    if-ne v12, v13, :cond_8

    move-object v12, v3

    move v13, v10

    invoke-static {v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1200(Ljavafx/scene/layout/GridPane$CompositeSize;I)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1600
    move-object v12, v3

    move v13, v10

    move-object v14, v1

    move-object v15, v9

    move-object/from16 v16, v1

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v17}, Ljavafx/scene/layout/GridPane;->getBaselineComplementForChild(Ljavafx/scene/Node;)D

    move-result-wide v16

    move-object/from16 v18, v9

    .line 1601
    invoke-static/range {v18 .. v18}, Ljavafx/scene/layout/GridPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v18

    move-object/from16 v19, v2

    if-nez v19, :cond_7

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 1602
    :goto_5
    const/16 v21, 0x0

    .line 1600
    invoke-virtual/range {v14 .. v21}, Ljavafx/scene/layout/GridPane;->computeChildMinAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1300(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1595
    :cond_6
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1601
    :cond_7
    move-object/from16 v19, v1

    move-object/from16 v20, v9

    move-object/from16 v21, v2

    .line 1602
    invoke-direct/range {v19 .. v21}, Ljavafx/scene/layout/GridPane;->getTotalHeightOfNodeRows(Ljavafx/scene/Node;[D)D

    move-result-wide v19

    goto :goto_5

    .line 1603
    :cond_8
    move v12, v10

    move v13, v11

    if-eq v12, v13, :cond_6

    .line 1604
    move-object v12, v3

    move v13, v10

    move v14, v11

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object v15, v1

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v18}, Ljavafx/scene/layout/GridPane;->getBaselineComplementForChild(Ljavafx/scene/Node;)D

    move-result-wide v17

    move-object/from16 v19, v9

    .line 1605
    invoke-static/range {v19 .. v19}, Ljavafx/scene/layout/GridPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v19

    move-object/from16 v20, v2

    if-nez v20, :cond_9

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    .line 1606
    :goto_7
    const/16 v22, 0x0

    .line 1604
    invoke-virtual/range {v15 .. v22}, Ljavafx/scene/layout/GridPane;->computeChildMinAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v15

    invoke-static/range {v12 .. v16}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1400(Ljavafx/scene/layout/GridPane$CompositeSize;IID)V

    goto :goto_6

    .line 1605
    :cond_9
    move-object/from16 v20, v1

    move-object/from16 v21, v9

    move-object/from16 v22, v2

    .line 1606
    invoke-direct/range {v20 .. v22}, Ljavafx/scene/layout/GridPane;->getTotalHeightOfNodeRows(Ljavafx/scene/Node;[D)D

    move-result-wide v20

    goto :goto_7

    .line 1609
    .end local v9    # "child":Ljavafx/scene/Node;
    .end local v10    # "start":I
    .end local v11    # "end":I
    :cond_a
    move-object v12, v3

    move-object v1, v12

    goto/16 :goto_0
.end method

.method private computePrefHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 28

    .prologue
    .line 1391
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v3, p1

    .local v3, "widths":[D
    move-object/from16 v18, v3

    if-nez v18, :cond_3

    .line 1392
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPrefHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1393
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPrefHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object/from16 v18, v0

    move-object/from16 v2, v18

    .line 1434
    .end local v2    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-object v2

    .line 1395
    .restart local v2    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    const-wide/16 v20, 0x0

    invoke-direct/range {v19 .. v21}, Ljavafx/scene/layout/GridPane;->createCompositeRows(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavafx/scene/layout/GridPane;->rowPrefHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    .line 1396
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPrefHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object/from16 v18, v0

    move-object/from16 v4, v18

    .line 1401
    .local v4, "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_1
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v18

    move-object/from16 v5, v18

    .line 1402
    .local v5, "rowConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/RowConstraints;>;"
    const/16 v18, 0x0

    move/from16 v6, v18

    .local v6, "i":I
    :goto_2
    move/from16 v18, v6

    move-object/from16 v19, v5

    invoke-interface/range {v19 .. v19}, Ljavafx/collections/ObservableList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 1403
    move-object/from16 v18, v5

    move/from16 v19, v6

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/layout/RowConstraints;

    move-object/from16 v7, v18

    .line 1404
    .local v7, "curConstraint":Ljavafx/scene/layout/RowConstraints;
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/RowConstraints;->getPrefHeight()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 1405
    .local v8, "prefRowHeight":D
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/RowConstraints;->getMinHeight()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 1406
    .local v10, "min":D
    move-wide/from16 v18, v8

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_7

    .line 1407
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/RowConstraints;->getMaxHeight()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 1408
    .local v12, "max":D
    move-wide/from16 v18, v10

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-gez v18, :cond_1

    move-wide/from16 v18, v12

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_6

    .line 1409
    :cond_1
    move-object/from16 v18, v4

    move/from16 v19, v6

    move-wide/from16 v20, v10

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_4

    const-wide/16 v20, 0x0

    :goto_3
    move-wide/from16 v22, v8

    move-wide/from16 v24, v12

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_5

    const-wide/high16 v24, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_4
    invoke-static/range {v20 .. v25}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1415
    .line 1402
    .end local v12    # "max":D
    :cond_2
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1398
    .end local v4    # "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v5    # "rowConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/RowConstraints;>;"
    .end local v6    # "i":I
    .end local v7    # "curConstraint":Ljavafx/scene/layout/RowConstraints;
    .end local v8    # "prefRowHeight":D
    .end local v10    # "min":D
    :cond_3
    move-object/from16 v18, v2

    const-wide/16 v19, 0x0

    invoke-direct/range {v18 .. v20}, Ljavafx/scene/layout/GridPane;->createCompositeRows(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v18

    move-object/from16 v4, v18

    .restart local v4    # "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    goto/16 :goto_1

    .line 1409
    .restart local v5    # "rowConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/RowConstraints;>;"
    .restart local v6    # "i":I
    .restart local v7    # "curConstraint":Ljavafx/scene/layout/RowConstraints;
    .restart local v8    # "prefRowHeight":D
    .restart local v10    # "min":D
    .restart local v12    # "max":D
    :cond_4
    move-wide/from16 v20, v10

    goto :goto_3

    :cond_5
    move-wide/from16 v24, v12

    goto :goto_4

    .line 1413
    :cond_6
    move-object/from16 v18, v4

    move/from16 v19, v6

    move-wide/from16 v20, v8

    invoke-static/range {v18 .. v21}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_5

    .line 1415
    .end local v12    # "max":D
    :cond_7
    move-wide/from16 v18, v10

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_2

    .line 1416
    move-object/from16 v18, v4

    move/from16 v19, v6

    move-wide/from16 v20, v10

    invoke-static/range {v18 .. v21}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_5

    .line 1419
    .end local v7    # "curConstraint":Ljavafx/scene/layout/RowConstraints;
    .end local v8    # "prefRowHeight":D
    .end local v10    # "min":D
    :cond_8
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/GridPane;->getManagedChildren()Ljava/util/List;

    move-result-object v18

    move-object/from16 v6, v18

    .line 1420
    .local v6, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/16 v18, 0x0

    move/from16 v7, v18

    .local v7, "i":I
    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v8, v18

    .local v8, "size":I
    :goto_6
    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 1421
    move-object/from16 v18, v6

    move/from16 v19, v7

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/Node;

    move-object/from16 v9, v18

    .line 1422
    .local v9, "child":Ljavafx/scene/Node;
    move-object/from16 v18, v9

    invoke-static/range {v18 .. v18}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v18

    move/from16 v10, v18

    .line 1423
    .local v10, "start":I
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/layout/GridPane;->getNodeRowEndConvertRemaining(Ljavafx/scene/Node;)I

    move-result v18

    move/from16 v11, v18

    .line 1424
    .local v11, "end":I
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v2

    move-object/from16 v21, v9

    invoke-direct/range {v20 .. v21}, Ljavafx/scene/layout/GridPane;->isNodePositionedByBaseline(Ljavafx/scene/Node;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPrefBaselineComplement:[D

    move-object/from16 v20, v0

    move/from16 v21, v10

    aget-wide v20, v20, v21

    :goto_7
    move-object/from16 v22, v9

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/GridPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v22

    move-object/from16 v23, v3

    if-nez v23, :cond_b

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    :goto_8
    invoke-virtual/range {v18 .. v24}, Ljavafx/scene/layout/GridPane;->computeChildPrefAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 1426
    .local v12, "childPrefAreaHeight":D
    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    move-object/from16 v18, v4

    move/from16 v19, v10

    invoke-static/range {v18 .. v19}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1200(Ljavafx/scene/layout/GridPane$CompositeSize;I)Z

    move-result v18

    if-nez v18, :cond_e

    .line 1427
    move-object/from16 v18, v2

    move/from16 v19, v10

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/layout/GridPane;->getRowMinHeight(I)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 1428
    .local v14, "min":D
    move-object/from16 v18, v2

    move/from16 v19, v10

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/layout/GridPane;->getRowMaxHeight(I)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 1429
    .local v16, "max":D
    move-object/from16 v18, v4

    move/from16 v19, v10

    move-wide/from16 v20, v14

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_c

    const-wide/16 v20, 0x0

    :goto_9
    move-wide/from16 v22, v12

    move-wide/from16 v24, v16

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_d

    const-wide v24, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_a
    invoke-static/range {v20 .. v25}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1300(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1430
    .line 1420
    .end local v14    # "min":D
    .end local v16    # "max":D
    :cond_9
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 1424
    .end local v12    # "childPrefAreaHeight":D
    :cond_a
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    goto :goto_7

    :cond_b
    move-object/from16 v23, v2

    move-object/from16 v24, v9

    move-object/from16 v25, v3

    .line 1425
    invoke-direct/range {v23 .. v25}, Ljavafx/scene/layout/GridPane;->getTotalWidthOfNodeColumns(Ljavafx/scene/Node;[D)D

    move-result-wide v23

    goto :goto_8

    .line 1429
    .restart local v12    # "childPrefAreaHeight":D
    .restart local v14    # "min":D
    .restart local v16    # "max":D
    :cond_c
    move-wide/from16 v20, v14

    goto :goto_9

    :cond_d
    move-wide/from16 v24, v16

    goto :goto_a

    .line 1430
    .end local v14    # "min":D
    .end local v16    # "max":D
    :cond_e
    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 1431
    move-object/from16 v18, v4

    move/from16 v19, v10

    move/from16 v20, v11

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move-wide/from16 v21, v12

    invoke-static/range {v18 .. v22}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1400(Ljavafx/scene/layout/GridPane$CompositeSize;IID)V

    goto :goto_b

    .line 1434
    .end local v9    # "child":Ljavafx/scene/Node;
    .end local v10    # "start":I
    .end local v11    # "end":I
    .end local v12    # "childPrefAreaHeight":D
    :cond_f
    move-object/from16 v18, v4

    move-object/from16 v2, v18

    goto/16 :goto_0
.end method

.method private computePrefWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 26

    .prologue
    .line 1520
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v1, p1

    .local v1, "heights":[D
    move-object v14, v1

    if-nez v14, :cond_3

    .line 1521
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/layout/GridPane;->columnPrefWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    if-eqz v14, :cond_0

    .line 1522
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/layout/GridPane;->columnPrefWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v0, v14

    .line 1566
    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-object v0

    .line 1524
    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v14, v0

    move-object v15, v0

    const-wide/16 v16, 0x0

    invoke-direct/range {v15 .. v17}, Ljavafx/scene/layout/GridPane;->createCompositeColumns(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v15

    iput-object v15, v14, Ljavafx/scene/layout/GridPane;->columnPrefWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    .line 1525
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/layout/GridPane;->columnPrefWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v2, v14

    .line 1530
    .local v2, "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_1
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v14

    move-object v3, v14

    .line 1531
    .local v3, "columnConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/ColumnConstraints;>;"
    const/4 v14, 0x0

    move v4, v14

    .local v4, "i":I
    :goto_2
    move v14, v4

    move-object v15, v3

    invoke-interface {v15}, Ljavafx/collections/ObservableList;->size()I

    move-result v15

    if-ge v14, v15, :cond_8

    .line 1532
    move-object v14, v3

    move v15, v4

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/layout/ColumnConstraints;

    move-object v5, v14

    .line 1533
    .local v5, "curConstraint":Ljavafx/scene/layout/ColumnConstraints;
    move-object v14, v0

    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/layout/ColumnConstraints;->getPrefWidth()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v14

    move-wide v6, v14

    .line 1534
    .local v6, "prefColumnWidth":D
    move-object v14, v0

    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/layout/ColumnConstraints;->getMinWidth()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v14

    move-wide v8, v14

    .line 1535
    .local v8, "min":D
    move-wide v14, v6

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_7

    .line 1536
    move-object v14, v0

    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/layout/ColumnConstraints;->getMaxWidth()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v14

    move-wide v10, v14

    .line 1537
    .local v10, "max":D
    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-gez v14, :cond_1

    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_6

    .line 1538
    :cond_1
    move-object v14, v2

    move v15, v4

    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_4

    const-wide/16 v16, 0x0

    :goto_3
    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_5

    const-wide/high16 v20, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_4
    invoke-static/range {v16 .. v21}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1544
    .line 1531
    .end local v10    # "max":D
    :cond_2
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1527
    .end local v2    # "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v3    # "columnConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/ColumnConstraints;>;"
    .end local v4    # "i":I
    .end local v5    # "curConstraint":Ljavafx/scene/layout/ColumnConstraints;
    .end local v6    # "prefColumnWidth":D
    .end local v8    # "min":D
    :cond_3
    move-object v14, v0

    const-wide/16 v15, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/layout/GridPane;->createCompositeColumns(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v14

    move-object v2, v14

    .restart local v2    # "result":Ljavafx/scene/layout/GridPane$CompositeSize;
    goto :goto_1

    .line 1538
    .restart local v3    # "columnConstr":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/layout/ColumnConstraints;>;"
    .restart local v4    # "i":I
    .restart local v5    # "curConstraint":Ljavafx/scene/layout/ColumnConstraints;
    .restart local v6    # "prefColumnWidth":D
    .restart local v8    # "min":D
    .restart local v10    # "max":D
    :cond_4
    move-wide/from16 v16, v8

    goto :goto_3

    :cond_5
    move-wide/from16 v20, v10

    goto :goto_4

    .line 1542
    :cond_6
    move-object v14, v2

    move v15, v4

    move-wide/from16 v16, v6

    invoke-static/range {v14 .. v17}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_5

    .line 1544
    .end local v10    # "max":D
    :cond_7
    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 1545
    move-object v14, v2

    move v15, v4

    move-wide/from16 v16, v8

    invoke-static/range {v14 .. v17}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    goto :goto_5

    .line 1548
    .end local v5    # "curConstraint":Ljavafx/scene/layout/ColumnConstraints;
    .end local v6    # "prefColumnWidth":D
    .end local v8    # "min":D
    :cond_8
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/layout/GridPane;->getManagedChildren()Ljava/util/List;

    move-result-object v14

    move-object v4, v14

    .line 1549
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v14, 0x0

    move v5, v14

    .local v5, "i":I
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v6, v14

    .local v6, "size":I
    :goto_6
    move v14, v5

    move v15, v6

    if-ge v14, v15, :cond_f

    .line 1550
    move-object v14, v4

    move v15, v5

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    move-object v7, v14

    .line 1551
    .local v7, "child":Ljavafx/scene/Node;
    move-object v14, v7

    invoke-static {v14}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v14

    move v8, v14

    .line 1552
    .local v8, "start":I
    move-object v14, v0

    move-object v15, v7

    invoke-direct {v14, v15}, Ljavafx/scene/layout/GridPane;->getNodeColumnEndConvertRemaining(Ljavafx/scene/Node;)I

    move-result v14

    move v9, v14

    .line 1553
    .local v9, "end":I
    move v14, v8

    move v15, v9

    if-ne v14, v15, :cond_d

    move-object v14, v2

    move v15, v8

    invoke-static {v14, v15}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1200(Ljavafx/scene/layout/GridPane$CompositeSize;I)Z

    move-result v14

    if-nez v14, :cond_d

    .line 1554
    move-object v14, v0

    move v15, v8

    invoke-direct {v14, v15}, Ljavafx/scene/layout/GridPane;->getColumnMinWidth(I)D

    move-result-wide v14

    move-wide v10, v14

    .line 1555
    .local v10, "min":D
    move-object v14, v0

    move v15, v8

    invoke-direct {v14, v15}, Ljavafx/scene/layout/GridPane;->getColumnMaxWidth(I)D

    move-result-wide v14

    move-wide v12, v14

    .line 1556
    .local v12, "max":D
    move-object v14, v2

    move v15, v8

    move-wide/from16 v16, v10

    const-wide/16 v18, 0x0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_a

    const-wide/16 v16, 0x0

    :goto_7
    move-object/from16 v18, v0

    move-object/from16 v19, v7

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    .line 1557
    invoke-direct/range {v20 .. v21}, Ljavafx/scene/layout/GridPane;->getBaselineComplementForChild(Ljavafx/scene/Node;)D

    move-result-wide v20

    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/GridPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v22

    move-object/from16 v23, v1

    if-nez v23, :cond_b

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    .line 1558
    :goto_8
    const/16 v25, 0x0

    .line 1556
    invoke-virtual/range {v18 .. v25}, Ljavafx/scene/layout/GridPane;->computeChildPrefAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v18

    move-wide/from16 v20, v12

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_c

    const-wide v20, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_9
    invoke-static/range {v16 .. v21}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1300(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1560
    .line 1549
    .end local v10    # "min":D
    .end local v12    # "max":D
    :cond_9
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1556
    .restart local v10    # "min":D
    .restart local v12    # "max":D
    :cond_a
    move-wide/from16 v16, v10

    goto :goto_7

    .line 1557
    :cond_b
    move-object/from16 v23, v0

    move-object/from16 v24, v7

    move-object/from16 v25, v1

    .line 1558
    invoke-direct/range {v23 .. v25}, Ljavafx/scene/layout/GridPane;->getTotalHeightOfNodeRows(Ljavafx/scene/Node;[D)D

    move-result-wide v23

    goto :goto_8

    .line 1556
    :cond_c
    move-wide/from16 v20, v12

    goto :goto_9

    .line 1560
    .end local v10    # "min":D
    .end local v12    # "max":D
    :cond_d
    move v14, v8

    move v15, v9

    if-eq v14, v15, :cond_9

    .line 1561
    move-object v14, v2

    move v15, v8

    move/from16 v16, v9

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Ljavafx/scene/layout/GridPane;->getBaselineComplementForChild(Ljavafx/scene/Node;)D

    move-result-wide v19

    move-object/from16 v21, v7

    .line 1562
    invoke-static/range {v21 .. v21}, Ljavafx/scene/layout/GridPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v21

    move-object/from16 v22, v1

    if-nez v22, :cond_e

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 1563
    :goto_b
    const/16 v24, 0x0

    .line 1561
    invoke-virtual/range {v17 .. v24}, Ljavafx/scene/layout/GridPane;->computeChildPrefAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v17

    invoke-static/range {v14 .. v18}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1400(Ljavafx/scene/layout/GridPane$CompositeSize;IID)V

    goto :goto_a

    .line 1562
    :cond_e
    move-object/from16 v22, v0

    move-object/from16 v23, v7

    move-object/from16 v24, v1

    .line 1563
    invoke-direct/range {v22 .. v24}, Ljavafx/scene/layout/GridPane;->getTotalHeightOfNodeRows(Ljavafx/scene/Node;[D)D

    move-result-wide v22

    goto :goto_b

    .line 1566
    .end local v7    # "child":Ljavafx/scene/Node;
    .end local v8    # "start":I
    .end local v9    # "end":I
    :cond_f
    move-object v14, v2

    move-object v0, v14

    goto/16 :goto_0
.end method

.method private computeWidthsToFit(D)Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 9

    .prologue
    .line 1626
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-wide v1, p1

    .local v1, "width":D
    sget-boolean v4, Ljavafx/scene/layout/GridPane;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-wide v4, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1628
    :cond_0
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 1630
    move-object v4, v0

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/layout/GridPane;->createCompositeColumns(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v4

    move-object v3, v4

    .line 1634
    .local v3, "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_0
    move-object v4, v0

    move-object v5, v3

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/GridPane;->adjustColumnWidths(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v4

    .line 1635
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0

    .line 1632
    .end local v3    # "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljavafx/scene/layout/GridPane;->computePrefWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane$CompositeSize;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v3, v4

    .restart local v3    # "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    goto :goto_0
.end method

.method static varargs createColumn(II[Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 671
    move v0, p0

    .local v0, "columnIndex":I
    move v1, p1

    .local v1, "rowIndex":I
    move-object v2, p2

    .local v2, "nodes":[Ljavafx/scene/Node;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 672
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    move v5, v0

    move v6, v1

    move v7, v3

    add-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Ljavafx/scene/layout/GridPane;->setConstraints(Ljavafx/scene/Node;II)V

    .line 671
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    :cond_0
    return-void
.end method

.method private createCompositeColumns(D)Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 15

    .prologue
    .line 2353
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-wide/from16 v2, p1

    .local v2, "initSize":D
    new-instance v4, Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/layout/GridPane;->getNumberOfColumns()I

    move-result v6

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/layout/GridPane;->columnPercentTotal:D

    move-object v10, v1

    move-object v11, v1

    .line 2354
    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getHgap()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v10

    move-wide v12, v2

    invoke-direct/range {v5 .. v13}, Ljavafx/scene/layout/GridPane$CompositeSize;-><init>(I[DDDD)V

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-object v1
.end method

.method private createCompositeRows(D)Ljavafx/scene/layout/GridPane$CompositeSize;
    .locals 15

    .prologue
    .line 2348
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-wide/from16 v2, p1

    .local v2, "initSize":D
    new-instance v4, Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/layout/GridPane;->getNumberOfRows()I

    move-result v6

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/layout/GridPane;->rowPercentTotal:D

    move-object v10, v1

    move-object v11, v1

    .line 2349
    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getVgap()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v10

    move-wide v12, v2

    invoke-direct/range {v5 .. v13}, Ljavafx/scene/layout/GridPane$CompositeSize;-><init>(I[DDDD)V

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-object v1
.end method

.method private createGridLine(DDDD)Ljavafx/scene/shape/Line;
    .locals 15

    .prologue
    .line 2328
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-wide/from16 v2, p1

    .local v2, "startX":D
    move-wide/from16 v4, p3

    .local v4, "startY":D
    move-wide/from16 v6, p5

    .local v6, "endX":D
    move-wide/from16 v8, p7

    .local v8, "endY":D
    new-instance v11, Ljavafx/scene/shape/Line;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljavafx/scene/shape/Line;-><init>()V

    move-object v10, v11

    .line 2329
    .local v10, "line":Ljavafx/scene/shape/Line;
    move-object v11, v10

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/shape/Line;->setStartX(D)V

    .line 2330
    move-object v11, v10

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/shape/Line;->setStartY(D)V

    .line 2331
    move-object v11, v10

    move-wide v12, v6

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/shape/Line;->setEndX(D)V

    .line 2332
    move-object v11, v10

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/shape/Line;->setEndY(D)V

    .line 2333
    move-object v11, v10

    sget-object v12, Ljavafx/scene/layout/GridPane;->GRID_LINE_COLOR:Ljavafx/scene/paint/Color;

    invoke-virtual {v11, v12}, Ljavafx/scene/shape/Line;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 2334
    move-object v11, v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/shape/Line;->setStrokeDashOffset(D)V

    .line 2336
    move-object v11, v10

    move-object v1, v11

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-object v1
.end method

.method private static createPriorityArray(ILjavafx/scene/layout/Priority;)[Ljavafx/scene/layout/Priority;
    .locals 5

    .prologue
    .line 717
    move v0, p0

    .local v0, "length":I
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/layout/Priority;
    move v3, v0

    new-array v3, v3, [Ljavafx/scene/layout/Priority;

    move-object v2, v3

    .line 718
    .local v2, "array":[Ljavafx/scene/layout/Priority;
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 719
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "length":I
    return-object v0
.end method

.method static varargs createRow(II[Ljavafx/scene/Node;)V
    .locals 7

    .prologue
    .line 665
    move v0, p0

    .local v0, "rowIndex":I
    move v1, p1

    .local v1, "columnIndex":I
    move-object v2, p2

    .local v2, "nodes":[Ljavafx/scene/Node;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 666
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    move v5, v1

    move v6, v3

    add-int/2addr v5, v6

    move v6, v0

    invoke-static {v4, v5, v6}, Ljavafx/scene/layout/GridPane;->setConstraints(Ljavafx/scene/Node;II)V

    .line 665
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 668
    :cond_0
    return-void
.end method

.method private getAlignmentInternal()Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/GridPane;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v2

    move-object v1, v2

    .line 841
    .local v1, "localPos":Ljavafx/geometry/Pos;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getBaselineComplementForChild(Ljavafx/scene/Node;)D
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/layout/GridPane;->isNodePositionedByBaseline(Ljavafx/scene/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/GridPane;->rowMinBaselineComplement:[D

    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v3

    aget-wide v2, v2, v3

    move-wide v0, v2

    .line 411
    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move-wide v0, v2

    goto :goto_0
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
    .line 2475
    # getter for: Ljavafx/scene/layout/GridPane$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/layout/GridPane$StyleableProperties;->access$2600()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getColumnHalignment(I)Ljavafx/geometry/HPos;
    .locals 5

    .prologue
    .line 1274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move v1, p1

    .local v1, "columnIndex":I
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1275
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/layout/ColumnConstraints;

    move-object v2, v3

    .line 1276
    .local v2, "constraints":Ljavafx/scene/layout/ColumnConstraints;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/ColumnConstraints;->getHalignment()Ljavafx/geometry/HPos;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1277
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/ColumnConstraints;->getHalignment()Ljavafx/geometry/HPos;

    move-result-object v3

    move-object v0, v3

    .line 1280
    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    .end local v2    # "constraints":Ljavafx/scene/layout/ColumnConstraints;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    sget-object v3, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    move-object v0, v3

    goto :goto_0
.end method

.method public static getColumnIndex(Ljavafx/scene/Node;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-column"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getColumnMaxWidth(I)D
    .locals 6

    .prologue
    .line 1301
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move v2, p1

    .local v2, "columnIndex":I
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1302
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/ColumnConstraints;

    move-object v3, v4

    .line 1303
    .local v3, "constraints":Ljavafx/scene/layout/ColumnConstraints;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/layout/ColumnConstraints;->getMaxWidth()D

    move-result-wide v4

    move-wide v1, v4

    .line 1306
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    .end local v3    # "constraints":Ljavafx/scene/layout/ColumnConstraints;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-wide v1, v4

    goto :goto_0
.end method

.method private getColumnMinWidth(I)D
    .locals 6

    .prologue
    .line 1284
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move v2, p1

    .local v2, "columnIndex":I
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1285
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/ColumnConstraints;

    move-object v3, v4

    .line 1286
    .local v3, "constraints":Ljavafx/scene/layout/ColumnConstraints;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/layout/ColumnConstraints;->getMinWidth()D

    move-result-wide v4

    move-wide v1, v4

    .line 1289
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    .end local v3    # "constraints":Ljavafx/scene/layout/ColumnConstraints;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-wide v1, v4

    goto :goto_0
.end method

.method private getColumnPrefWidth(I)D
    .locals 6

    .prologue
    .line 1310
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move v2, p1

    .local v2, "columnIndex":I
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1311
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/ColumnConstraints;

    move-object v3, v4

    .line 1312
    .local v3, "constraints":Ljavafx/scene/layout/ColumnConstraints;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/layout/ColumnConstraints;->getPrefWidth()D

    move-result-wide v4

    move-wide v1, v4

    .line 1315
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    .end local v3    # "constraints":Ljavafx/scene/layout/ColumnConstraints;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-wide v1, v4

    goto :goto_0
.end method

.method public static getColumnSpan(Ljavafx/scene/Node;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-column-span"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static getHalignment(Ljavafx/scene/Node;)Ljavafx/geometry/HPos;
    .locals 3

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-halignment"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/HPos;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static getHgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;
    .locals 3

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-hgrow"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/layout/Priority;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 3

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-margin"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method static getNodeColumnEnd(Ljavafx/scene/Node;)I
    .locals 4

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getNodeColumnSpan(Ljavafx/scene/Node;)I

    move-result v2

    move v1, v2

    .line 703
    .local v1, "columnSpan":I
    move v2, v1

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v2

    move v3, v1

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    const v2, 0x7fffffff

    goto :goto_0
.end method

.method private getNodeColumnEndConvertRemaining(Ljavafx/scene/Node;)I
    .locals 5

    .prologue
    .line 2363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/layout/GridPane;->getNodeColumnSpan(Ljavafx/scene/Node;)I

    move-result v3

    move v2, v3

    .line 2364
    .local v2, "columnSpan":I
    move v3, v2

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_0

    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v3

    move v4, v2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/GridPane;->getNumberOfColumns()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method static getNodeColumnIndex(Ljavafx/scene/Node;)I
    .locals 3

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getColumnIndex(Ljavafx/scene/Node;)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 693
    .local v1, "columnIndex":Ljava/lang/Integer;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getNodeColumnSpan(Ljavafx/scene/Node;)I
    .locals 3

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getColumnSpan(Ljavafx/scene/Node;)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 698
    .local v1, "colspan":Ljava/lang/Integer;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static getNodeHgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;
    .locals 3

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getHgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;

    move-result-object v2

    move-object v1, v2

    .line 708
    .local v1, "hgrow":Ljavafx/scene/layout/Priority;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    sget-object v2, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    goto :goto_0
.end method

.method static getNodeRowEnd(Ljavafx/scene/Node;)I
    .locals 4

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getNodeRowSpan(Ljavafx/scene/Node;)I

    move-result v2

    move v1, v2

    .line 688
    .local v1, "rowSpan":I
    move v2, v1

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v2

    move v3, v1

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    const v2, 0x7fffffff

    goto :goto_0
.end method

.method private getNodeRowEndConvertRemaining(Ljavafx/scene/Node;)I
    .locals 5

    .prologue
    .line 2358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/layout/GridPane;->getNodeRowSpan(Ljavafx/scene/Node;)I

    move-result v3

    move v2, v3

    .line 2359
    .local v2, "rowSpan":I
    move v3, v2

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_0

    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v3

    move v4, v2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/GridPane;->getNumberOfRows()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method static getNodeRowIndex(Ljavafx/scene/Node;)I
    .locals 3

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getRowIndex(Ljavafx/scene/Node;)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 678
    .local v1, "rowIndex":Ljava/lang/Integer;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getNodeRowSpan(Ljavafx/scene/Node;)I
    .locals 3

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getRowSpan(Ljavafx/scene/Node;)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 683
    .local v1, "rowspan":Ljava/lang/Integer;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static getNodeVgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;
    .locals 3

    .prologue
    .line 712
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getVgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;

    move-result-object v2

    move-object v1, v2

    .line 713
    .local v1, "vgrow":Ljavafx/scene/layout/Priority;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    sget-object v2, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    goto :goto_0
.end method

.method private getNumberOfColumns()I
    .locals 2

    .prologue
    .line 1079
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/GridPane;->computeGridMetrics()V

    .line 1080
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/GridPane;->numColumns:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return v0
.end method

.method private getNumberOfRows()I
    .locals 2

    .prologue
    .line 1074
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/GridPane;->computeGridMetrics()V

    .line 1075
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/GridPane;->numRows:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return v0
.end method

.method public static getRowIndex(Ljavafx/scene/Node;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-row"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getRowMaxHeight(I)D
    .locals 6

    .prologue
    .line 1328
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move v2, p1

    .local v2, "rowIndex":I
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1329
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/RowConstraints;

    move-object v3, v4

    .line 1330
    .local v3, "constraints":Ljavafx/scene/layout/RowConstraints;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/layout/RowConstraints;->getMaxHeight()D

    move-result-wide v4

    move-wide v1, v4

    .line 1332
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    .end local v3    # "constraints":Ljavafx/scene/layout/RowConstraints;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-wide v1, v4

    goto :goto_0
.end method

.method private getRowMinHeight(I)D
    .locals 6

    .prologue
    .line 1293
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move v2, p1

    .local v2, "rowIndex":I
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1294
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/RowConstraints;

    move-object v3, v4

    .line 1295
    .local v3, "constraints":Ljavafx/scene/layout/RowConstraints;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/layout/RowConstraints;->getMinHeight()D

    move-result-wide v4

    move-wide v1, v4

    .line 1297
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    .end local v3    # "constraints":Ljavafx/scene/layout/RowConstraints;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-wide v1, v4

    goto :goto_0
.end method

.method private getRowPrefHeight(I)D
    .locals 6

    .prologue
    .line 1319
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move v2, p1

    .local v2, "rowIndex":I
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1320
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/RowConstraints;

    move-object v3, v4

    .line 1321
    .local v3, "constraints":Ljavafx/scene/layout/RowConstraints;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/layout/RowConstraints;->getPrefHeight()D

    move-result-wide v4

    move-wide v1, v4

    .line 1324
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    .end local v3    # "constraints":Ljavafx/scene/layout/RowConstraints;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-wide v1, v4

    goto :goto_0
.end method

.method public static getRowSpan(Ljavafx/scene/Node;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-row-span"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getRowValignment(I)Ljavafx/geometry/VPos;
    .locals 5

    .prologue
    .line 1264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move v1, p1

    .local v1, "rowIndex":I
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1265
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/layout/RowConstraints;

    move-object v2, v3

    .line 1266
    .local v2, "constraints":Ljavafx/scene/layout/RowConstraints;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/RowConstraints;->getValignment()Ljavafx/geometry/VPos;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1267
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/RowConstraints;->getValignment()Ljavafx/geometry/VPos;

    move-result-object v3

    move-object v0, v3

    .line 1270
    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    .end local v2    # "constraints":Ljavafx/scene/layout/RowConstraints;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    sget-object v3, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    move-object v0, v3

    goto :goto_0
.end method

.method private getTotalHeightOfNodeRows(Ljavafx/scene/Node;[D)D
    .locals 12

    .prologue
    .line 1479
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object v2, p1

    .local v2, "child":Ljavafx/scene/Node;
    move-object v3, p2

    .local v3, "heights":[D
    move-object v8, v2

    invoke-static {v8}, Ljavafx/scene/layout/GridPane;->getNodeRowSpan(Ljavafx/scene/Node;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1480
    move-object v8, v3

    move-object v9, v2

    invoke-static {v9}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v9

    aget-wide v8, v8, v9

    move-wide v1, v8

    .line 1486
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-wide v1

    .line 1482
    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 1483
    .local v4, "total":D
    move-object v8, v2

    invoke-static {v8}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v8

    move v6, v8

    .local v6, "i":I
    move-object v8, v1

    move-object v9, v2

    invoke-direct {v8, v9}, Ljavafx/scene/layout/GridPane;->getNodeRowEndConvertRemaining(Ljavafx/scene/Node;)I

    move-result v8

    move v7, v8

    .local v7, "last":I
    :goto_1
    move v8, v6

    move v9, v7

    if-gt v8, v9, :cond_1

    .line 1484
    move-wide v8, v4

    move-object v10, v3

    move v11, v6

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 1483
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1486
    :cond_1
    move-wide v8, v4

    move-wide v1, v8

    goto :goto_0
.end method

.method private getTotalWidthOfNodeColumns(Ljavafx/scene/Node;[D)D
    .locals 12

    .prologue
    .line 1350
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object v2, p1

    .local v2, "child":Ljavafx/scene/Node;
    move-object v3, p2

    .local v3, "widths":[D
    move-object v8, v2

    invoke-static {v8}, Ljavafx/scene/layout/GridPane;->getNodeColumnSpan(Ljavafx/scene/Node;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1351
    move-object v8, v3

    move-object v9, v2

    invoke-static {v9}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v9

    aget-wide v8, v8, v9

    move-wide v1, v8

    .line 1357
    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-wide v1

    .line 1353
    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 1354
    .local v4, "total":D
    move-object v8, v2

    invoke-static {v8}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v8

    move v6, v8

    .local v6, "i":I
    move-object v8, v1

    move-object v9, v2

    invoke-direct {v8, v9}, Ljavafx/scene/layout/GridPane;->getNodeColumnEndConvertRemaining(Ljavafx/scene/Node;)I

    move-result v8

    move v7, v8

    .local v7, "last":I
    :goto_1
    move v8, v6

    move v9, v7

    if-gt v8, v9, :cond_1

    .line 1355
    move-wide v8, v4

    move-object v10, v3

    move v11, v6

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 1354
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1357
    :cond_1
    move-wide v8, v4

    move-wide v1, v8

    goto :goto_0
.end method

.method public static getValignment(Ljavafx/scene/Node;)Ljavafx/geometry/VPos;
    .locals 3

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-valignment"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/VPos;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static getVgrow(Ljavafx/scene/Node;)Ljavafx/scene/layout/Priority;
    .locals 3

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-vgrow"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/layout/Priority;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private growOrShrinkColumnWidths(Ljavafx/scene/layout/GridPane$CompositeSize;Ljavafx/scene/layout/Priority;D)D
    .locals 29

    .prologue
    .line 2224
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v4, p1

    .local v4, "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object/from16 v5, p2

    .local v5, "priority":Ljavafx/scene/layout/Priority;
    move-wide/from16 v6, p3

    .local v6, "extraWidth":D
    move-wide/from16 v24, v6

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    .line 2225
    const-wide/16 v24, 0x0

    move-wide/from16 v3, v24

    .line 2287
    .end local v3    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-wide v3

    .line 2227
    .restart local v3    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-wide/from16 v24, v6

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_3

    const/16 v24, 0x1

    :goto_1
    move/from16 v8, v24

    .line 2228
    .local v8, "shrinking":Z
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v24

    .line 2230
    .local v9, "adjusting":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v24, 0x0

    move/from16 v10, v24

    .local v10, "i":I
    :goto_2
    move/from16 v24, v10

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->columnGrow:[Ljavafx/scene/layout/Priority;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 2231
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move-object/from16 v24, v0

    move/from16 v25, v10

    aget-wide v24, v24, v25

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    move/from16 v24, v8

    if-nez v24, :cond_1

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->columnGrow:[Ljavafx/scene/layout/Priority;

    move-object/from16 v24, v0

    move/from16 v25, v10

    aget-object v24, v24, v25

    move-object/from16 v25, v5

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 2232
    :cond_1
    move-object/from16 v24, v9

    move/from16 v25, v10

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 2230
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2227
    .end local v8    # "shrinking":Z
    .end local v9    # "adjusting":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    :cond_3
    const/16 v24, 0x0

    goto :goto_1

    .line 2236
    .restart local v8    # "shrinking":Z
    .restart local v9    # "adjusting":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "i":I
    :cond_4
    move-wide/from16 v24, v6

    move-wide/from16 v10, v24

    .line 2237
    .local v10, "available":D
    const/16 v24, 0x0

    move/from16 v12, v24

    .line 2238
    .local v12, "handleRemainder":Z
    const-wide/16 v24, 0x0

    move-wide/from16 v13, v24

    .line 2243
    .local v13, "portion":D
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_b

    const/16 v24, 0x1

    :goto_3
    move/from16 v15, v24

    .line 2244
    .local v15, "wasPositive":Z
    move/from16 v24, v15

    move/from16 v16, v24

    .line 2246
    .local v16, "isPositive":Z
    move/from16 v24, v8

    if-eqz v24, :cond_c

    move-object/from16 v24, v3

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Ljavafx/scene/layout/GridPane;->computeMinWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v24

    .line 2247
    :goto_4
    move-object/from16 v17, v24

    .line 2248
    .local v17, "limitSize":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_5
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_12

    move/from16 v24, v15

    move/from16 v25, v16

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    move-object/from16 v24, v9

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_12

    .line 2249
    move/from16 v24, v12

    if-nez v24, :cond_5

    .line 2250
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_d

    move-wide/from16 v24, v10

    move-object/from16 v26, v9

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    .line 2251
    :goto_6
    move-wide/from16 v13, v24

    .line 2253
    :cond_5
    move-wide/from16 v24, v13

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_11

    .line 2254
    move-object/from16 v24, v9

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v18, v24

    .local v18, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_7
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 2255
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v19, v24

    .line 2256
    .local v19, "index":I
    move-object/from16 v24, v3

    move-object/from16 v25, v17

    move/from16 v26, v19

    move/from16 v27, v8

    invoke-static/range {v25 .. v27}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$2000(Ljavafx/scene/layout/GridPane$CompositeSize;IZ)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v24

    move-object/from16 v26, v4

    move/from16 v27, v19

    .line 2257
    invoke-static/range {v26 .. v27}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 2258
    .local v20, "limit":D
    move/from16 v24, v8

    if-eqz v24, :cond_6

    move-wide/from16 v24, v20

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-gtz v24, :cond_7

    :cond_6
    move/from16 v24, v8

    if-nez v24, :cond_8

    move-wide/from16 v24, v20

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_8

    .line 2261
    :cond_7
    const-wide/16 v24, 0x0

    move-wide/from16 v20, v24

    .line 2263
    :cond_8
    move-wide/from16 v24, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v26, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v24, v24, v26

    if-gtz v24, :cond_e

    move-wide/from16 v24, v20

    :goto_8
    move-wide/from16 v22, v24

    .line 2264
    .local v22, "change":D
    move-object/from16 v24, v4

    move/from16 v25, v19

    move-wide/from16 v26, v22

    invoke-static/range {v24 .. v27}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$2100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 2265
    move-wide/from16 v24, v10

    move-wide/from16 v26, v22

    sub-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 2266
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_f

    const/16 v24, 0x1

    :goto_9
    move/from16 v16, v24

    .line 2267
    move-wide/from16 v24, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v26, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v24, v24, v26

    if-gez v24, :cond_9

    .line 2268
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->remove()V

    .line 2270
    :cond_9
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_10

    .line 2271
    .line 2273
    .end local v19    # "index":I
    .end local v20    # "limit":D
    .end local v22    # "change":D
    :cond_a
    goto/16 :goto_5

    .line 2243
    .end local v15    # "wasPositive":Z
    .end local v16    # "isPositive":Z
    .end local v17    # "limitSize":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 2246
    .restart local v15    # "wasPositive":Z
    .restart local v16    # "isPositive":Z
    :cond_c
    move-object/from16 v24, v3

    .line 2247
    invoke-direct/range {v24 .. v24}, Ljavafx/scene/layout/GridPane;->computeMaxWidths()Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v24

    goto/16 :goto_4

    .line 2250
    .restart local v17    # "limitSize":Ljavafx/scene/layout/GridPane$CompositeSize;
    :cond_d
    move-wide/from16 v24, v10

    move-object/from16 v26, v9

    .line 2251
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    goto/16 :goto_6

    .line 2263
    .restart local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v19    # "index":I
    .restart local v20    # "limit":D
    :cond_e
    move-wide/from16 v24, v13

    goto :goto_8

    .line 2266
    .restart local v22    # "change":D
    :cond_f
    const/16 v24, 0x0

    goto :goto_9

    .line 2273
    :cond_10
    goto/16 :goto_7

    .line 2276
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v19    # "index":I
    .end local v20    # "limit":D
    .end local v22    # "change":D
    :cond_11
    move-wide/from16 v24, v10

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v9

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    rem-int v24, v24, v25

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v13, v24

    .line 2277
    move-wide/from16 v24, v13

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_13

    .line 2278
    .line 2287
    :cond_12
    move-wide/from16 v24, v10

    move-wide/from16 v3, v24

    goto/16 :goto_0

    .line 2281
    :cond_13
    move/from16 v24, v8

    if-eqz v24, :cond_14

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    :goto_a
    move-wide/from16 v13, v24

    .line 2282
    const/16 v24, 0x1

    move/from16 v12, v24

    goto/16 :goto_5

    .line 2281
    :cond_14
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    goto :goto_a
.end method

.method private growOrShrinkRowHeights(Ljavafx/scene/layout/GridPane$CompositeSize;Ljavafx/scene/layout/Priority;D)D
    .locals 29

    .prologue
    .line 1983
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v4, p1

    .local v4, "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object/from16 v5, p2

    .local v5, "priority":Ljavafx/scene/layout/Priority;
    move-wide/from16 v6, p3

    .local v6, "extraHeight":D
    move-wide/from16 v24, v6

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    const/16 v24, 0x1

    :goto_0
    move/from16 v8, v24

    .line 1984
    .local v8, "shrinking":Z
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v24

    .line 1986
    .local v9, "adjusting":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v24, 0x0

    move/from16 v10, v24

    .local v10, "i":I
    :goto_1
    move/from16 v24, v10

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowGrow:[Ljavafx/scene/layout/Priority;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 1987
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move-object/from16 v24, v0

    move/from16 v25, v10

    aget-wide v24, v24, v25

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_1

    move/from16 v24, v8

    if-nez v24, :cond_0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowGrow:[Ljavafx/scene/layout/Priority;

    move-object/from16 v24, v0

    move/from16 v25, v10

    aget-object v24, v24, v25

    move-object/from16 v25, v5

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1988
    :cond_0
    move-object/from16 v24, v9

    move/from16 v25, v10

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1986
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1983
    .end local v8    # "shrinking":Z
    .end local v9    # "adjusting":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 1992
    .restart local v8    # "shrinking":Z
    .restart local v9    # "adjusting":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "i":I
    :cond_3
    move-wide/from16 v24, v6

    move-wide/from16 v10, v24

    .line 1993
    .local v10, "available":D
    const/16 v24, 0x0

    move/from16 v12, v24

    .line 1994
    .local v12, "handleRemainder":Z
    const-wide/16 v24, 0x0

    move-wide/from16 v13, v24

    .line 1999
    .local v13, "portion":D
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_a

    const/16 v24, 0x1

    :goto_2
    move/from16 v15, v24

    .line 2000
    .local v15, "wasPositive":Z
    move/from16 v24, v15

    move/from16 v16, v24

    .line 2002
    .local v16, "isPositive":Z
    move/from16 v24, v8

    if-eqz v24, :cond_b

    move-object/from16 v24, v3

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Ljavafx/scene/layout/GridPane;->computeMinHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v24

    .line 2003
    :goto_3
    move-object/from16 v17, v24

    .line 2004
    .local v17, "limitSize":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_4
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_11

    move/from16 v24, v15

    move/from16 v25, v16

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    move-object/from16 v24, v9

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_11

    .line 2005
    move/from16 v24, v12

    if-nez v24, :cond_4

    .line 2006
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_c

    move-wide/from16 v24, v10

    move-object/from16 v26, v9

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    .line 2007
    :goto_5
    move-wide/from16 v13, v24

    .line 2009
    :cond_4
    move-wide/from16 v24, v13

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_10

    .line 2010
    move-object/from16 v24, v9

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v18, v24

    .local v18, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 2011
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v19, v24

    .line 2012
    .local v19, "index":I
    move-object/from16 v24, v3

    move-object/from16 v25, v17

    move/from16 v26, v19

    move/from16 v27, v8

    invoke-static/range {v25 .. v27}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$2000(Ljavafx/scene/layout/GridPane$CompositeSize;IZ)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v24

    move-object/from16 v26, v4

    move/from16 v27, v19

    .line 2013
    invoke-static/range {v26 .. v27}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 2014
    .local v20, "limit":D
    move/from16 v24, v8

    if-eqz v24, :cond_5

    move-wide/from16 v24, v20

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-gtz v24, :cond_6

    :cond_5
    move/from16 v24, v8

    if-nez v24, :cond_7

    move-wide/from16 v24, v20

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_7

    .line 2017
    :cond_6
    const-wide/16 v24, 0x0

    move-wide/from16 v20, v24

    .line 2019
    :cond_7
    move-wide/from16 v24, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v26, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v24, v24, v26

    if-gtz v24, :cond_d

    move-wide/from16 v24, v20

    :goto_7
    move-wide/from16 v22, v24

    .line 2020
    .local v22, "change":D
    move-object/from16 v24, v4

    move/from16 v25, v19

    move-wide/from16 v26, v22

    invoke-static/range {v24 .. v27}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$2100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 2021
    move-wide/from16 v24, v10

    move-wide/from16 v26, v22

    sub-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 2022
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_e

    const/16 v24, 0x1

    :goto_8
    move/from16 v16, v24

    .line 2023
    move-wide/from16 v24, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v26, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v24, v24, v26

    if-gez v24, :cond_8

    .line 2024
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->remove()V

    .line 2026
    :cond_8
    move-wide/from16 v24, v10

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_f

    .line 2027
    .line 2029
    .end local v19    # "index":I
    .end local v20    # "limit":D
    .end local v22    # "change":D
    :cond_9
    goto/16 :goto_4

    .line 1999
    .end local v15    # "wasPositive":Z
    .end local v16    # "isPositive":Z
    .end local v17    # "limitSize":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 2002
    .restart local v15    # "wasPositive":Z
    .restart local v16    # "isPositive":Z
    :cond_b
    move-object/from16 v24, v3

    .line 2003
    invoke-direct/range {v24 .. v24}, Ljavafx/scene/layout/GridPane;->computeMaxHeights()Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v24

    goto/16 :goto_3

    .line 2006
    .restart local v17    # "limitSize":Ljavafx/scene/layout/GridPane$CompositeSize;
    :cond_c
    move-wide/from16 v24, v10

    move-object/from16 v26, v9

    .line 2007
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    goto/16 :goto_5

    .line 2019
    .restart local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v19    # "index":I
    .restart local v20    # "limit":D
    :cond_d
    move-wide/from16 v24, v13

    goto :goto_7

    .line 2022
    .restart local v22    # "change":D
    :cond_e
    const/16 v24, 0x0

    goto :goto_8

    .line 2029
    :cond_f
    goto/16 :goto_6

    .line 2032
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v19    # "index":I
    .end local v20    # "limit":D
    .end local v22    # "change":D
    :cond_10
    move-wide/from16 v24, v10

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v9

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    rem-int v24, v24, v25

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v13, v24

    .line 2033
    move-wide/from16 v24, v13

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_12

    .line 2034
    .line 2043
    :cond_11
    move-wide/from16 v24, v10

    move-wide/from16 v3, v24

    .end local v3    # "this":Ljavafx/scene/layout/GridPane;
    return-wide v3

    .line 2037
    .restart local v3    # "this":Ljavafx/scene/layout/GridPane;
    :cond_12
    move/from16 v24, v8

    if-eqz v24, :cond_13

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    :goto_9
    move-wide/from16 v13, v24

    .line 2038
    const/16 v24, 0x1

    move/from16 v12, v24

    goto/16 :goto_4

    .line 2037
    :cond_13
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    goto :goto_9
.end method

.method private growToMultiSpanPreferredHeights(Ljavafx/scene/layout/GridPane$CompositeSize;D)D
    .locals 36

    .prologue
    .line 1849
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v4, p1

    .local v4, "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-wide/from16 v5, p2

    .local v5, "extraHeight":D
    move-wide/from16 v28, v5

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_0

    .line 1850
    move-wide/from16 v28, v5

    move-wide/from16 v3, v28

    .line 1979
    .end local v3    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-wide v3

    .line 1853
    .restart local v3    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    new-instance v28, Ljava/util/TreeSet;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v7, v28

    .line 1854
    .local v7, "rowsAlways":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v28, Ljava/util/TreeSet;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v8, v28

    .line 1855
    .local v8, "rowsSometimes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v28, Ljava/util/TreeSet;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v9, v28

    .line 1856
    .local v9, "lastRows":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v28, v4

    invoke-static/range {v28 .. v28}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1700(Ljavafx/scene/layout/GridPane$CompositeSize;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v10, v28

    :goto_1
    move-object/from16 v28, v10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v28, v10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    move-object/from16 v11, v28

    .line 1857
    .local v11, "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    move-object/from16 v28, v11

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/layout/GridPane$Interval;

    move-object/from16 v12, v28

    .line 1858
    .local v12, "interval":Ljavafx/scene/layout/GridPane$Interval;
    move-object/from16 v28, v12

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v28, v0

    move/from16 v13, v28

    .local v13, "i":I
    :goto_2
    move/from16 v28, v13

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 1859
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move-object/from16 v28, v0

    move/from16 v29, v13

    aget-wide v28, v28, v29

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_1

    .line 1860
    sget-object v28, Ljavafx/scene/layout/GridPane$7;->$SwitchMap$javafx$scene$layout$Priority:[I

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowGrow:[Ljavafx/scene/layout/Priority;

    move-object/from16 v29, v0

    move/from16 v30, v13

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/layout/Priority;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 1858
    :cond_1
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1862
    :pswitch_0
    move-object/from16 v28, v7

    move/from16 v29, v13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 1863
    goto :goto_3

    .line 1865
    :pswitch_1
    move-object/from16 v28, v8

    move/from16 v29, v13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v28

    goto :goto_3

    .line 1870
    :cond_2
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowPercentHeight:[D

    move-object/from16 v28, v0

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    aget-wide v28, v28, v29

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_3

    .line 1871
    move-object/from16 v28, v9

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 1873
    :cond_3
    goto/16 :goto_1

    .line 1875
    .end local v11    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    .end local v12    # "interval":Ljavafx/scene/layout/GridPane$Interval;
    .end local v13    # "i":I
    :cond_4
    move-wide/from16 v28, v5

    move-wide/from16 v10, v28

    .line 1877
    .local v10, "remaining":D
    :goto_4
    move-object/from16 v28, v7

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    move-result v28

    if-lez v28, :cond_e

    move-wide/from16 v28, v10

    move-object/from16 v30, v7

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_e

    .line 1878
    move-wide/from16 v28, v10

    move-object/from16 v30, v7

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 1879
    .local v12, "rowPortion":D
    move-object/from16 v28, v7

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v14, v28

    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_5
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1880
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v15, v28

    .line 1881
    .local v15, "i":I
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getRowMaxHeight(I)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 1882
    .local v16, "maxOfRow":D
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getRowPrefHeight(I)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 1883
    .local v18, "prefOfRow":D
    move-wide/from16 v28, v12

    move-wide/from16 v20, v28

    .line 1885
    .local v20, "actualPortion":D
    move-object/from16 v28, v4

    invoke-static/range {v28 .. v28}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1700(Ljavafx/scene/layout/GridPane$CompositeSize;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v22, v28

    :goto_6
    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    move-object/from16 v23, v28

    .line 1886
    .local v23, "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    move-object/from16 v28, v23

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/layout/GridPane$Interval;

    move-object/from16 v24, v28

    .line 1887
    .local v24, "interval":Ljavafx/scene/layout/GridPane$Interval;
    move-object/from16 v28, v24

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$Interval;->access$1800(Ljavafx/scene/layout/GridPane$Interval;I)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1888
    const/16 v28, 0x0

    move/from16 v25, v28

    .line 1889
    .local v25, "intervalRows":I
    move-object/from16 v28, v24

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v28, v0

    move/from16 v26, v28

    .local v26, "j":I
    :goto_7
    move/from16 v28, v26

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 1890
    move-object/from16 v28, v7

    move/from16 v29, v26

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1891
    add-int/lit8 v25, v25, 0x1

    .line 1889
    :cond_5
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 1894
    :cond_6
    move-object/from16 v28, v4

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v29, v0

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1900(Ljavafx/scene/layout/GridPane$CompositeSize;II)D

    move-result-wide v28

    move-wide/from16 v26, v28

    .line 1895
    .local v26, "curLength":D
    const-wide/16 v28, 0x0

    move-object/from16 v30, v23

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Double;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v32, v26

    sub-double v30, v30, v32

    move/from16 v32, v25

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v30, v20

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 1898
    .end local v25    # "intervalRows":I
    .end local v26    # "curLength":D
    :cond_7
    goto/16 :goto_6

    .line 1900
    .end local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    .end local v24    # "interval":Ljavafx/scene/layout/GridPane$Interval;
    :cond_8
    move-object/from16 v28, v4

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 1901
    .local v22, "current":D
    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_b

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v16

    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    .line 1902
    :goto_8
    move-wide/from16 v24, v28

    .line 1904
    .local v24, "bounded":D
    move-wide/from16 v28, v24

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 1905
    .local v26, "portionUsed":D
    move-wide/from16 v28, v10

    move-wide/from16 v30, v26

    sub-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 1906
    move-wide/from16 v28, v26

    move-wide/from16 v30, v20

    cmpl-double v28, v28, v30

    if-nez v28, :cond_9

    move-wide/from16 v28, v26

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_a

    .line 1907
    :cond_9
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->remove()V

    .line 1909
    :cond_a
    move-object/from16 v28, v4

    move/from16 v29, v15

    move-wide/from16 v30, v24

    invoke-static/range {v28 .. v31}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1910
    goto/16 :goto_5

    .line 1901
    .end local v24    # "bounded":D
    .end local v26    # "portionUsed":D
    :cond_b
    move-wide/from16 v28, v16

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_c

    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_c

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v18

    .line 1902
    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    goto :goto_8

    :cond_c
    move-wide/from16 v28, v22

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    goto :goto_8

    .line 1911
    .end local v15    # "i":I
    .end local v16    # "maxOfRow":D
    .end local v18    # "prefOfRow":D
    .end local v20    # "actualPortion":D
    .end local v22    # "current":D
    :cond_d
    goto/16 :goto_4

    .line 1947
    .line 1913
    .end local v12    # "rowPortion":D
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_e
    move-object/from16 v28, v8

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    move-result v28

    if-lez v28, :cond_17

    move-wide/from16 v28, v10

    move-object/from16 v30, v8

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_17

    .line 1914
    move-wide/from16 v28, v10

    move-object/from16 v30, v8

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 1915
    .local v12, "colPortion":D
    move-object/from16 v28, v8

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v14, v28

    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_9
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1916
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v15, v28

    .line 1917
    .restart local v15    # "i":I
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getRowMaxHeight(I)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 1918
    .restart local v16    # "maxOfRow":D
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getRowPrefHeight(I)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 1919
    .restart local v18    # "prefOfRow":D
    move-wide/from16 v28, v12

    move-wide/from16 v20, v28

    .line 1921
    .restart local v20    # "actualPortion":D
    move-object/from16 v28, v4

    invoke-static/range {v28 .. v28}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1700(Ljavafx/scene/layout/GridPane$CompositeSize;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v22, v28

    :goto_a
    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    move-object/from16 v23, v28

    .line 1922
    .restart local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    move-object/from16 v28, v23

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/layout/GridPane$Interval;

    move-object/from16 v24, v28

    .line 1923
    .local v24, "interval":Ljavafx/scene/layout/GridPane$Interval;
    move-object/from16 v28, v24

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$Interval;->access$1800(Ljavafx/scene/layout/GridPane$Interval;I)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 1924
    const/16 v28, 0x0

    move/from16 v25, v28

    .line 1925
    .restart local v25    # "intervalRows":I
    move-object/from16 v28, v24

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v28, v0

    move/from16 v26, v28

    .local v26, "j":I
    :goto_b
    move/from16 v28, v26

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 1926
    move-object/from16 v28, v8

    move/from16 v29, v26

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1927
    add-int/lit8 v25, v25, 0x1

    .line 1925
    :cond_f
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 1930
    :cond_10
    move-object/from16 v28, v4

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v29, v0

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1900(Ljavafx/scene/layout/GridPane$CompositeSize;II)D

    move-result-wide v28

    move-wide/from16 v26, v28

    .line 1931
    .local v26, "curLength":D
    const-wide/16 v28, 0x0

    move-object/from16 v30, v23

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Double;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v32, v26

    sub-double v30, v30, v32

    move/from16 v32, v25

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v30, v20

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 1934
    .end local v25    # "intervalRows":I
    .end local v26    # "curLength":D
    :cond_11
    goto/16 :goto_a

    .line 1936
    .end local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    .end local v24    # "interval":Ljavafx/scene/layout/GridPane$Interval;
    :cond_12
    move-object/from16 v28, v4

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 1937
    .restart local v22    # "current":D
    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_15

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v16

    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    .line 1938
    :goto_c
    move-wide/from16 v24, v28

    .line 1940
    .local v24, "bounded":D
    move-wide/from16 v28, v24

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 1941
    .local v26, "portionUsed":D
    move-wide/from16 v28, v10

    move-wide/from16 v30, v26

    sub-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 1942
    move-wide/from16 v28, v26

    move-wide/from16 v30, v20

    cmpl-double v28, v28, v30

    if-nez v28, :cond_13

    move-wide/from16 v28, v26

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_14

    .line 1943
    :cond_13
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->remove()V

    .line 1945
    :cond_14
    move-object/from16 v28, v4

    move/from16 v29, v15

    move-wide/from16 v30, v24

    invoke-static/range {v28 .. v31}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1946
    goto/16 :goto_9

    .line 1937
    .end local v24    # "bounded":D
    .end local v26    # "portionUsed":D
    :cond_15
    move-wide/from16 v28, v16

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_16

    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_16

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v18

    .line 1938
    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    goto :goto_c

    :cond_16
    move-wide/from16 v28, v22

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    goto :goto_c

    .line 1978
    .line 1950
    .end local v12    # "colPortion":D
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .end local v16    # "maxOfRow":D
    .end local v18    # "prefOfRow":D
    .end local v20    # "actualPortion":D
    .end local v22    # "current":D
    :cond_17
    move-object/from16 v28, v9

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    move-result v28

    if-lez v28, :cond_1e

    move-wide/from16 v28, v10

    move-object/from16 v30, v9

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_1e

    .line 1951
    move-wide/from16 v28, v10

    move-object/from16 v30, v9

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 1952
    .restart local v12    # "colPortion":D
    move-object/from16 v28, v9

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v14, v28

    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_d
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 1953
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v15, v28

    .line 1954
    .restart local v15    # "i":I
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getRowMaxHeight(I)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 1955
    .restart local v16    # "maxOfRow":D
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getRowPrefHeight(I)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 1956
    .restart local v18    # "prefOfRow":D
    move-wide/from16 v28, v12

    move-wide/from16 v20, v28

    .line 1958
    .restart local v20    # "actualPortion":D
    move-object/from16 v28, v4

    invoke-static/range {v28 .. v28}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1700(Ljavafx/scene/layout/GridPane$CompositeSize;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v22, v28

    :goto_e
    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_19

    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    move-object/from16 v23, v28

    .line 1959
    .restart local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    move-object/from16 v28, v23

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/layout/GridPane$Interval;

    move-object/from16 v24, v28

    .line 1960
    .local v24, "interval":Ljavafx/scene/layout/GridPane$Interval;
    move-object/from16 v28, v24

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v28, v0

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v29, v15

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 1961
    move-object/from16 v28, v4

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v29, v0

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1900(Ljavafx/scene/layout/GridPane$CompositeSize;II)D

    move-result-wide v28

    move-wide/from16 v25, v28

    .line 1962
    .local v25, "curLength":D
    const-wide/16 v28, 0x0

    move-object/from16 v30, v23

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Double;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v32, v25

    sub-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v30, v20

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 1965
    .end local v25    # "curLength":D
    :cond_18
    goto :goto_e

    .line 1967
    .end local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    .end local v24    # "interval":Ljavafx/scene/layout/GridPane$Interval;
    :cond_19
    move-object/from16 v28, v4

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 1968
    .restart local v22    # "current":D
    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_1c

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v16

    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    .line 1969
    :goto_f
    move-wide/from16 v24, v28

    .line 1971
    .local v24, "bounded":D
    move-wide/from16 v28, v24

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 1972
    .restart local v26    # "portionUsed":D
    move-wide/from16 v28, v10

    move-wide/from16 v30, v26

    sub-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 1973
    move-wide/from16 v28, v26

    move-wide/from16 v30, v20

    cmpl-double v28, v28, v30

    if-nez v28, :cond_1a

    move-wide/from16 v28, v26

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_1b

    .line 1974
    :cond_1a
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->remove()V

    .line 1976
    :cond_1b
    move-object/from16 v28, v4

    move/from16 v29, v15

    move-wide/from16 v30, v24

    invoke-static/range {v28 .. v31}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 1977
    goto/16 :goto_d

    .line 1968
    .end local v24    # "bounded":D
    .end local v26    # "portionUsed":D
    :cond_1c
    move-wide/from16 v28, v16

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_1d

    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_1d

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v18

    .line 1969
    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    goto :goto_f

    :cond_1d
    move-wide/from16 v28, v22

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    goto :goto_f

    .line 1979
    .end local v12    # "colPortion":D
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .end local v16    # "maxOfRow":D
    .end local v18    # "prefOfRow":D
    .end local v20    # "actualPortion":D
    .end local v22    # "current":D
    :cond_1e
    move-wide/from16 v28, v10

    move-wide/from16 v3, v28

    goto/16 :goto_0

    .line 1860
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private growToMultiSpanPreferredWidths(Ljavafx/scene/layout/GridPane$CompositeSize;D)D
    .locals 36

    .prologue
    .line 2090
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v4, p1

    .local v4, "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-wide/from16 v5, p2

    .local v5, "extraWidth":D
    move-wide/from16 v28, v5

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_0

    .line 2091
    move-wide/from16 v28, v5

    move-wide/from16 v3, v28

    .line 2220
    .end local v3    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-wide v3

    .line 2094
    .restart local v3    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    new-instance v28, Ljava/util/TreeSet;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v7, v28

    .line 2095
    .local v7, "columnsAlways":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v28, Ljava/util/TreeSet;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v8, v28

    .line 2096
    .local v8, "columnsSometimes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v28, Ljava/util/TreeSet;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v9, v28

    .line 2097
    .local v9, "lastColumns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v28, v4

    invoke-static/range {v28 .. v28}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1700(Ljavafx/scene/layout/GridPane$CompositeSize;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v10, v28

    :goto_1
    move-object/from16 v28, v10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v28, v10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    move-object/from16 v11, v28

    .line 2098
    .local v11, "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    move-object/from16 v28, v11

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/layout/GridPane$Interval;

    move-object/from16 v12, v28

    .line 2099
    .local v12, "interval":Ljavafx/scene/layout/GridPane$Interval;
    move-object/from16 v28, v12

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v28, v0

    move/from16 v13, v28

    .local v13, "i":I
    :goto_2
    move/from16 v28, v13

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 2100
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move-object/from16 v28, v0

    move/from16 v29, v13

    aget-wide v28, v28, v29

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_1

    .line 2101
    sget-object v28, Ljavafx/scene/layout/GridPane$7;->$SwitchMap$javafx$scene$layout$Priority:[I

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->columnGrow:[Ljavafx/scene/layout/Priority;

    move-object/from16 v29, v0

    move/from16 v30, v13

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/layout/Priority;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 2099
    :cond_1
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2103
    :pswitch_0
    move-object/from16 v28, v7

    move/from16 v29, v13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 2104
    goto :goto_3

    .line 2106
    :pswitch_1
    move-object/from16 v28, v8

    move/from16 v29, v13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v28

    goto :goto_3

    .line 2111
    :cond_2
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->columnPercentWidth:[D

    move-object/from16 v28, v0

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    aget-wide v28, v28, v29

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_3

    .line 2112
    move-object/from16 v28, v9

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 2114
    :cond_3
    goto/16 :goto_1

    .line 2116
    .end local v11    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    .end local v12    # "interval":Ljavafx/scene/layout/GridPane$Interval;
    .end local v13    # "i":I
    :cond_4
    move-wide/from16 v28, v5

    move-wide/from16 v10, v28

    .line 2118
    .local v10, "remaining":D
    :goto_4
    move-object/from16 v28, v7

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    move-result v28

    if-lez v28, :cond_e

    move-wide/from16 v28, v10

    move-object/from16 v30, v7

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_e

    .line 2119
    move-wide/from16 v28, v10

    move-object/from16 v30, v7

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 2120
    .local v12, "colPortion":D
    move-object/from16 v28, v7

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v14, v28

    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_5
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 2121
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v15, v28

    .line 2122
    .local v15, "i":I
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getColumnMaxWidth(I)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 2123
    .local v16, "maxOfColumn":D
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getColumnPrefWidth(I)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 2124
    .local v18, "prefOfColumn":D
    move-wide/from16 v28, v12

    move-wide/from16 v20, v28

    .line 2126
    .local v20, "actualPortion":D
    move-object/from16 v28, v4

    invoke-static/range {v28 .. v28}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1700(Ljavafx/scene/layout/GridPane$CompositeSize;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v22, v28

    :goto_6
    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    move-object/from16 v23, v28

    .line 2127
    .local v23, "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    move-object/from16 v28, v23

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/layout/GridPane$Interval;

    move-object/from16 v24, v28

    .line 2128
    .local v24, "interval":Ljavafx/scene/layout/GridPane$Interval;
    move-object/from16 v28, v24

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$Interval;->access$1800(Ljavafx/scene/layout/GridPane$Interval;I)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 2129
    const/16 v28, 0x0

    move/from16 v25, v28

    .line 2130
    .local v25, "intervalColumns":I
    move-object/from16 v28, v24

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v28, v0

    move/from16 v26, v28

    .local v26, "j":I
    :goto_7
    move/from16 v28, v26

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 2131
    move-object/from16 v28, v7

    move/from16 v29, v26

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 2132
    add-int/lit8 v25, v25, 0x1

    .line 2130
    :cond_5
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 2135
    :cond_6
    move-object/from16 v28, v4

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v29, v0

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1900(Ljavafx/scene/layout/GridPane$CompositeSize;II)D

    move-result-wide v28

    move-wide/from16 v26, v28

    .line 2136
    .local v26, "curLength":D
    const-wide/16 v28, 0x0

    move-object/from16 v30, v23

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Double;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v32, v26

    sub-double v30, v30, v32

    move/from16 v32, v25

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v30, v20

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 2139
    .end local v25    # "intervalColumns":I
    .end local v26    # "curLength":D
    :cond_7
    goto/16 :goto_6

    .line 2141
    .end local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    .end local v24    # "interval":Ljavafx/scene/layout/GridPane$Interval;
    :cond_8
    move-object/from16 v28, v4

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 2142
    .local v22, "current":D
    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_b

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v16

    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    .line 2143
    :goto_8
    move-wide/from16 v24, v28

    .line 2145
    .local v24, "bounded":D
    move-wide/from16 v28, v24

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 2146
    .local v26, "portionUsed":D
    move-wide/from16 v28, v10

    move-wide/from16 v30, v26

    sub-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 2147
    move-wide/from16 v28, v26

    move-wide/from16 v30, v20

    cmpl-double v28, v28, v30

    if-nez v28, :cond_9

    move-wide/from16 v28, v26

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_a

    .line 2148
    :cond_9
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->remove()V

    .line 2150
    :cond_a
    move-object/from16 v28, v4

    move/from16 v29, v15

    move-wide/from16 v30, v24

    invoke-static/range {v28 .. v31}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 2151
    goto/16 :goto_5

    .line 2142
    .end local v24    # "bounded":D
    .end local v26    # "portionUsed":D
    :cond_b
    move-wide/from16 v28, v16

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_c

    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_c

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v18

    .line 2143
    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    goto :goto_8

    :cond_c
    move-wide/from16 v28, v22

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    goto :goto_8

    .line 2152
    .end local v15    # "i":I
    .end local v16    # "maxOfColumn":D
    .end local v18    # "prefOfColumn":D
    .end local v20    # "actualPortion":D
    .end local v22    # "current":D
    :cond_d
    goto/16 :goto_4

    .line 2188
    .line 2154
    .end local v12    # "colPortion":D
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_e
    move-object/from16 v28, v8

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    move-result v28

    if-lez v28, :cond_17

    move-wide/from16 v28, v10

    move-object/from16 v30, v8

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_17

    .line 2155
    move-wide/from16 v28, v10

    move-object/from16 v30, v8

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 2156
    .restart local v12    # "colPortion":D
    move-object/from16 v28, v8

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v14, v28

    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_9
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 2157
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v15, v28

    .line 2158
    .restart local v15    # "i":I
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getColumnMaxWidth(I)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 2159
    .restart local v16    # "maxOfColumn":D
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getColumnPrefWidth(I)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 2160
    .restart local v18    # "prefOfColumn":D
    move-wide/from16 v28, v12

    move-wide/from16 v20, v28

    .line 2162
    .restart local v20    # "actualPortion":D
    move-object/from16 v28, v4

    invoke-static/range {v28 .. v28}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1700(Ljavafx/scene/layout/GridPane$CompositeSize;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v22, v28

    :goto_a
    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    move-object/from16 v23, v28

    .line 2163
    .restart local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    move-object/from16 v28, v23

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/layout/GridPane$Interval;

    move-object/from16 v24, v28

    .line 2164
    .local v24, "interval":Ljavafx/scene/layout/GridPane$Interval;
    move-object/from16 v28, v24

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$Interval;->access$1800(Ljavafx/scene/layout/GridPane$Interval;I)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 2165
    const/16 v28, 0x0

    move/from16 v25, v28

    .line 2166
    .restart local v25    # "intervalColumns":I
    move-object/from16 v28, v24

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v28, v0

    move/from16 v26, v28

    .local v26, "j":I
    :goto_b
    move/from16 v28, v26

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 2167
    move-object/from16 v28, v8

    move/from16 v29, v26

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 2168
    add-int/lit8 v25, v25, 0x1

    .line 2166
    :cond_f
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 2171
    :cond_10
    move-object/from16 v28, v4

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v29, v0

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1900(Ljavafx/scene/layout/GridPane$CompositeSize;II)D

    move-result-wide v28

    move-wide/from16 v26, v28

    .line 2172
    .local v26, "curLength":D
    const-wide/16 v28, 0x0

    move-object/from16 v30, v23

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Double;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v32, v26

    sub-double v30, v30, v32

    move/from16 v32, v25

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v30, v20

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 2175
    .end local v25    # "intervalColumns":I
    .end local v26    # "curLength":D
    :cond_11
    goto/16 :goto_a

    .line 2177
    .end local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    .end local v24    # "interval":Ljavafx/scene/layout/GridPane$Interval;
    :cond_12
    move-object/from16 v28, v4

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 2178
    .restart local v22    # "current":D
    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_15

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v16

    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    .line 2179
    :goto_c
    move-wide/from16 v24, v28

    .line 2181
    .local v24, "bounded":D
    move-wide/from16 v28, v24

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 2182
    .local v26, "portionUsed":D
    move-wide/from16 v28, v10

    move-wide/from16 v30, v26

    sub-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 2183
    move-wide/from16 v28, v26

    move-wide/from16 v30, v20

    cmpl-double v28, v28, v30

    if-nez v28, :cond_13

    move-wide/from16 v28, v26

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_14

    .line 2184
    :cond_13
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->remove()V

    .line 2186
    :cond_14
    move-object/from16 v28, v4

    move/from16 v29, v15

    move-wide/from16 v30, v24

    invoke-static/range {v28 .. v31}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 2187
    goto/16 :goto_9

    .line 2178
    .end local v24    # "bounded":D
    .end local v26    # "portionUsed":D
    :cond_15
    move-wide/from16 v28, v16

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_16

    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_16

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v18

    .line 2179
    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    goto :goto_c

    :cond_16
    move-wide/from16 v28, v22

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    goto :goto_c

    .line 2219
    .line 2191
    .end local v12    # "colPortion":D
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .end local v16    # "maxOfColumn":D
    .end local v18    # "prefOfColumn":D
    .end local v20    # "actualPortion":D
    .end local v22    # "current":D
    :cond_17
    move-object/from16 v28, v9

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    move-result v28

    if-lez v28, :cond_1e

    move-wide/from16 v28, v10

    move-object/from16 v30, v9

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_1e

    .line 2192
    move-wide/from16 v28, v10

    move-object/from16 v30, v9

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 2193
    .restart local v12    # "colPortion":D
    move-object/from16 v28, v9

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v14, v28

    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_d
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 2194
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v15, v28

    .line 2195
    .restart local v15    # "i":I
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getColumnMaxWidth(I)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 2196
    .restart local v16    # "maxOfColumn":D
    move-object/from16 v28, v3

    move/from16 v29, v15

    invoke-direct/range {v28 .. v29}, Ljavafx/scene/layout/GridPane;->getColumnPrefWidth(I)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 2197
    .restart local v18    # "prefOfColumn":D
    move-wide/from16 v28, v12

    move-wide/from16 v20, v28

    .line 2199
    .restart local v20    # "actualPortion":D
    move-object/from16 v28, v4

    invoke-static/range {v28 .. v28}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1700(Ljavafx/scene/layout/GridPane$CompositeSize;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object/from16 v22, v28

    :goto_e
    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_19

    move-object/from16 v28, v22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    move-object/from16 v23, v28

    .line 2200
    .restart local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    move-object/from16 v28, v23

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/layout/GridPane$Interval;

    move-object/from16 v24, v28

    .line 2201
    .local v24, "interval":Ljavafx/scene/layout/GridPane$Interval;
    move-object/from16 v28, v24

    move-object/from16 v0, v28

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v28, v0

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v29, v15

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 2202
    move-object/from16 v28, v4

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move/from16 v29, v0

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1900(Ljavafx/scene/layout/GridPane$CompositeSize;II)D

    move-result-wide v28

    move-wide/from16 v25, v28

    .line 2203
    .local v25, "curLength":D
    const-wide/16 v28, 0x0

    move-object/from16 v30, v23

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Double;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v32, v25

    sub-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v30, v20

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 2206
    .end local v25    # "curLength":D
    :cond_18
    goto :goto_e

    .line 2208
    .end local v23    # "ms":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    .end local v24    # "interval":Ljavafx/scene/layout/GridPane$Interval;
    :cond_19
    move-object/from16 v28, v4

    move/from16 v29, v15

    invoke-static/range {v28 .. v29}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 2209
    .restart local v22    # "current":D
    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_1c

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v16

    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    .line 2210
    :goto_f
    move-wide/from16 v24, v28

    .line 2212
    .local v24, "bounded":D
    move-wide/from16 v28, v24

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 2213
    .restart local v26    # "portionUsed":D
    move-wide/from16 v28, v10

    move-wide/from16 v30, v26

    sub-double v28, v28, v30

    move-wide/from16 v10, v28

    .line 2214
    move-wide/from16 v28, v26

    move-wide/from16 v30, v20

    cmpl-double v28, v28, v30

    if-nez v28, :cond_1a

    move-wide/from16 v28, v26

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_1b

    .line 2215
    :cond_1a
    move-object/from16 v28, v14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->remove()V

    .line 2217
    :cond_1b
    move-object/from16 v28, v4

    move/from16 v29, v15

    move-wide/from16 v30, v24

    invoke-static/range {v28 .. v31}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V

    .line 2218
    goto/16 :goto_d

    .line 2209
    .end local v24    # "bounded":D
    .end local v26    # "portionUsed":D
    :cond_1c
    move-wide/from16 v28, v16

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_1d

    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_1d

    const-wide/16 v28, 0x0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v18

    .line 2210
    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/GridPane;->boundedSize(DDD)D

    move-result-wide v28

    goto :goto_f

    :cond_1d
    move-wide/from16 v28, v22

    move-wide/from16 v30, v20

    add-double v28, v28, v30

    goto :goto_f

    .line 2220
    .end local v12    # "colPortion":D
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .end local v16    # "maxOfColumn":D
    .end local v18    # "prefOfColumn":D
    .end local v20    # "actualPortion":D
    .end local v22    # "current":D
    :cond_1e
    move-wide/from16 v28, v10

    move-wide/from16 v3, v28

    goto/16 :goto_0

    .line 2101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isFillHeight(Ljavafx/scene/Node;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-fill-height"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static isFillWidth(Ljavafx/scene/Node;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "gridpane-fill-width"

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private isNodePositionedByBaseline(Ljavafx/scene/Node;)Z
    .locals 4

    .prologue
    .line 1084
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v3

    invoke-direct {v2, v3}, Ljavafx/scene/layout/GridPane;->getRowValignment(I)Ljavafx/geometry/VPos;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getValignment(Ljavafx/scene/Node;)Ljavafx/geometry/VPos;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v1

    .line 1085
    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->getValignment(Ljavafx/scene/Node;)Ljavafx/geometry/VPos;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$layoutChildren$505(ILjavafx/scene/layout/GridPane$CompositeSize;DLjava/lang/Integer;)Ljava/lang/Double;
    .locals 19

    .prologue
    .line 1765
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move/from16 v1, p1

    .local v1, "rowIndex":I
    move-object/from16 v2, p2

    .local v2, "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-wide/from16 v3, p3

    .local v3, "snaphgap":D
    move-object/from16 v5, p5

    .local v5, "t":Ljava/lang/Integer;
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/layout/GridPane;->rowBaseline:[Ljava/util/List;

    move v13, v1

    aget-object v12, v12, v13

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v6, v12

    .line 1766
    .local v6, "n":Ljavafx/scene/Node;
    move-object v12, v6

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v12

    move v7, v12

    .line 1767
    .local v7, "c":I
    move-object v12, v6

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeColumnSpan(Ljavafx/scene/Node;)I

    move-result v12

    move v8, v12

    .line 1768
    .local v8, "cs":I
    move v12, v8

    const v13, 0x7fffffff

    if-ne v12, v13, :cond_0

    .line 1769
    move-object v12, v2

    invoke-static {v12}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I

    move-result v12

    move v13, v7

    sub-int/2addr v12, v13

    move v8, v12

    .line 1771
    :cond_0
    move-object v12, v2

    move v13, v7

    invoke-static {v12, v13}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v12

    move-wide v9, v12

    .line 1772
    .local v9, "w":D
    const/4 v12, 0x2

    move v11, v12

    .local v11, "j":I
    :goto_0
    move v12, v11

    move v13, v8

    if-gt v12, v13, :cond_1

    .line 1773
    move-wide v12, v9

    move-object v14, v2

    move v15, v7

    move/from16 v16, v11

    add-int v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v14, v15}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v14

    move-wide/from16 v16, v3

    add-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v9, v12

    .line 1772
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1775
    :cond_1
    move-wide v12, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    move-object v0, v12

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method private synthetic lambda$layoutChildren$506(Ljavafx/scene/Node;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 1779
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Integer;
    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/layout/GridPane;->isFillHeight(Ljavafx/scene/Node;)Ljava/lang/Boolean;

    move-result-object v4

    move-object v3, v4

    .line 1780
    .local v3, "b":Ljava/lang/Boolean;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1781
    move-object v4, v3

    move-object v0, v4

    .line 1783
    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v5

    invoke-direct {v4, v5}, Ljavafx/scene/layout/GridPane;->shouldRowFillHeight(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private synthetic lambda$new$504(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/GridPane;->requestLayout()V

    return-void
.end method

.method private static synthetic lambda$static$503(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "n":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/GridPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "n":Ljavafx/scene/Node;
    return-object v0
.end method

.method private layoutGridLines(Ljavafx/scene/layout/GridPane$CompositeSize;Ljavafx/scene/layout/GridPane$CompositeSize;DDDD)V
    .locals 35

    .prologue
    .line 2291
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v3, p1

    .local v3, "columnWidths":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object/from16 v4, p2

    .local v4, "rowHeights":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-wide/from16 v5, p3

    .local v5, "x":D
    move-wide/from16 v7, p5

    .local v7, "y":D
    move-wide/from16 v9, p7

    .local v9, "columnHeight":D
    move-wide/from16 v11, p9

    .local v11, "rowWidth":D
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/GridPane;->isGridLinesVisible()Z

    move-result v22

    if-nez v22, :cond_0

    .line 2292
    .line 2325
    :goto_0
    return-void

    .line 2294
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->gridLines:Ljavafx/scene/Group;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    .line 2295
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->gridLines:Ljavafx/scene/Group;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljavafx/collections/ObservableList;->clear()V

    .line 2297
    :cond_1
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/layout/GridPane;->getHgap()D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v22

    move-wide/from16 v13, v22

    .line 2298
    .local v13, "hgap":D
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/layout/GridPane;->getVgap()D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v22

    move-wide/from16 v15, v22

    .line 2301
    .local v15, "vgap":D
    move-wide/from16 v22, v5

    move-wide/from16 v17, v22

    .line 2302
    .local v17, "linex":D
    move-wide/from16 v22, v7

    move-wide/from16 v19, v22

    .line 2303
    .local v19, "liney":D
    const/16 v22, 0x0

    move/from16 v21, v22

    .local v21, "i":I
    :goto_1
    move/from16 v22, v21

    move-object/from16 v23, v3

    invoke-static/range {v23 .. v23}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_4

    .line 2304
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->gridLines:Ljavafx/scene/Group;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v22

    move-object/from16 v23, v2

    move-wide/from16 v24, v17

    move-wide/from16 v26, v19

    move-wide/from16 v28, v17

    move-wide/from16 v30, v19

    move-wide/from16 v32, v9

    add-double v30, v30, v32

    invoke-direct/range {v23 .. v31}, Ljavafx/scene/layout/GridPane;->createGridLine(DDDD)Ljavafx/scene/shape/Line;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 2305
    move/from16 v22, v21

    if-lez v22, :cond_2

    move/from16 v22, v21

    move-object/from16 v23, v3

    invoke-static/range {v23 .. v23}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/GridPane;->getHgap()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_2

    .line 2306
    move-wide/from16 v22, v17

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/GridPane;->getHgap()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v17, v22

    .line 2307
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->gridLines:Ljavafx/scene/Group;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v22

    move-object/from16 v23, v2

    move-wide/from16 v24, v17

    move-wide/from16 v26, v19

    move-wide/from16 v28, v17

    move-wide/from16 v30, v19

    move-wide/from16 v32, v9

    add-double v30, v30, v32

    invoke-direct/range {v23 .. v31}, Ljavafx/scene/layout/GridPane;->createGridLine(DDDD)Ljavafx/scene/shape/Line;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 2309
    :cond_2
    move/from16 v22, v21

    move-object/from16 v23, v3

    invoke-static/range {v23 .. v23}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 2310
    move-wide/from16 v22, v17

    move-object/from16 v24, v3

    move/from16 v25, v21

    invoke-static/range {v24 .. v25}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v17, v22

    .line 2303
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 2314
    :cond_4
    move-wide/from16 v22, v5

    move-wide/from16 v17, v22

    .line 2315
    const/16 v22, 0x0

    move/from16 v21, v22

    :goto_2
    move/from16 v22, v21

    move-object/from16 v23, v4

    invoke-static/range {v23 .. v23}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    .line 2316
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->gridLines:Ljavafx/scene/Group;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v22

    move-object/from16 v23, v2

    move-wide/from16 v24, v17

    move-wide/from16 v26, v19

    move-wide/from16 v28, v17

    move-wide/from16 v30, v11

    add-double v28, v28, v30

    move-wide/from16 v30, v19

    invoke-direct/range {v23 .. v31}, Ljavafx/scene/layout/GridPane;->createGridLine(DDDD)Ljavafx/scene/shape/Line;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 2317
    move/from16 v22, v21

    if-lez v22, :cond_5

    move/from16 v22, v21

    move-object/from16 v23, v4

    invoke-static/range {v23 .. v23}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/GridPane;->getVgap()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_5

    .line 2318
    move-wide/from16 v22, v19

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/GridPane;->getVgap()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v19, v22

    .line 2319
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->gridLines:Ljavafx/scene/Group;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v22

    move-object/from16 v23, v2

    move-wide/from16 v24, v17

    move-wide/from16 v26, v19

    move-wide/from16 v28, v17

    move-wide/from16 v30, v11

    add-double v28, v28, v30

    move-wide/from16 v30, v19

    invoke-direct/range {v23 .. v31}, Ljavafx/scene/layout/GridPane;->createGridLine(DDDD)Ljavafx/scene/shape/Line;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 2321
    :cond_5
    move/from16 v22, v21

    move-object/from16 v23, v4

    invoke-static/range {v23 .. v23}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 2322
    move-wide/from16 v22, v19

    move-object/from16 v24, v4

    move/from16 v25, v21

    invoke-static/range {v24 .. v25}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v19, v22

    .line 2315
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 2325
    :cond_7
    goto/16 :goto_0
.end method

.method public static setColumnIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V
    .locals 7

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Integer;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    .line 319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "columnIndex must be greater or equal to 0, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_0
    move-object v2, v0

    const-string v3, "gridpane-column"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public static setColumnSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V
    .locals 7

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Integer;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 373
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "columnSpan must be greater or equal to 1, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_0
    move-object v2, v0

    const-string v3, "gridpane-column-span"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public static setConstraints(Ljavafx/scene/Node;II)V
    .locals 5

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "columnIndex":I
    move v2, p2

    .local v2, "rowIndex":I
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/scene/layout/GridPane;->setRowIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 554
    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/scene/layout/GridPane;->setColumnIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 555
    return-void
.end method

.method public static setConstraints(Ljavafx/scene/Node;IIII)V
    .locals 7

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "columnIndex":I
    move v2, p2

    .local v2, "rowIndex":I
    move v3, p3

    .local v3, "columnspan":I
    move v4, p4

    .local v4, "rowspan":I
    move-object v5, v0

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljavafx/scene/layout/GridPane;->setRowIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 568
    move-object v5, v0

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljavafx/scene/layout/GridPane;->setColumnIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 569
    move-object v5, v0

    move v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljavafx/scene/layout/GridPane;->setRowSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 570
    move-object v5, v0

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljavafx/scene/layout/GridPane;->setColumnSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 571
    return-void
.end method

.method public static setConstraints(Ljavafx/scene/Node;IIIILjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 9

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "columnIndex":I
    move v2, p2

    .local v2, "rowIndex":I
    move v3, p3

    .local v3, "columnspan":I
    move v4, p4

    .local v4, "rowspan":I
    move-object v5, p5

    .local v5, "halignment":Ljavafx/geometry/HPos;
    move-object v6, p6

    .local v6, "valignment":Ljavafx/geometry/VPos;
    move-object v7, v0

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/scene/layout/GridPane;->setRowIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 586
    move-object v7, v0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/scene/layout/GridPane;->setColumnIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 587
    move-object v7, v0

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/scene/layout/GridPane;->setRowSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 588
    move-object v7, v0

    move v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/scene/layout/GridPane;->setColumnSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 589
    move-object v7, v0

    move-object v8, v5

    invoke-static {v7, v8}, Ljavafx/scene/layout/GridPane;->setHalignment(Ljavafx/scene/Node;Ljavafx/geometry/HPos;)V

    .line 590
    move-object v7, v0

    move-object v8, v6

    invoke-static {v7, v8}, Ljavafx/scene/layout/GridPane;->setValignment(Ljavafx/scene/Node;Ljavafx/geometry/VPos;)V

    .line 591
    return-void
.end method

.method public static setConstraints(Ljavafx/scene/Node;IIIILjavafx/geometry/HPos;Ljavafx/geometry/VPos;Ljavafx/scene/layout/Priority;Ljavafx/scene/layout/Priority;)V
    .locals 11

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "columnIndex":I
    move v2, p2

    .local v2, "rowIndex":I
    move v3, p3

    .local v3, "columnspan":I
    move v4, p4

    .local v4, "rowspan":I
    move-object/from16 v5, p5

    .local v5, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v6, p6

    .local v6, "valignment":Ljavafx/geometry/VPos;
    move-object/from16 v7, p7

    .local v7, "hgrow":Ljavafx/scene/layout/Priority;
    move-object/from16 v8, p8

    .local v8, "vgrow":Ljavafx/scene/layout/Priority;
    move-object v9, v0

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setRowIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 608
    move-object v9, v0

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setColumnIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 609
    move-object v9, v0

    move v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setRowSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 610
    move-object v9, v0

    move v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setColumnSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 611
    move-object v9, v0

    move-object v10, v5

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setHalignment(Ljavafx/scene/Node;Ljavafx/geometry/HPos;)V

    .line 612
    move-object v9, v0

    move-object v10, v6

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setValignment(Ljavafx/scene/Node;Ljavafx/geometry/VPos;)V

    .line 613
    move-object v9, v0

    move-object v10, v7

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 614
    move-object v9, v0

    move-object v10, v8

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setVgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 615
    return-void
.end method

.method public static setConstraints(Ljavafx/scene/Node;IIIILjavafx/geometry/HPos;Ljavafx/geometry/VPos;Ljavafx/scene/layout/Priority;Ljavafx/scene/layout/Priority;Ljavafx/geometry/Insets;)V
    .locals 12

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "columnIndex":I
    move v2, p2

    .local v2, "rowIndex":I
    move v3, p3

    .local v3, "columnspan":I
    move/from16 v4, p4

    .local v4, "rowspan":I
    move-object/from16 v5, p5

    .local v5, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v6, p6

    .local v6, "valignment":Ljavafx/geometry/VPos;
    move-object/from16 v7, p7

    .local v7, "hgrow":Ljavafx/scene/layout/Priority;
    move-object/from16 v8, p8

    .local v8, "vgrow":Ljavafx/scene/layout/Priority;
    move-object/from16 v9, p9

    .local v9, "margin":Ljavafx/geometry/Insets;
    move-object v10, v0

    move v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Ljavafx/scene/layout/GridPane;->setRowIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 634
    move-object v10, v0

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Ljavafx/scene/layout/GridPane;->setColumnIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 635
    move-object v10, v0

    move v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Ljavafx/scene/layout/GridPane;->setRowSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 636
    move-object v10, v0

    move v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Ljavafx/scene/layout/GridPane;->setColumnSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V

    .line 637
    move-object v10, v0

    move-object v11, v5

    invoke-static {v10, v11}, Ljavafx/scene/layout/GridPane;->setHalignment(Ljavafx/scene/Node;Ljavafx/geometry/HPos;)V

    .line 638
    move-object v10, v0

    move-object v11, v6

    invoke-static {v10, v11}, Ljavafx/scene/layout/GridPane;->setValignment(Ljavafx/scene/Node;Ljavafx/geometry/VPos;)V

    .line 639
    move-object v10, v0

    move-object v11, v7

    invoke-static {v10, v11}, Ljavafx/scene/layout/GridPane;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 640
    move-object v10, v0

    move-object v11, v8

    invoke-static {v10, v11}, Ljavafx/scene/layout/GridPane;->setVgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 641
    move-object v10, v0

    move-object v11, v9

    invoke-static {v10, v11}, Ljavafx/scene/layout/GridPane;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 642
    return-void
.end method

.method public static setFillHeight(Ljavafx/scene/Node;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Boolean;
    move-object v2, v0

    const-string v3, "gridpane-fill-height"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    return-void
.end method

.method public static setFillWidth(Ljavafx/scene/Node;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Boolean;
    move-object v2, v0

    const-string v3, "gridpane-fill-width"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public static setHalignment(Ljavafx/scene/Node;Ljavafx/geometry/HPos;)V
    .locals 5

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/HPos;
    move-object v2, v0

    const-string v3, "gridpane-halignment"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public static setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V
    .locals 5

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/layout/Priority;
    move-object v2, v0

    const-string v3, "gridpane-hgrow"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method public static setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V
    .locals 5

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    const-string v3, "gridpane-margin"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method public static setRowIndex(Ljavafx/scene/Node;Ljava/lang/Integer;)V
    .locals 7

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Integer;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    .line 294
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowIndex must be greater or equal to 0, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_0
    move-object v2, v0

    const-string v3, "gridpane-row"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method public static setRowSpan(Ljavafx/scene/Node;Ljava/lang/Integer;)V
    .locals 7

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Integer;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 346
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowSpan must be greater or equal to 1, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_0
    move-object v2, v0

    const-string v3, "gridpane-row-span"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public static setValignment(Ljavafx/scene/Node;Ljavafx/geometry/VPos;)V
    .locals 5

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/VPos;
    move-object v2, v0

    const-string v3, "gridpane-valignment"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 445
    return-void
.end method

.method public static setVgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V
    .locals 5

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/layout/Priority;
    move-object v2, v0

    const-string v3, "gridpane-vgrow"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/GridPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method private shouldColumnFillWidth(I)Z
    .locals 4

    .prologue
    .line 1343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move v1, p1

    .local v1, "columnIndex":I
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1344
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/ColumnConstraints;

    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->isFillWidth()Z

    move-result v2

    move v0, v2

    .line 1346
    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method private shouldRowFillHeight(I)Z
    .locals 4

    .prologue
    .line 1336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move v1, p1

    .local v1, "rowIndex":I
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1337
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/RowConstraints;

    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->isFillHeight()Z

    move-result v2

    move v0, v2

    .line 1339
    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public add(Ljavafx/scene/Node;II)V
    .locals 7

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move v2, p2

    .local v2, "columnIndex":I
    move v3, p3

    .local v3, "rowIndex":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Ljavafx/scene/layout/GridPane;->setConstraints(Ljavafx/scene/Node;II)V

    .line 965
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 966
    return-void
.end method

.method public add(Ljavafx/scene/Node;IIII)V
    .locals 11

    .prologue
    .line 979
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move v2, p2

    .local v2, "columnIndex":I
    move v3, p3

    .local v3, "rowIndex":I
    move v4, p4

    .local v4, "colspan":I
    move/from16 v5, p5

    .local v5, "rowspan":I
    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/GridPane;->setConstraints(Ljavafx/scene/Node;IIII)V

    .line 980
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 981
    return-void
.end method

.method public varargs addColumn(I[Ljavafx/scene/Node;)V
    .locals 15

    .prologue
    .line 1024
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move/from16 v1, p1

    .local v1, "columnIndex":I
    move-object/from16 v2, p2

    .local v2, "children":[Ljavafx/scene/Node;
    const/4 v12, 0x0

    move v3, v12

    .line 1025
    .local v3, "rowIndex":I
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/layout/GridPane;->getManagedChildren()Ljava/util/List;

    move-result-object v12

    move-object v4, v12

    .line 1026
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v12, 0x0

    move v5, v12

    .local v5, "i":I
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v6, v12

    .local v6, "size":I
    :goto_0
    move v12, v5

    move v13, v6

    if-ge v12, v13, :cond_3

    .line 1027
    move-object v12, v4

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v7, v12

    .line 1028
    .local v7, "child":Ljavafx/scene/Node;
    move-object v12, v7

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v12

    move v8, v12

    .line 1029
    .local v8, "nodeColumnIndex":I
    move-object v12, v7

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeColumnEnd(Ljavafx/scene/Node;)I

    move-result v12

    move v9, v12

    .line 1030
    .local v9, "nodeColumnEnd":I
    move v12, v1

    move v13, v8

    if-lt v12, v13, :cond_1

    move v12, v1

    move v13, v9

    if-le v12, v13, :cond_0

    move v12, v9

    const v13, 0x7fffffff

    if-ne v12, v13, :cond_1

    .line 1032
    :cond_0
    move-object v12, v7

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v12

    move v10, v12

    .line 1033
    .local v10, "index":I
    move-object v12, v7

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeRowEnd(Ljavafx/scene/Node;)I

    move-result v12

    move v11, v12

    .line 1034
    .local v11, "end":I
    move v12, v3

    move v13, v11

    const v14, 0x7fffffff

    if-eq v13, v14, :cond_2

    move v13, v11

    :goto_1
    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v3, v12

    .line 1026
    .end local v10    # "index":I
    .end local v11    # "end":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1034
    .restart local v10    # "index":I
    .restart local v11    # "end":I
    :cond_2
    move v13, v10

    goto :goto_1

    .line 1037
    .end local v7    # "child":Ljavafx/scene/Node;
    .end local v8    # "nodeColumnIndex":I
    .end local v9    # "nodeColumnEnd":I
    .end local v10    # "index":I
    .end local v11    # "end":I
    :cond_3
    move v12, v1

    move v13, v3

    move-object v14, v2

    invoke-static {v12, v13, v14}, Ljavafx/scene/layout/GridPane;->createColumn(II[Ljavafx/scene/Node;)V

    .line 1038
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v13, v2

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v12

    .line 1039
    return-void
.end method

.method public varargs addRow(I[Ljavafx/scene/Node;)V
    .locals 15

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move/from16 v1, p1

    .local v1, "rowIndex":I
    move-object/from16 v2, p2

    .local v2, "children":[Ljavafx/scene/Node;
    const/4 v12, 0x0

    move v3, v12

    .line 996
    .local v3, "columnIndex":I
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/layout/GridPane;->getManagedChildren()Ljava/util/List;

    move-result-object v12

    move-object v4, v12

    .line 997
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v12, 0x0

    move v5, v12

    .local v5, "i":I
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v6, v12

    .local v6, "size":I
    :goto_0
    move v12, v5

    move v13, v6

    if-ge v12, v13, :cond_3

    .line 998
    move-object v12, v4

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v7, v12

    .line 999
    .local v7, "child":Ljavafx/scene/Node;
    move-object v12, v7

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v12

    move v8, v12

    .line 1000
    .local v8, "nodeRowIndex":I
    move-object v12, v7

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeRowEnd(Ljavafx/scene/Node;)I

    move-result v12

    move v9, v12

    .line 1001
    .local v9, "nodeRowEnd":I
    move v12, v1

    move v13, v8

    if-lt v12, v13, :cond_1

    move v12, v1

    move v13, v9

    if-le v12, v13, :cond_0

    move v12, v9

    const v13, 0x7fffffff

    if-ne v12, v13, :cond_1

    .line 1003
    :cond_0
    move-object v12, v7

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v12

    move v10, v12

    .line 1004
    .local v10, "index":I
    move-object v12, v7

    invoke-static {v12}, Ljavafx/scene/layout/GridPane;->getNodeColumnEnd(Ljavafx/scene/Node;)I

    move-result v12

    move v11, v12

    .line 1005
    .local v11, "end":I
    move v12, v3

    move v13, v11

    const v14, 0x7fffffff

    if-eq v13, v14, :cond_2

    move v13, v11

    :goto_1
    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v3, v12

    .line 997
    .end local v10    # "index":I
    .end local v11    # "end":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1005
    .restart local v10    # "index":I
    .restart local v11    # "end":I
    :cond_2
    move v13, v10

    goto :goto_1

    .line 1008
    .end local v7    # "child":Ljavafx/scene/Node;
    .end local v8    # "nodeRowIndex":I
    .end local v9    # "nodeRowEnd":I
    .end local v10    # "index":I
    .end local v11    # "end":I
    :cond_3
    move v12, v1

    move v13, v3

    move-object v14, v2

    invoke-static {v12, v13, v14}, Ljavafx/scene/layout/GridPane;->createRow(II[Ljavafx/scene/Node;)V

    .line 1009
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v13, v2

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v12

    .line 1010
    return-void
.end method

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
    .line 806
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 807
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/GridPane$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/GridPane$3;-><init>(Ljavafx/scene/layout/GridPane;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    .line 829
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method protected computeMinHeight(D)D
    .locals 13

    .prologue
    .line 1222
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-wide v2, p1

    .local v2, "width":D
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/layout/GridPane;->computeGridMetrics()V

    .line 1223
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    .line 1225
    move-wide v8, v2

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    move-object v4, v8

    .line 1227
    .local v4, "widths":[D
    move-object v8, v1

    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v8

    move-object v10, v1

    move-object v11, v4

    .line 1228
    invoke-direct {v10, v11}, Ljavafx/scene/layout/GridPane;->computeMinHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v10

    invoke-static {v10}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$800(Ljavafx/scene/layout/GridPane$CompositeSize;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    move-object v11, v1

    .line 1229
    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v5, v8

    .line 1231
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    move-wide v8, v5

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-wide v1

    .line 1225
    .end local v4    # "widths":[D
    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v8, v1

    move-wide v9, v2

    :try_start_1
    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/GridPane;->computeWidthsToFit(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v8

    invoke-static {v8}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$700(Ljavafx/scene/layout/GridPane$CompositeSize;)[D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    move-object v8, v7

    throw v8
.end method

.method protected computeMinWidth(D)D
    .locals 13

    .prologue
    .line 1207
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-wide v2, p1

    .local v2, "height":D
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/layout/GridPane;->computeGridMetrics()V

    .line 1208
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    .line 1210
    move-wide v8, v2

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    move-object v4, v8

    .line 1212
    .local v4, "heights":[D
    move-object v8, v1

    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v8

    move-object v10, v1

    move-object v11, v4

    .line 1213
    invoke-direct {v10, v11}, Ljavafx/scene/layout/GridPane;->computeMinWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v10

    invoke-static {v10}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$800(Ljavafx/scene/layout/GridPane$CompositeSize;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    move-object v11, v1

    .line 1214
    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v5, v8

    .line 1216
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    move-wide v8, v5

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-wide v1

    .line 1210
    .end local v4    # "heights":[D
    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v8, v1

    move-wide v9, v2

    :try_start_1
    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/GridPane;->computeHeightsToFit(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v8

    invoke-static {v8}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$700(Ljavafx/scene/layout/GridPane$CompositeSize;)[D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 1216
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    move-object v8, v7

    throw v8
.end method

.method protected computePrefHeight(D)D
    .locals 13

    .prologue
    .line 1250
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-wide v2, p1

    .local v2, "width":D
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/layout/GridPane;->computeGridMetrics()V

    .line 1251
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    .line 1253
    move-wide v8, v2

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    move-object v4, v8

    .line 1255
    .local v4, "widths":[D
    move-object v8, v1

    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v8

    move-object v10, v1

    move-object v11, v4

    .line 1256
    invoke-direct {v10, v11}, Ljavafx/scene/layout/GridPane;->computePrefHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v10

    invoke-static {v10}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$800(Ljavafx/scene/layout/GridPane$CompositeSize;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    move-object v11, v1

    .line 1257
    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v5, v8

    .line 1259
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    move-wide v8, v5

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-wide v1

    .line 1253
    .end local v4    # "widths":[D
    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v8, v1

    move-wide v9, v2

    :try_start_1
    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/GridPane;->computeWidthsToFit(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v8

    invoke-static {v8}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$700(Ljavafx/scene/layout/GridPane$CompositeSize;)[D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 1259
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    move-object v8, v7

    throw v8
.end method

.method protected computePrefWidth(D)D
    .locals 13

    .prologue
    .line 1236
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-wide v2, p1

    .local v2, "height":D
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/layout/GridPane;->computeGridMetrics()V

    .line 1237
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    .line 1239
    move-wide v8, v2

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    move-object v4, v8

    .line 1241
    .local v4, "heights":[D
    move-object v8, v1

    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v8

    move-object v10, v1

    move-object v11, v4

    .line 1242
    invoke-direct {v10, v11}, Ljavafx/scene/layout/GridPane;->computePrefWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v10

    invoke-static {v10}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$800(Ljavafx/scene/layout/GridPane$CompositeSize;)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    move-object v11, v1

    .line 1243
    invoke-virtual {v11}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v5, v8

    .line 1245
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    move-wide v8, v5

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-wide v1

    .line 1239
    .end local v4    # "heights":[D
    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v8, v1

    move-wide v9, v2

    :try_start_1
    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/GridPane;->computeHeightsToFit(D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v8

    invoke-static {v8}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$700(Ljavafx/scene/layout/GridPane$CompositeSize;)[D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 1245
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    move-object v8, v7

    throw v8
.end method

.method public final getAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public final getColumnConstraints()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/layout/ColumnConstraints;",
            ">;"
        }
    .end annotation

    .prologue
    .line 953
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->columnConstraints:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 1643
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/GridPane;->computeGridMetrics()V

    .line 1644
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->bias:Ljavafx/geometry/Orientation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0
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
    .line 2487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    invoke-static {}, Ljavafx/scene/layout/GridPane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method getGrid()[[D
    .locals 6

    .prologue
    .line 2373
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->currentHeights:Ljavafx/scene/layout/GridPane$CompositeSize;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->currentWidths:Ljavafx/scene/layout/GridPane$CompositeSize;

    if-nez v1, :cond_1

    .line 2374
    :cond_0
    const/4 v1, 0x0

    check-cast v1, [[D

    move-object v0, v1

    .line 2376
    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [[D

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane;->currentWidths:Ljavafx/scene/layout/GridPane$CompositeSize;

    invoke-static {v4}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$700(Ljavafx/scene/layout/GridPane$CompositeSize;)[D

    move-result-object v4

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane;->currentHeights:Ljavafx/scene/layout/GridPane$CompositeSize;

    invoke-static {v4}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$700(Ljavafx/scene/layout/GridPane$CompositeSize;)[D

    move-result-object v4

    aput-object v4, v2, v3

    move-object v0, v1

    goto :goto_0
.end method

.method public final getHgap()D
    .locals 4

    .prologue
    .line 766
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/GridPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/GridPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRowConstraints()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/layout/RowConstraints;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->rowConstraints:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method public final getVgap()D
    .locals 4

    .prologue
    .line 800
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/GridPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/GridPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final gridLinesVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 849
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->gridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 850
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/GridPane$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/GridPane$4;-><init>(Ljavafx/scene/layout/GridPane;)V

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->gridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    .line 880
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->gridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method public final hgapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 738
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/GridPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 739
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/GridPane$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/GridPane$1;-><init>(Ljavafx/scene/layout/GridPane;D)V

    iput-object v3, v2, Ljavafx/scene/layout/GridPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    .line 761
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/GridPane;->hgap:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-object v1
.end method

.method public final impl_getCellBounds(II)Ljavafx/geometry/Bounds;
    .locals 49
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2748
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/GridPane;
    move/from16 v4, p1

    .local v4, "columnIndex":I
    move/from16 v5, p2

    .local v5, "rowIndex":I
    move-object/from16 v38, v3

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/GridPane;->getHgap()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v6, v38

    .line 2749
    .local v6, "snaphgap":D
    move-object/from16 v38, v3

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/GridPane;->getVgap()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v8, v38

    .line 2750
    .local v8, "snapvgap":D
    move-object/from16 v38, v3

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v10, v38

    .line 2751
    .local v10, "top":D
    move-object/from16 v38, v3

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 2752
    .local v12, "right":D
    move-object/from16 v38, v3

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v14, v38

    .line 2753
    .local v14, "bottom":D
    move-object/from16 v38, v3

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v38

    move-wide/from16 v16, v38

    .line 2754
    .local v16, "left":D
    move-object/from16 v38, v3

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/GridPane;->getHeight()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v40, v10

    move-wide/from16 v42, v14

    add-double v40, v40, v42

    sub-double v38, v38, v40

    move-wide/from16 v18, v38

    .line 2755
    .local v18, "gridPaneHeight":D
    move-object/from16 v38, v3

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/GridPane;->getWidth()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/layout/GridPane;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v40, v16

    move-wide/from16 v42, v12

    add-double v40, v40, v42

    sub-double v38, v38, v40

    move-wide/from16 v20, v38

    .line 2761
    .local v20, "gridPaneWidth":D
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/GridPane;->getGrid()[[D

    move-result-object v38

    move-object/from16 v24, v38

    .line 2762
    .local v24, "grid":[[D
    move-object/from16 v38, v24

    if-nez v38, :cond_0

    .line 2763
    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [D

    move-object/from16 v38, v0

    move-object/from16 v48, v38

    move-object/from16 v38, v48

    move-object/from16 v39, v48

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    aput-wide v41, v39, v40

    move-object/from16 v23, v38

    .line 2764
    .local v23, "rowHeights":[D
    const/16 v38, 0x0

    move/from16 v5, v38

    .line 2765
    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [D

    move-object/from16 v38, v0

    move-object/from16 v48, v38

    move-object/from16 v38, v48

    move-object/from16 v39, v48

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    aput-wide v41, v39, v40

    move-object/from16 v22, v38

    .line 2766
    .local v22, "columnWidths":[D
    const/16 v38, 0x0

    move/from16 v4, v38

    .line 2773
    :goto_0
    const-wide/16 v38, 0x0

    move-wide/from16 v25, v38

    .line 2774
    .local v25, "rowTotal":D
    const/16 v38, 0x0

    move/from16 v27, v38

    .local v27, "i":I
    :goto_1
    move/from16 v38, v27

    move-object/from16 v39, v23

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1

    .line 2775
    move-wide/from16 v38, v25

    move-object/from16 v40, v23

    move/from16 v41, v27

    aget-wide v40, v40, v41

    add-double v38, v38, v40

    move-wide/from16 v25, v38

    .line 2774
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 2768
    .end local v22    # "columnWidths":[D
    .end local v23    # "rowHeights":[D
    .end local v25    # "rowTotal":D
    .end local v27    # "i":I
    :cond_0
    move-object/from16 v38, v24

    const/16 v39, 0x0

    aget-object v38, v38, v39

    move-object/from16 v22, v38

    .line 2769
    .restart local v22    # "columnWidths":[D
    move-object/from16 v38, v24

    const/16 v39, 0x1

    aget-object v38, v38, v39

    move-object/from16 v23, v38

    .restart local v23    # "rowHeights":[D
    goto :goto_0

    .line 2777
    .restart local v25    # "rowTotal":D
    .restart local v27    # "i":I
    :cond_1
    move-wide/from16 v38, v25

    move-object/from16 v40, v23

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x1

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v42, v8

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v25, v38

    .line 2780
    move-wide/from16 v38, v10

    move-wide/from16 v40, v18

    move-wide/from16 v42, v25

    move-object/from16 v44, v3

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/layout/GridPane;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v44

    invoke-static/range {v40 .. v44}, Ljavafx/scene/layout/Region;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v27, v38

    .line 2781
    .local v27, "minY":D
    move-object/from16 v38, v23

    move/from16 v39, v5

    aget-wide v38, v38, v39

    move-wide/from16 v29, v38

    .line 2782
    .local v29, "height":D
    const/16 v38, 0x0

    move/from16 v31, v38

    .local v31, "j":I
    :goto_2
    move/from16 v38, v31

    move/from16 v39, v5

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_2

    .line 2783
    move-wide/from16 v38, v27

    move-object/from16 v40, v23

    move/from16 v41, v31

    aget-wide v40, v40, v41

    move-wide/from16 v42, v8

    add-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v27, v38

    .line 2782
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .line 2787
    :cond_2
    const-wide/16 v38, 0x0

    move-wide/from16 v31, v38

    .line 2788
    .local v31, "columnTotal":D
    const/16 v38, 0x0

    move/from16 v33, v38

    .local v33, "i":I
    :goto_3
    move/from16 v38, v33

    move-object/from16 v39, v22

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_3

    .line 2789
    move-wide/from16 v38, v31

    move-object/from16 v40, v22

    move/from16 v41, v33

    aget-wide v40, v40, v41

    add-double v38, v38, v40

    move-wide/from16 v31, v38

    .line 2788
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 2791
    :cond_3
    move-wide/from16 v38, v31

    move-object/from16 v40, v22

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x1

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v42, v6

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v31, v38

    .line 2794
    move-wide/from16 v38, v16

    move-wide/from16 v40, v20

    move-wide/from16 v42, v31

    move-object/from16 v44, v3

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/layout/GridPane;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v44

    invoke-static/range {v40 .. v44}, Ljavafx/scene/layout/Region;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v40

    add-double v38, v38, v40

    move-wide/from16 v33, v38

    .line 2795
    .local v33, "minX":D
    move-object/from16 v38, v22

    move/from16 v39, v4

    aget-wide v38, v38, v39

    move-wide/from16 v35, v38

    .line 2796
    .local v35, "width":D
    const/16 v38, 0x0

    move/from16 v37, v38

    .local v37, "j":I
    :goto_4
    move/from16 v38, v37

    move/from16 v39, v4

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    .line 2797
    move-wide/from16 v38, v33

    move-object/from16 v40, v22

    move/from16 v41, v37

    aget-wide v40, v40, v41

    move-wide/from16 v42, v6

    add-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v33, v38

    .line 2796
    add-int/lit8 v37, v37, 0x1

    goto :goto_4

    .line 2800
    :cond_4
    new-instance v38, Ljavafx/geometry/BoundingBox;

    move-object/from16 v48, v38

    move-object/from16 v38, v48

    move-object/from16 v39, v48

    move-wide/from16 v40, v33

    move-wide/from16 v42, v27

    move-wide/from16 v44, v35

    move-wide/from16 v46, v29

    invoke-direct/range {v39 .. v47}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object/from16 v3, v38

    .end local v3    # "this":Ljavafx/scene/layout/GridPane;
    return-object v3
.end method

.method public final impl_getColumnCount()I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2728
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    move v1, v6

    .line 2729
    .local v1, "nColumns":I
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2730
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v3, v6

    .line 2731
    .local v3, "child":Ljavafx/scene/Node;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2732
    move-object v6, v3

    invoke-static {v6}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v6

    move v4, v6

    .line 2733
    .local v4, "columnIndex":I
    move-object v6, v3

    invoke-static {v6}, Ljavafx/scene/layout/GridPane;->getNodeColumnEnd(Ljavafx/scene/Node;)I

    move-result v6

    move v5, v6

    .line 2734
    .local v5, "columnEnd":I
    move v6, v1

    move v7, v5

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_1

    move v7, v5

    :goto_1
    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v1, v6

    .line 2729
    .end local v4    # "columnIndex":I
    .end local v5    # "columnEnd":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2734
    .restart local v4    # "columnIndex":I
    .restart local v5    # "columnEnd":I
    :cond_1
    move v7, v4

    goto :goto_1

    .line 2737
    .end local v3    # "child":Ljavafx/scene/Node;
    .end local v4    # "columnIndex":I
    .end local v5    # "columnEnd":I
    :cond_2
    move v6, v1

    move v0, v6

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return v0
.end method

.method public final impl_getRowCount()I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2708
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/GridPane;->getRowConstraints()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    move v1, v6

    .line 2709
    .local v1, "nRows":I
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2710
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v3, v6

    .line 2711
    .local v3, "child":Ljavafx/scene/Node;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2712
    move-object v6, v3

    invoke-static {v6}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v6

    move v4, v6

    .line 2713
    .local v4, "rowIndex":I
    move-object v6, v3

    invoke-static {v6}, Ljavafx/scene/layout/GridPane;->getNodeRowEnd(Ljavafx/scene/Node;)I

    move-result v6

    move v5, v6

    .line 2714
    .local v5, "rowEnd":I
    move v6, v1

    move v7, v5

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_1

    move v7, v5

    :goto_1
    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v1, v6

    .line 2709
    .end local v4    # "rowIndex":I
    .end local v5    # "rowEnd":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2714
    .restart local v4    # "rowIndex":I
    .restart local v5    # "rowEnd":I
    :cond_1
    move v7, v4

    goto :goto_1

    .line 2717
    .end local v3    # "child":Ljavafx/scene/Node;
    .end local v4    # "rowIndex":I
    .end local v5    # "rowEnd":I
    :cond_2
    move v6, v1

    move v0, v6

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return v0
.end method

.method public final isGridLinesVisible()Z
    .locals 2

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->gridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane;->gridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 77

    .prologue
    .line 1669
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/GridPane;
    move-object/from16 v60, v3

    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v60

    iput-boolean v0, v1, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    .line 1671
    move-object/from16 v60, v3

    move-object/from16 v61, v3

    :try_start_0
    invoke-virtual/range {v61 .. v61}, Ljavafx/scene/layout/GridPane;->getHgap()D

    move-result-wide v61

    invoke-virtual/range {v60 .. v62}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v60

    move-wide/from16 v4, v60

    .line 1672
    .local v4, "snaphgap":D
    move-object/from16 v60, v3

    move-object/from16 v61, v3

    invoke-virtual/range {v61 .. v61}, Ljavafx/scene/layout/GridPane;->getVgap()D

    move-result-wide v61

    invoke-virtual/range {v60 .. v62}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v60

    move-wide/from16 v6, v60

    .line 1673
    .local v6, "snapvgap":D
    move-object/from16 v60, v3

    move-object/from16 v61, v3

    invoke-virtual/range {v61 .. v61}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v61

    invoke-virtual/range {v60 .. v62}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v60

    move-wide/from16 v8, v60

    .line 1674
    .local v8, "top":D
    move-object/from16 v60, v3

    move-object/from16 v61, v3

    invoke-virtual/range {v61 .. v61}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v61

    invoke-virtual/range {v60 .. v62}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v60

    move-wide/from16 v10, v60

    .line 1675
    .local v10, "bottom":D
    move-object/from16 v60, v3

    move-object/from16 v61, v3

    invoke-virtual/range {v61 .. v61}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v61

    invoke-virtual/range {v60 .. v62}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v60

    move-wide/from16 v12, v60

    .line 1676
    .local v12, "left":D
    move-object/from16 v60, v3

    move-object/from16 v61, v3

    invoke-virtual/range {v61 .. v61}, Ljavafx/scene/layout/GridPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v61

    invoke-virtual/range {v60 .. v62}, Ljavafx/scene/layout/GridPane;->snapSpace(D)D

    move-result-wide v60

    move-wide/from16 v14, v60

    .line 1678
    .local v14, "right":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getWidth()D

    move-result-wide v60

    move-wide/from16 v16, v60

    .line 1679
    .local v16, "width":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getHeight()D

    move-result-wide v60

    move-wide/from16 v18, v60

    .line 1680
    .local v18, "height":D
    move-wide/from16 v60, v18

    move-wide/from16 v62, v8

    sub-double v60, v60, v62

    move-wide/from16 v62, v10

    sub-double v60, v60, v62

    move-wide/from16 v20, v60

    .line 1681
    .local v20, "contentHeight":D
    move-wide/from16 v60, v16

    move-wide/from16 v62, v12

    sub-double v60, v60, v62

    move-wide/from16 v62, v14

    sub-double v60, v60, v62

    move-wide/from16 v22, v60

    .line 1684
    .local v22, "contentWidth":D
    move-object/from16 v60, v3

    invoke-direct/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->computeGridMetrics()V

    .line 1686
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v60

    move-object/from16 v28, v60

    .line 1689
    .local v28, "contentBias":Ljavafx/geometry/Orientation;
    move-object/from16 v60, v28

    if-nez v60, :cond_2

    .line 1690
    move-object/from16 v60, v3

    const/16 v61, 0x0

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->computePrefHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/GridPane$CompositeSize;->clone()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object/from16 v29, v60

    .line 1691
    .local v29, "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object/from16 v60, v3

    const/16 v61, 0x0

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->computePrefWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/GridPane$CompositeSize;->clone()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object/from16 v30, v60

    .line 1692
    .local v30, "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object/from16 v60, v3

    move-object/from16 v61, v29

    move-wide/from16 v62, v18

    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/GridPane;->adjustRowHeights(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v60

    move-wide/from16 v26, v60

    .line 1693
    .local v26, "rowTotal":D
    move-object/from16 v60, v3

    move-object/from16 v61, v30

    move-wide/from16 v62, v16

    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/GridPane;->adjustColumnWidths(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v60

    move-wide/from16 v24, v60

    .line 1706
    .local v24, "columnTotal":D
    :goto_0
    move-wide/from16 v60, v12

    move-wide/from16 v62, v22

    move-wide/from16 v64, v24

    move-object/from16 v66, v3

    invoke-direct/range {v66 .. v66}, Ljavafx/scene/layout/GridPane;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v66

    invoke-static/range {v62 .. v66}, Ljavafx/scene/layout/GridPane;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v62

    add-double v60, v60, v62

    move-wide/from16 v31, v60

    .line 1707
    .local v31, "x":D
    move-wide/from16 v60, v8

    move-wide/from16 v62, v20

    move-wide/from16 v64, v26

    move-object/from16 v66, v3

    invoke-direct/range {v66 .. v66}, Ljavafx/scene/layout/GridPane;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v66

    invoke-static/range {v62 .. v66}, Ljavafx/scene/layout/GridPane;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v62

    add-double v60, v60, v62

    move-wide/from16 v33, v60

    .line 1708
    .local v33, "y":D
    move-object/from16 v60, v3

    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getManagedChildren()Ljava/util/List;

    move-result-object v60

    move-object/from16 v35, v60

    .line 1710
    .local v35, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v60, v3

    move-object/from16 v0, v60

    iget v0, v0, Ljavafx/scene/layout/GridPane;->numRows:I

    move/from16 v60, v0

    const-wide/high16 v61, -0x4010000000000000L    # -1.0

    invoke-static/range {v60 .. v62}, Ljavafx/scene/layout/GridPane;->createDoubleArray(ID)[D

    move-result-object v60

    move-object/from16 v36, v60

    .line 1712
    .local v36, "baselineOffsets":[D
    const/16 v60, 0x0

    move/from16 v37, v60

    .local v37, "i":I
    move-object/from16 v60, v35

    invoke-interface/range {v60 .. v60}, Ljava/util/List;->size()I

    move-result v60

    move/from16 v38, v60

    .local v38, "size":I
    :goto_1
    move/from16 v60, v37

    move/from16 v61, v38

    move/from16 v0, v60

    move/from16 v1, v61

    if-ge v0, v1, :cond_e

    .line 1713
    move-object/from16 v60, v35

    move/from16 v61, v37

    invoke-interface/range {v60 .. v61}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljavafx/scene/Node;

    move-object/from16 v39, v60

    .line 1714
    .local v39, "child":Ljavafx/scene/Node;
    move-object/from16 v60, v39

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getNodeRowIndex(Ljavafx/scene/Node;)I

    move-result v60

    move/from16 v40, v60

    .line 1715
    .local v40, "rowIndex":I
    move-object/from16 v60, v39

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getNodeColumnIndex(Ljavafx/scene/Node;)I

    move-result v60

    move/from16 v41, v60

    .line 1716
    .local v41, "columnIndex":I
    move-object/from16 v60, v39

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getNodeColumnSpan(Ljavafx/scene/Node;)I

    move-result v60

    move/from16 v42, v60

    .line 1717
    .local v42, "colspan":I
    move/from16 v60, v42

    const v61, 0x7fffffff

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_0

    .line 1718
    move-object/from16 v60, v30

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I

    move-result v60

    move/from16 v61, v41

    sub-int v60, v60, v61

    move/from16 v42, v60

    .line 1720
    :cond_0
    move-object/from16 v60, v39

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getNodeRowSpan(Ljavafx/scene/Node;)I

    move-result v60

    move/from16 v43, v60

    .line 1721
    .local v43, "rowspan":I
    move/from16 v60, v43

    const v61, 0x7fffffff

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_1

    .line 1722
    move-object/from16 v60, v29

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I

    move-result v60

    move/from16 v61, v40

    sub-int v60, v60, v61

    move/from16 v43, v60

    .line 1724
    :cond_1
    move-wide/from16 v60, v31

    move-wide/from16 v44, v60

    .line 1725
    .local v44, "areaX":D
    const/16 v60, 0x0

    move/from16 v46, v60

    .local v46, "j":I
    :goto_2
    move/from16 v60, v46

    move/from16 v61, v41

    move/from16 v0, v60

    move/from16 v1, v61

    if-ge v0, v1, :cond_4

    .line 1726
    move-wide/from16 v60, v44

    move-object/from16 v62, v30

    move/from16 v63, v46

    invoke-static/range {v62 .. v63}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v62

    move-wide/from16 v64, v4

    add-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v44, v60

    .line 1725
    add-int/lit8 v46, v46, 0x1

    goto :goto_2

    .line 1694
    .end local v24    # "columnTotal":D
    .end local v26    # "rowTotal":D
    .end local v29    # "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v30    # "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v31    # "x":D
    .end local v33    # "y":D
    .end local v35    # "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v36    # "baselineOffsets":[D
    .end local v37    # "i":I
    .end local v38    # "size":I
    .end local v39    # "child":Ljavafx/scene/Node;
    .end local v40    # "rowIndex":I
    .end local v41    # "columnIndex":I
    .end local v42    # "colspan":I
    .end local v43    # "rowspan":I
    .end local v44    # "areaX":D
    .end local v46    # "j":I
    :cond_2
    move-object/from16 v60, v28

    sget-object v61, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_3

    .line 1695
    move-object/from16 v60, v3

    const/16 v61, 0x0

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->computePrefWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/GridPane$CompositeSize;->clone()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object/from16 v30, v60

    .line 1696
    .restart local v30    # "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object/from16 v60, v3

    move-object/from16 v61, v30

    move-wide/from16 v62, v16

    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/GridPane;->adjustColumnWidths(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v60

    move-wide/from16 v24, v60

    .line 1697
    .restart local v24    # "columnTotal":D
    move-object/from16 v60, v3

    move-object/from16 v61, v30

    invoke-static/range {v61 .. v61}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$700(Ljavafx/scene/layout/GridPane$CompositeSize;)[D

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->computePrefHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v60

    move-object/from16 v29, v60

    .line 1698
    .restart local v29    # "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object/from16 v60, v3

    move-object/from16 v61, v29

    move-wide/from16 v62, v18

    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/GridPane;->adjustRowHeights(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v60

    move-wide/from16 v26, v60

    .restart local v26    # "rowTotal":D
    goto/16 :goto_0

    .line 1700
    .end local v24    # "columnTotal":D
    .end local v26    # "rowTotal":D
    .end local v29    # "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v30    # "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    :cond_3
    move-object/from16 v60, v3

    const/16 v61, 0x0

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->computePrefHeights([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/GridPane$CompositeSize;->clone()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object/from16 v29, v60

    .line 1701
    .restart local v29    # "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object/from16 v60, v3

    move-object/from16 v61, v29

    move-wide/from16 v62, v18

    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/GridPane;->adjustRowHeights(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v60

    move-wide/from16 v26, v60

    .line 1702
    .restart local v26    # "rowTotal":D
    move-object/from16 v60, v3

    move-object/from16 v61, v29

    invoke-static/range {v61 .. v61}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$700(Ljavafx/scene/layout/GridPane$CompositeSize;)[D

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->computePrefWidths([D)Ljavafx/scene/layout/GridPane$CompositeSize;

    move-result-object v60

    move-object/from16 v30, v60

    .line 1703
    .restart local v30    # "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object/from16 v60, v3

    move-object/from16 v61, v30

    move-wide/from16 v62, v16

    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/GridPane;->adjustColumnWidths(Ljavafx/scene/layout/GridPane$CompositeSize;D)D

    move-result-wide v60

    move-wide/from16 v24, v60

    .restart local v24    # "columnTotal":D
    goto/16 :goto_0

    .line 1728
    .restart local v31    # "x":D
    .restart local v33    # "y":D
    .restart local v35    # "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .restart local v36    # "baselineOffsets":[D
    .restart local v37    # "i":I
    .restart local v38    # "size":I
    .restart local v39    # "child":Ljavafx/scene/Node;
    .restart local v40    # "rowIndex":I
    .restart local v41    # "columnIndex":I
    .restart local v42    # "colspan":I
    .restart local v43    # "rowspan":I
    .restart local v44    # "areaX":D
    .restart local v46    # "j":I
    :cond_4
    move-wide/from16 v60, v33

    move-wide/from16 v46, v60

    .line 1729
    .local v46, "areaY":D
    const/16 v60, 0x0

    move/from16 v48, v60

    .local v48, "j":I
    :goto_3
    move/from16 v60, v48

    move/from16 v61, v40

    move/from16 v0, v60

    move/from16 v1, v61

    if-ge v0, v1, :cond_5

    .line 1730
    move-wide/from16 v60, v46

    move-object/from16 v62, v29

    move/from16 v63, v48

    invoke-static/range {v62 .. v63}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v62

    move-wide/from16 v64, v6

    add-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v46, v60

    .line 1729
    add-int/lit8 v48, v48, 0x1

    goto :goto_3

    .line 1732
    :cond_5
    move-object/from16 v60, v30

    move/from16 v61, v41

    invoke-static/range {v60 .. v61}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v60

    move-wide/from16 v48, v60

    .line 1733
    .local v48, "areaW":D
    const/16 v60, 0x2

    move/from16 v50, v60

    .local v50, "j":I
    :goto_4
    move/from16 v60, v50

    move/from16 v61, v42

    move/from16 v0, v60

    move/from16 v1, v61

    if-gt v0, v1, :cond_6

    .line 1734
    move-wide/from16 v60, v48

    move-object/from16 v62, v30

    move/from16 v63, v41

    move/from16 v64, v50

    add-int v63, v63, v64

    const/16 v64, 0x1

    add-int/lit8 v63, v63, -0x1

    invoke-static/range {v62 .. v63}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v62

    move-wide/from16 v64, v4

    add-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v48, v60

    .line 1733
    add-int/lit8 v50, v50, 0x1

    goto :goto_4

    .line 1736
    :cond_6
    move-object/from16 v60, v29

    move/from16 v61, v40

    invoke-static/range {v60 .. v61}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v60

    move-wide/from16 v50, v60

    .line 1737
    .local v50, "areaH":D
    const/16 v60, 0x2

    move/from16 v52, v60

    .local v52, "j":I
    :goto_5
    move/from16 v60, v52

    move/from16 v61, v43

    move/from16 v0, v60

    move/from16 v1, v61

    if-gt v0, v1, :cond_7

    .line 1738
    move-wide/from16 v60, v50

    move-object/from16 v62, v29

    move/from16 v63, v40

    move/from16 v64, v52

    add-int v63, v63, v64

    const/16 v64, 0x1

    add-int/lit8 v63, v63, -0x1

    invoke-static/range {v62 .. v63}, Ljavafx/scene/layout/GridPane$CompositeSize;->access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D

    move-result-wide v62

    move-wide/from16 v64, v6

    add-double v62, v62, v64

    add-double v60, v60, v62

    move-wide/from16 v50, v60

    .line 1737
    add-int/lit8 v52, v52, 0x1

    goto :goto_5

    .line 1741
    :cond_7
    move-object/from16 v60, v39

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getHalignment(Ljavafx/scene/Node;)Ljavafx/geometry/HPos;

    move-result-object v60

    move-object/from16 v52, v60

    .line 1742
    .local v52, "halign":Ljavafx/geometry/HPos;
    move-object/from16 v60, v39

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getValignment(Ljavafx/scene/Node;)Ljavafx/geometry/VPos;

    move-result-object v60

    move-object/from16 v53, v60

    .line 1743
    .local v53, "valign":Ljavafx/geometry/VPos;
    move-object/from16 v60, v39

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->isFillWidth(Ljavafx/scene/Node;)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v54, v60

    .line 1744
    .local v54, "fillWidth":Ljava/lang/Boolean;
    move-object/from16 v60, v39

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->isFillHeight(Ljavafx/scene/Node;)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v55, v60

    .line 1746
    .local v55, "fillHeight":Ljava/lang/Boolean;
    move-object/from16 v60, v52

    if-nez v60, :cond_8

    .line 1747
    move-object/from16 v60, v3

    move/from16 v61, v41

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->getColumnHalignment(I)Ljavafx/geometry/HPos;

    move-result-object v60

    move-object/from16 v52, v60

    .line 1749
    :cond_8
    move-object/from16 v60, v53

    if-nez v60, :cond_9

    .line 1750
    move-object/from16 v60, v3

    move/from16 v61, v40

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->getRowValignment(I)Ljavafx/geometry/VPos;

    move-result-object v60

    move-object/from16 v53, v60

    .line 1752
    :cond_9
    move-object/from16 v60, v54

    if-nez v60, :cond_a

    .line 1753
    move-object/from16 v60, v3

    move/from16 v61, v41

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->shouldColumnFillWidth(I)Z

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v54, v60

    .line 1755
    :cond_a
    move-object/from16 v60, v55

    if-nez v60, :cond_b

    .line 1756
    move-object/from16 v60, v3

    move/from16 v61, v40

    invoke-direct/range {v60 .. v61}, Ljavafx/scene/layout/GridPane;->shouldRowFillHeight(I)Z

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v55, v60

    .line 1759
    :cond_b
    const-wide/16 v60, 0x0

    move-wide/from16 v56, v60

    .line 1760
    .local v56, "baselineOffset":D
    move-object/from16 v60, v53

    sget-object v61, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_d

    .line 1761
    move-object/from16 v60, v36

    move/from16 v61, v40

    aget-wide v60, v60, v61

    const-wide/high16 v62, -0x4010000000000000L    # -1.0

    cmpl-double v60, v60, v62

    if-nez v60, :cond_c

    .line 1762
    move-object/from16 v60, v36

    move/from16 v61, v40

    move-object/from16 v62, v3

    move-object/from16 v63, v3

    move-object/from16 v0, v63

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowBaseline:[Ljava/util/List;

    move-object/from16 v63, v0

    move/from16 v64, v40

    aget-object v63, v63, v64

    sget-object v64, Ljavafx/scene/layout/GridPane;->marginAccessor:Ljavafx/util/Callback;

    move-object/from16 v65, v3

    move/from16 v66, v40

    move-object/from16 v67, v30

    move-wide/from16 v68, v4

    invoke-static/range {v65 .. v69}, Ljavafx/scene/layout/GridPane$$Lambda$2;->lambdaFactory$(Ljavafx/scene/layout/GridPane;ILjavafx/scene/layout/GridPane$CompositeSize;D)Ljava/util/function/Function;

    move-result-object v65

    move-wide/from16 v66, v50

    move-object/from16 v68, v3

    move-object/from16 v69, v39

    invoke-static/range {v68 .. v69}, Ljavafx/scene/layout/GridPane$$Lambda$3;->lambdaFactory$(Ljavafx/scene/layout/GridPane;Ljavafx/scene/Node;)Ljava/util/function/Function;

    move-result-object v68

    move-object/from16 v69, v3

    move-object/from16 v0, v69

    iget-object v0, v0, Ljavafx/scene/layout/GridPane;->rowMinBaselineComplement:[D

    move-object/from16 v69, v0

    move/from16 v70, v40

    aget-wide v69, v69, v70

    invoke-virtual/range {v62 .. v70}, Ljavafx/scene/layout/GridPane;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DLjava/util/function/Function;D)D

    move-result-wide v62

    aput-wide v62, v60, v61

    .line 1787
    :cond_c
    move-object/from16 v60, v36

    move/from16 v61, v40

    aget-wide v60, v60, v61

    move-wide/from16 v56, v60

    .line 1790
    :cond_d
    move-object/from16 v60, v39

    invoke-static/range {v60 .. v60}, Ljavafx/scene/layout/GridPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v60

    move-object/from16 v58, v60

    .line 1791
    .local v58, "margin":Ljavafx/geometry/Insets;
    move-object/from16 v60, v3

    move-object/from16 v61, v39

    move-wide/from16 v62, v44

    move-wide/from16 v64, v46

    move-wide/from16 v66, v48

    move-wide/from16 v68, v50

    move-wide/from16 v70, v56

    move-object/from16 v72, v58

    move-object/from16 v73, v54

    .line 1794
    invoke-virtual/range {v73 .. v73}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v73

    move-object/from16 v74, v55

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v74

    move-object/from16 v75, v52

    move-object/from16 v76, v53

    .line 1791
    invoke-virtual/range {v60 .. v76}, Ljavafx/scene/layout/GridPane;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1712
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_1

    .line 1797
    .end local v39    # "child":Ljavafx/scene/Node;
    .end local v40    # "rowIndex":I
    .end local v41    # "columnIndex":I
    .end local v42    # "colspan":I
    .end local v43    # "rowspan":I
    .end local v44    # "areaX":D
    .end local v46    # "areaY":D
    .end local v48    # "areaW":D
    .end local v50    # "areaH":D
    .end local v52    # "halign":Ljavafx/geometry/HPos;
    .end local v53    # "valign":Ljavafx/geometry/VPos;
    .end local v54    # "fillWidth":Ljava/lang/Boolean;
    .end local v55    # "fillHeight":Ljava/lang/Boolean;
    .end local v56    # "baselineOffset":D
    .end local v58    # "margin":Ljavafx/geometry/Insets;
    :cond_e
    move-object/from16 v60, v3

    move-object/from16 v61, v30

    move-object/from16 v62, v29

    move-wide/from16 v63, v31

    move-wide/from16 v65, v33

    move-wide/from16 v67, v26

    move-wide/from16 v69, v24

    invoke-direct/range {v60 .. v70}, Ljavafx/scene/layout/GridPane;->layoutGridLines(Ljavafx/scene/layout/GridPane$CompositeSize;Ljavafx/scene/layout/GridPane$CompositeSize;DDDD)V

    .line 1798
    move-object/from16 v60, v3

    move-object/from16 v61, v29

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    iput-object v0, v1, Ljavafx/scene/layout/GridPane;->currentHeights:Ljavafx/scene/layout/GridPane$CompositeSize;

    .line 1799
    move-object/from16 v60, v3

    move-object/from16 v61, v30

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    iput-object v0, v1, Ljavafx/scene/layout/GridPane;->currentWidths:Ljavafx/scene/layout/GridPane$CompositeSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    move-object/from16 v60, v3

    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v60

    iput-boolean v0, v1, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    .line 1802
    .line 1803
    return-void

    .line 1801
    .end local v4    # "snaphgap":D
    .end local v6    # "snapvgap":D
    .end local v8    # "top":D
    .end local v10    # "bottom":D
    .end local v12    # "left":D
    .end local v14    # "right":D
    .end local v16    # "width":D
    .end local v18    # "height":D
    .end local v20    # "contentHeight":D
    .end local v22    # "contentWidth":D
    .end local v24    # "columnTotal":D
    .end local v26    # "rowTotal":D
    .end local v28    # "contentBias":Ljavafx/geometry/Orientation;
    .end local v29    # "heights":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v30    # "widths":Ljavafx/scene/layout/GridPane$CompositeSize;
    .end local v31    # "x":D
    .end local v33    # "y":D
    .end local v35    # "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v36    # "baselineOffsets":[D
    .end local v37    # "i":I
    .end local v38    # "size":I
    :catchall_0
    move-exception v60

    move-object/from16 v59, v60

    move-object/from16 v60, v3

    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v60

    iput-boolean v0, v1, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    move-object/from16 v60, v59

    throw v60
.end method

.method public requestLayout()V
    .locals 8

    .prologue
    .line 1652
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/GridPane;->performingLayout:Z

    if-eqz v1, :cond_0

    .line 1653
    .line 1666
    :goto_0
    return-void

    .line 1654
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/GridPane;->metricsDirty:Z

    if-eqz v1, :cond_1

    .line 1655
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 1656
    goto :goto_0

    .line 1658
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/GridPane;->metricsDirty:Z

    .line 1659
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->bias:Ljavafx/geometry/Orientation;

    .line 1660
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->rowGrow:[Ljavafx/scene/layout/Priority;

    .line 1661
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Ljavafx/scene/layout/GridPane;->rowMaxHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Ljavafx/scene/layout/GridPane;->rowPrefHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->rowMinHeight:Ljavafx/scene/layout/GridPane$CompositeSize;

    .line 1662
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->columnGrow:[Ljavafx/scene/layout/Priority;

    .line 1663
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Ljavafx/scene/layout/GridPane;->columnMaxWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Ljavafx/scene/layout/GridPane;->columnPrefWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->columnMinWidth:Ljavafx/scene/layout/GridPane$CompositeSize;

    .line 1664
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Ljavafx/scene/layout/GridPane;->rowMaxBaselineComplement:[D

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Ljavafx/scene/layout/GridPane;->rowPrefBaselineComplement:[D

    iput-object v2, v1, Ljavafx/scene/layout/GridPane;->rowMinBaselineComplement:[D

    .line 1665
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 1666
    goto :goto_0
.end method

.method public final setAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/GridPane;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 835
    return-void
.end method

.method public final setGridLinesVisible(Z)V
    .locals 4

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/GridPane;->gridLinesVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setHgap(D)V
    .locals 7

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/GridPane;->hgapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setVgap(D)V
    .locals 7

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/GridPane;->vgapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid hgap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/GridPane;->getHgap()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vgap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/GridPane;->getVgap()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alignment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/GridPane;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane;
    return-object v0
.end method

.method public final vgapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 772
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/GridPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 773
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/GridPane$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/GridPane$2;-><init>(Ljavafx/scene/layout/GridPane;D)V

    iput-object v3, v2, Ljavafx/scene/layout/GridPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    .line 795
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/GridPane;->vgap:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/GridPane;
    return-object v1
.end method
