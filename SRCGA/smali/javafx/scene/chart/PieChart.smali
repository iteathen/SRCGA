.class public Ljavafx/scene/chart/PieChart;
.super Ljavafx/scene/chart/Chart;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/PieChart$StyleableProperties;,
        Ljavafx/scene/chart/PieChart$Data;,
        Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    }
.end annotation


# static fields
.field private static final LABEL_BALL_RADIUS:D = 2.0

.field private static final LABEL_TICK_GAP:D = 6.0

.field private static final MIN_PIE_RADIUS:I = 0x19


# instance fields
.field private begin:Ljavafx/scene/chart/PieChart$Data;

.field private centerX:D

.field private centerY:D

.field private clockwise:Ljavafx/beans/property/BooleanProperty;

.field private colorBits:Ljava/util/BitSet;

.field private data:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/PieChart$Data;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dataChangeListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/chart/PieChart$Data;",
            ">;"
        }
    .end annotation
.end field

.field private dataItemBeingRemoved:Ljavafx/scene/chart/PieChart$Data;

.field private dataRemoveTimeline:Ljavafx/animation/Timeline;

.field private labelLineLength:Ljavafx/beans/property/DoubleProperty;

.field private final labelLinePath:Ljavafx/scene/shape/Path;

.field private labelsVisible:Ljavafx/beans/property/BooleanProperty;

.field private legend:Lcom/sun/javafx/charts/Legend;

.field private pieRadius:D

.field private startAngle:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/chart/PieChart;-><init>(Ljavafx/collections/ObservableList;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/PieChart$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "data":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/PieChart$Data;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/chart/Chart;-><init>()V

    .line 102
    move-object v2, v0

    new-instance v3, Ljava/util/BitSet;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/BitSet;-><init>(I)V

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->colorBits:Ljava/util/BitSet;

    .line 106
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    .line 107
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/PieChart$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/chart/PieChart$1;-><init>(Ljavafx/scene/chart/PieChart;)V

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    .line 112
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/charts/Legend;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lcom/sun/javafx/charts/Legend;-><init>()V

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->legend:Lcom/sun/javafx/charts/Legend;

    .line 113
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->dataItemBeingRemoved:Ljavafx/scene/chart/PieChart$Data;

    .line 114
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    .line 115
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/chart/PieChart$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/PieChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->dataChangeListener:Ljavafx/collections/ListChangeListener;

    .line 191
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/PieChart$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/chart/PieChart$2;-><init>(Ljavafx/scene/chart/PieChart;)V

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->data:Ljavafx/beans/property/ObjectProperty;

    .line 238
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/PieChart$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/PieChart$3;-><init>(Ljavafx/scene/chart/PieChart;D)V

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->startAngle:Ljavafx/beans/property/DoubleProperty;

    .line 263
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/PieChart$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/PieChart$4;-><init>(Ljavafx/scene/chart/PieChart;Z)V

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->clockwise:Ljavafx/beans/property/BooleanProperty;

    .line 289
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/PieChart$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/PieChart$5;-><init>(Ljavafx/scene/chart/PieChart;D)V

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->labelLineLength:Ljavafx/beans/property/DoubleProperty;

    .line 314
    move-object v2, v0

    new-instance v3, Ljavafx/scene/chart/PieChart$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/PieChart$6;-><init>(Ljavafx/scene/chart/PieChart;Z)V

    iput-object v3, v2, Ljavafx/scene/chart/PieChart;->labelsVisible:Ljavafx/beans/property/BooleanProperty;

    .line 358
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 359
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "chart-pie-label-line"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 360
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/PieChart;->setLegend(Ljavafx/scene/Node;)V

    .line 361
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/PieChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 364
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/chart/PieChart;->useChartContentMirroring:Z

    .line 365
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/chart/PieChart;)Ljavafx/collections/ListChangeListener;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->dataChangeListener:Ljavafx/collections/ListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method static synthetic access$1700(Ljavafx/scene/chart/PieChart;Ljavafx/scene/chart/PieChart$Data;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/PieChart$Data;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/PieChart;->dataNameChanged(Ljavafx/scene/chart/PieChart$Data;)V

    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/chart/PieChart;Ljavafx/scene/chart/PieChart$Data;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/PieChart$Data;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/PieChart;->dataPieValueChanged(Ljavafx/scene/chart/PieChart$Data;)V

    return-void
.end method

.method static synthetic access$1900(Ljavafx/scene/chart/PieChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->clockwise:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method static synthetic access$2000(Ljavafx/scene/chart/PieChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->labelsVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method static synthetic access$2100(Ljavafx/scene/chart/PieChart;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->labelLineLength:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method static synthetic access$2200(Ljavafx/scene/chart/PieChart;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->startAngle:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method static synthetic access$2400(Ljavafx/scene/chart/PieChart;Ljavafx/scene/chart/PieChart$Data;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/PieChart$Data;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/PieChart;->removeDataItemRef(Ljavafx/scene/chart/PieChart$Data;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/PieChart;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/PieChart;->lambda$new$574(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/PieChart;Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/PieChart;->lambda$dataItemAdded$575(Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/chart/PieChart;Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/PieChart;->lambda$createDataRemoveTimeline$576(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private static calcX(DDD)D
    .locals 12

    .prologue
    .line 779
    move-wide v0, p0

    .local v0, "angle":D
    move-wide v2, p2

    .local v2, "radius":D
    move-wide/from16 v4, p4

    .local v4, "centerX":D
    move-wide v6, v4

    move-wide v8, v2

    move-wide v10, v0

    neg-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v0, v6

    .end local v0    # "angle":D
    return-wide v0
.end method

.method private static calcY(DDD)D
    .locals 12

    .prologue
    .line 783
    move-wide v0, p0

    .local v0, "angle":D
    move-wide v2, p2

    .local v2, "radius":D
    move-wide/from16 v4, p4

    .local v4, "centerY":D
    move-wide v6, v4

    move-wide v8, v2

    move-wide v10, v0

    neg-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v0, v6

    .end local v0    # "angle":D
    return-wide v0
.end method

.method private createArcRegion(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/Node;
    .locals 6

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/PieChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 392
    .local v2, "arcRegion":Ljavafx/scene/Node;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 393
    new-instance v3, Ljavafx/scene/layout/Region;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v2, v3

    .line 394
    move-object v3, v2

    sget-object v4, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 395
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->setPickOnBounds(Z)V

    .line 396
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/chart/PieChart$Data;->access$1000(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/Node;)V

    .line 398
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method private createDataRemoveTimeline(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/animation/Timeline;
    .locals 22

    .prologue
    .line 483
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/PieChart;
    move-object/from16 v2, p1

    .local v2, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/chart/PieChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 484
    .local v3, "shape":Ljavafx/scene/Node;
    new-instance v5, Ljavafx/animation/Timeline;

    move-object/from16 v21, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v21

    invoke-direct {v6}, Ljavafx/animation/Timeline;-><init>()V

    move-object v4, v5

    .line 485
    .local v4, "t":Ljavafx/animation/Timeline;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/animation/KeyFrame;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    const/4 v8, 0x0

    new-instance v9, Ljavafx/animation/KeyFrame;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    sget-object v11, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v12, 0x2

    new-array v12, v12, [Ljavafx/animation/KeyValue;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    new-instance v15, Ljavafx/animation/KeyValue;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v2

    .line 486
    invoke-static/range {v17 .. v17}, Ljavafx/scene/chart/PieChart$Data;->access$700(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v17

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v18}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    new-instance v15, Ljavafx/animation/KeyValue;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v2

    .line 487
    invoke-static/range {v17 .. v17}, Ljavafx/scene/chart/PieChart$Data;->access$1200(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v17

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v18}, Ljavafx/scene/chart/PieChart$Data;->access$1300(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v15, v13, v14

    invoke-direct {v10, v11, v12}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v9, v7, v8

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    const/4 v8, 0x1

    new-instance v9, Ljavafx/animation/KeyFrame;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-wide v11, 0x407f400000000000L    # 500.0

    .line 488
    invoke-static {v11, v12}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v11

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    invoke-static {v12, v13, v14}, Ljavafx/scene/chart/PieChart$$Lambda$3;->lambdaFactory$(Ljavafx/scene/chart/PieChart;Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    .line 508
    invoke-static/range {v18 .. v18}, Ljavafx/scene/chart/PieChart$Data;->access$700(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    sget-object v20, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v17 .. v20}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v16, v14, v15

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x1

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    .line 509
    invoke-static/range {v18 .. v18}, Ljavafx/scene/chart/PieChart$Data;->access$1200(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v9, v7, v8

    .line 485
    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 511
    move-object v5, v4

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/chart/PieChart;
    return-object v1
.end method

.method private createPieLabel(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v3

    move-object v2, v3

    .line 403
    .local v2, "text":Ljavafx/scene/text/Text;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/PieChart$Data;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 404
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method private dataItemAdded(Ljavafx/scene/chart/PieChart$Data;I)V
    .locals 24

    .prologue
    .line 421
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object/from16 v1, p1

    .local v1, "item":Ljavafx/scene/chart/PieChart$Data;
    move/from16 v2, p2

    .local v2, "index":I
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/scene/chart/PieChart;->createArcRegion(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v3, v7

    .line 422
    .local v3, "shape":Ljavafx/scene/Node;
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/scene/chart/PieChart;->createPieLabel(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v7

    move-object v4, v7

    .line 423
    .local v4, "text":Ljavafx/scene/text/Text;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart$Data;->getChart()Ljavafx/scene/chart/PieChart;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 424
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart;->shouldAnimate()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 427
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/PieChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/PieChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v7}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v7

    sget-object v8, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    invoke-virtual {v7, v8}, Ljavafx/animation/Animation$Status;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 428
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/PieChart;->dataItemBeingRemoved:Ljavafx/scene/chart/PieChart$Data;

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 429
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/PieChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v7}, Ljavafx/animation/Timeline;->stop()V

    .line 430
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/scene/chart/PieChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    .line 431
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 432
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 433
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/scene/chart/PieChart;->removeDataItemRef(Ljavafx/scene/chart/PieChart$Data;)V

    .line 436
    :cond_0
    move-object v7, v0

    const/4 v8, 0x2

    new-array v8, v8, [Ljavafx/animation/KeyFrame;

    move-object/from16 v23, v8

    move-object/from16 v8, v23

    move-object/from16 v9, v23

    const/4 v10, 0x0

    new-instance v11, Ljavafx/animation/KeyFrame;

    move-object/from16 v23, v11

    move-object/from16 v11, v23

    move-object/from16 v12, v23

    sget-object v13, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v14, 0x2

    new-array v14, v14, [Ljavafx/animation/KeyValue;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    new-instance v17, Ljavafx/animation/KeyValue;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    .line 438
    invoke-static/range {v19 .. v19}, Ljavafx/scene/chart/PieChart$Data;->access$700(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v19

    move-object/from16 v20, v1

    invoke-static/range {v20 .. v20}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v17, v15, v16

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x1

    new-instance v17, Ljavafx/animation/KeyValue;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    .line 439
    invoke-static/range {v19 .. v19}, Ljavafx/scene/chart/PieChart$Data;->access$1200(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v19

    move-object/from16 v20, v1

    invoke-static/range {v20 .. v20}, Ljavafx/scene/chart/PieChart$Data;->access$1300(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v17, v15, v16

    invoke-direct {v12, v13, v14}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v11, v9, v10

    move-object/from16 v23, v8

    move-object/from16 v8, v23

    move-object/from16 v9, v23

    const/4 v10, 0x1

    new-instance v11, Ljavafx/animation/KeyFrame;

    move-object/from16 v23, v11

    move-object/from16 v11, v23

    move-object/from16 v12, v23

    const-wide v13, 0x407f400000000000L    # 500.0

    .line 440
    invoke-static {v13, v14}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v13

    move-object v14, v0

    move-object v15, v4

    move-object/from16 v16, v1

    invoke-static/range {v14 .. v16}, Ljavafx/scene/chart/PieChart$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/PieChart;Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/event/EventHandler;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljavafx/animation/KeyValue;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    const/16 v17, 0x0

    new-instance v18, Ljavafx/animation/KeyValue;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v1

    .line 451
    invoke-static/range {v20 .. v20}, Ljavafx/scene/chart/PieChart$Data;->access$700(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v20

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/chart/PieChart$Data;->getPieValue()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    sget-object v22, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v19 .. v22}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v18, v16, v17

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    const/16 v17, 0x1

    new-instance v18, Ljavafx/animation/KeyValue;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v1

    .line 452
    invoke-static/range {v20 .. v20}, Ljavafx/scene/chart/PieChart$Data;->access$1200(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    sget-object v22, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v19 .. v22}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v18, v16, v17

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v11, v9, v10

    .line 436
    invoke-virtual {v7, v8}, Ljavafx/scene/chart/PieChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 462
    :goto_0
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 463
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v6, v7

    .line 464
    .local v6, "n":Ljavafx/scene/Node;
    move-object v7, v6

    instance-of v7, v7, Ljavafx/scene/text/Text;

    if-eqz v7, :cond_1

    .line 465
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/Node;->toFront()V

    .line 462
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 455
    .end local v5    # "i":I
    .end local v6    # "n":Ljavafx/scene/Node;
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 456
    move-object v7, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8, v9}, Ljavafx/scene/chart/PieChart$Data;->access$1400(Ljavafx/scene/chart/PieChart$Data;D)V

    .line 457
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/PieChart$Data;->getPieValue()D

    move-result-wide v8

    invoke-static {v7, v8, v9}, Ljavafx/scene/chart/PieChart$Data;->access$900(Ljavafx/scene/chart/PieChart$Data;D)V

    goto :goto_0

    .line 468
    .restart local v5    # "i":I
    :cond_3
    return-void
.end method

.method private dataItemRemoved(Ljavafx/scene/chart/PieChart$Data;)V
    .locals 6

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/PieChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 516
    .local v2, "shape":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/PieChart;->shouldAnimate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/chart/PieChart;->createDataRemoveTimeline(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/animation/Timeline;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/chart/PieChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    .line 518
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/PieChart;->dataItemBeingRemoved:Ljavafx/scene/chart/PieChart$Data;

    .line 519
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/PieChart;->animate(Ljavafx/animation/Animation;)V

    .line 528
    :goto_0
    return-void

    .line 521
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->colorBits:Ljava/util/BitSet;

    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/chart/PieChart$Data;->access$1100(Ljavafx/scene/chart/PieChart$Data;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->clear(I)V

    .line 522
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 523
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 525
    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/chart/PieChart$Data;->access$1600(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart;)V

    .line 526
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/chart/PieChart;->removeDataItemRef(Ljavafx/scene/chart/PieChart$Data;)V

    goto :goto_0
.end method

.method private dataNameChanged(Ljavafx/scene/chart/PieChart$Data;)V
    .locals 4

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/PieChart$Data;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 371
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/PieChart;->requestChartLayout()V

    .line 372
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/chart/PieChart;->updateLegend()V

    .line 373
    return-void
.end method

.method private dataPieValueChanged(Ljavafx/scene/chart/PieChart$Data;)V
    .locals 19

    .prologue
    .line 376
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/PieChart;
    move-object/from16 v2, p1

    .local v2, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/PieChart;->shouldAnimate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/animation/KeyFrame;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x0

    new-instance v7, Ljavafx/animation/KeyFrame;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    sget-object v9, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/animation/KeyValue;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const/4 v12, 0x0

    new-instance v13, Ljavafx/animation/KeyValue;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v2

    .line 378
    invoke-static {v15}, Ljavafx/scene/chart/PieChart$Data;->access$700(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v15

    move-object/from16 v16, v2

    .line 379
    invoke-static/range {v16 .. v16}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v13, v11, v12

    invoke-direct {v8, v9, v10}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v7, v5, v6

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x1

    new-instance v7, Ljavafx/animation/KeyFrame;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    const-wide v9, 0x407f400000000000L    # 500.0

    .line 380
    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/animation/KeyValue;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const/4 v12, 0x0

    new-instance v13, Ljavafx/animation/KeyValue;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v2

    invoke-static {v15}, Ljavafx/scene/chart/PieChart$Data;->access$700(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v15

    move-object/from16 v16, v2

    .line 381
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/PieChart$Data;->getPieValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    sget-object v17, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v14 .. v17}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v13, v11, v12

    invoke-direct {v8, v9, v10}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v7, v5, v6

    .line 377
    invoke-virtual {v3, v4}, Ljavafx/scene/chart/PieChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/chart/PieChart$Data;->getPieValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Ljavafx/scene/chart/PieChart$Data;->access$900(Ljavafx/scene/chart/PieChart$Data;D)V

    .line 385
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/PieChart;->requestChartLayout()V

    goto :goto_0
.end method

.method private drawLabelLinePath(Ljavafx/scene/chart/PieChart$LabelLayoutInfo;)V
    .locals 19

    .prologue
    .line 729
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/PieChart;
    move-object/from16 v2, p1

    .local v2, "info":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    move-object v3, v2

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    move-object v4, v2

    iget-wide v4, v4, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textX:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 730
    move-object v3, v2

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    move-object v4, v2

    iget-wide v4, v4, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textY:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/text/Text;->setLayoutY(D)V

    .line 731
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    move-object v6, v2

    iget-wide v6, v6, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->startX:D

    move-object v8, v2

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->startY:D

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 732
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Ljavafx/scene/shape/LineTo;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    move-object v6, v2

    iget-wide v6, v6, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endX:D

    move-object v8, v2

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endY:D

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 734
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    move-object v6, v2

    iget-wide v6, v6, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endX:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double/2addr v6, v8

    move-object v8, v2

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endY:D

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 735
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Ljavafx/scene/shape/ArcTo;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide v10, 0x4056800000000000L    # 90.0

    move-object v12, v2

    iget-wide v12, v12, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endX:D

    move-object v14, v2

    iget-wide v14, v14, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endY:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    sub-double v14, v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v5 .. v17}, Ljavafx/scene/shape/ArcTo;-><init>(DDDDDZZ)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 737
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Ljavafx/scene/shape/ArcTo;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide v10, 0x4056800000000000L    # 90.0

    move-object v12, v2

    iget-wide v12, v12, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endX:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-double/2addr v12, v14

    move-object v14, v2

    iget-wide v14, v14, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endY:D

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v5 .. v17}, Ljavafx/scene/shape/ArcTo;-><init>(DDDDDZZ)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 739
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Ljavafx/scene/shape/ArcTo;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide v10, 0x4056800000000000L    # 90.0

    move-object v12, v2

    iget-wide v12, v12, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endX:D

    move-object v14, v2

    iget-wide v14, v14, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endY:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    add-double v14, v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v5 .. v17}, Ljavafx/scene/shape/ArcTo;-><init>(DDDDDZZ)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 741
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Ljavafx/scene/shape/ArcTo;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide v10, 0x4056800000000000L    # 90.0

    move-object v12, v2

    iget-wide v12, v12, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endX:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    sub-double/2addr v12, v14

    move-object v14, v2

    iget-wide v14, v14, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endY:D

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v5 .. v17}, Ljavafx/scene/shape/ArcTo;-><init>(DDDDDZZ)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 743
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Ljavafx/scene/shape/ClosePath;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    invoke-direct {v5}, Ljavafx/scene/shape/ClosePath;-><init>()V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 744
    return-void
.end method

.method private fuzzyCompare(DD)I
    .locals 13

    .prologue
    .line 716
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/PieChart;
    move-wide v2, p1

    .local v2, "o1":D
    move-wide/from16 v4, p3

    .local v4, "o2":D
    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    move-wide v6, v8

    .line 717
    .local v6, "fuzz":D
    move-wide v8, v2

    move-wide v10, v4

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-wide v10, v6

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    move v1, v8

    .end local v1    # "this":Ljavafx/scene/chart/PieChart;
    return v1

    .restart local v1    # "this":Ljavafx/scene/chart/PieChart;
    :cond_0
    move-wide v8, v2

    move-wide v10, v4

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    const/4 v8, -0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private fuzzyGT(DD)Z
    .locals 11

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-wide v1, p1

    .local v1, "o1":D
    move-wide v3, p3

    .local v3, "o2":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/PieChart;->fuzzyCompare(DD)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return v0

    .restart local v0    # "this":Ljavafx/scene/chart/PieChart;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private fuzzyLT(DD)Z
    .locals 11

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-wide v1, p1

    .local v1, "o1":D
    move-wide v3, p3

    .local v3, "o2":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/PieChart;->fuzzyCompare(DD)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return v0

    .restart local v0    # "this":Ljavafx/scene/chart/PieChart;
    :cond_0
    const/4 v5, 0x0

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
    .line 1099
    # getter for: Ljavafx/scene/chart/PieChart$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/PieChart$StyleableProperties;->access$2300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getDataSize()I
    .locals 4

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    const/4 v3, 0x0

    move v1, v3

    .line 772
    .local v1, "count":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object v2, v3

    .local v2, "d":Ljavafx/scene/chart/PieChart$Data;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 773
    add-int/lit8 v1, v1, 0x1

    .line 772
    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 775
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return v0
.end method

.method private synthetic lambda$createDataRemoveTimeline$576(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 11

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v2, p2

    .local v2, "shape":Ljavafx/scene/Node;
    move-object v3, p3

    .local v3, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/PieChart;->colorBits:Ljava/util/BitSet;

    move-object v6, v1

    invoke-static {v6}, Ljavafx/scene/chart/PieChart$Data;->access$1100(Ljavafx/scene/chart/PieChart$Data;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->clear(I)V

    .line 492
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 494
    new-instance v5, Ljavafx/animation/FadeTransition;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-wide v7, 0x4062c00000000000L    # 150.0

    invoke-static {v7, v8}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v4, v5

    .line 495
    .local v4, "ft":Ljavafx/animation/FadeTransition;
    move-object v5, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 496
    move-object v5, v4

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 497
    move-object v5, v4

    new-instance v6, Ljavafx/scene/chart/PieChart$7;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Ljavafx/scene/chart/PieChart$7;-><init>(Ljavafx/scene/chart/PieChart;Ljavafx/scene/chart/PieChart$Data;)V

    invoke-virtual {v5, v6}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 506
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/FadeTransition;->play()V

    .line 507
    return-void
.end method

.method private synthetic lambda$dataItemAdded$575(Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 10

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "text":Ljavafx/scene/text/Text;
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v3, p3

    .local v3, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/text/Text;->setOpacity(D)V

    .line 445
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/chart/PieChart$Data;->getChart()Ljavafx/scene/chart/PieChart;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v2

    move-object v6, v0

    invoke-static {v5, v6}, Ljavafx/scene/chart/PieChart$Data;->access$1600(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart;)V

    .line 446
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/chart/PieChart$Data;->getChart()Ljavafx/scene/chart/PieChart;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 447
    new-instance v5, Ljavafx/animation/FadeTransition;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-wide v7, 0x4062c00000000000L    # 150.0

    invoke-static {v7, v8}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v7

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v4, v5

    .line 448
    .local v4, "ft":Ljavafx/animation/FadeTransition;
    move-object v5, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 449
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/FadeTransition;->play()V

    .line 450
    return-void
.end method

.method private synthetic lambda$new$574(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 118
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 119
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object v2, v6

    .line 120
    .local v2, "ptr":Ljavafx/scene/chart/PieChart$Data;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 121
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/chart/PieChart$Data;

    move-object v4, v6

    .line 122
    .local v4, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v6, v0

    move-object v7, v4

    move v8, v3

    invoke-direct {v6, v7, v8}, Ljavafx/scene/chart/PieChart;->updateDataItemStyleClass(Ljavafx/scene/chart/PieChart$Data;I)V

    .line 123
    move v6, v3

    if-nez v6, :cond_1

    .line 124
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    .line 125
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object v2, v6

    .line 126
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljavafx/scene/chart/PieChart$Data;->access$1502(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v6

    .line 120
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    :cond_1
    move-object v6, v2

    move-object v7, v4

    invoke-static {v6, v7}, Ljavafx/scene/chart/PieChart$Data;->access$1502(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v6

    .line 129
    move-object v6, v4

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljavafx/scene/chart/PieChart$Data;->access$1502(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v6

    .line 130
    move-object v6, v4

    move-object v2, v6

    goto :goto_2

    .line 134
    .end local v4    # "item":Ljavafx/scene/chart/PieChart$Data;
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->isLegendVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/chart/PieChart;->updateLegend()V

    .line 137
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->requestChartLayout()V

    .line 138
    .line 186
    .end local v2    # "ptr":Ljavafx/scene/chart/PieChart$Data;
    .end local v3    # "i":I
    :goto_3
    return-void

    .line 141
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v6

    move v2, v6

    .local v2, "i":I
    :goto_4
    move v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 142
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/chart/PieChart$Data;

    move-object v3, v6

    .line 143
    .local v3, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v6, v3

    move-object v7, v0

    invoke-static {v6, v7}, Ljavafx/scene/chart/PieChart$Data;->access$1600(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart;)V

    .line 144
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    if-nez v6, :cond_5

    .line 145
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    .line 146
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljavafx/scene/chart/PieChart$Data;->access$1502(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v6

    .line 141
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 148
    :cond_5
    move v6, v2

    if-nez v6, :cond_6

    .line 149
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    invoke-static {v6, v7}, Ljavafx/scene/chart/PieChart$Data;->access$1502(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v6

    .line 150
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    goto :goto_5

    .line 152
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object v4, v6

    .line 153
    .local v4, "ptr":Ljavafx/scene/chart/PieChart$Data;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "j":I
    :goto_6
    move v6, v5

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_7

    .line 154
    move-object v6, v4

    invoke-static {v6}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v6

    move-object v4, v6

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 156
    :cond_7
    move-object v6, v3

    move-object v7, v4

    invoke-static {v7}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v7

    invoke-static {v6, v7}, Ljavafx/scene/chart/PieChart$Data;->access$1502(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v6

    .line 157
    move-object v6, v4

    move-object v7, v3

    invoke-static {v6, v7}, Ljavafx/scene/chart/PieChart$Data;->access$1502(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v6

    goto :goto_5

    .line 162
    .end local v3    # "item":Ljavafx/scene/chart/PieChart$Data;
    .end local v4    # "ptr":Ljavafx/scene/chart/PieChart$Data;
    .end local v5    # "j":I
    :cond_8
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    .end local v2    # "i":I
    :goto_7
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/chart/PieChart$Data;

    move-object v3, v6

    .line 163
    .restart local v3    # "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Ljavafx/scene/chart/PieChart;->dataItemRemoved(Ljavafx/scene/chart/PieChart$Data;)V

    .line 164
    goto :goto_7

    .line 165
    .end local v3    # "item":Ljavafx/scene/chart/PieChart$Data;
    :cond_9
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v6

    move v2, v6

    .restart local v2    # "i":I
    :goto_8
    move v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 166
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/chart/PieChart$Data;

    move-object v3, v6

    .line 169
    .restart local v3    # "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/PieChart;->colorBits:Ljava/util/BitSet;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v7

    invoke-static {v6, v7}, Ljavafx/scene/chart/PieChart$Data;->access$1102(Ljavafx/scene/chart/PieChart$Data;I)I

    move-result v6

    .line 170
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart;->colorBits:Ljava/util/BitSet;

    move-object v7, v3

    invoke-static {v7}, Ljavafx/scene/chart/PieChart$Data;->access$1100(Ljavafx/scene/chart/PieChart$Data;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 171
    move-object v6, v0

    move-object v7, v3

    move v8, v2

    invoke-direct {v6, v7, v8}, Ljavafx/scene/chart/PieChart;->dataItemAdded(Ljavafx/scene/chart/PieChart$Data;I)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 173
    .end local v3    # "item":Ljavafx/scene/chart/PieChart$Data;
    :cond_a
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v6

    if-nez v6, :cond_b

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    :cond_b
    const/4 v6, 0x0

    move v2, v6

    :goto_9
    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 175
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/chart/PieChart$Data;

    move-object v3, v6

    .line 176
    .restart local v3    # "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v6, v0

    move-object v7, v3

    move v8, v2

    invoke-direct {v6, v7, v8}, Ljavafx/scene/chart/PieChart;->updateDataItemStyleClass(Ljavafx/scene/chart/PieChart$Data;I)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 179
    .end local v3    # "item":Ljavafx/scene/chart/PieChart$Data;
    :cond_c
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->isLegendVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/chart/PieChart;->updateLegend()V

    goto/16 :goto_0

    .line 185
    .end local v2    # "i":I
    :cond_d
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->requestChartLayout()V

    .line 186
    goto/16 :goto_3
.end method

.method private static normalizeAngle(D)D
    .locals 8

    .prologue
    .line 788
    move-wide v0, p0

    .local v0, "angle":D
    move-wide v4, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double/2addr v4, v6

    move-wide v2, v4

    .line 789
    .local v2, "a":D
    move-wide v4, v2

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    move-wide v4, v2

    const-wide v6, 0x4076800000000000L    # 360.0

    add-double/2addr v4, v6

    move-wide v2, v4

    .line 790
    :cond_0
    move-wide v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    move-wide v4, v2

    const-wide v6, 0x4076800000000000L    # 360.0

    sub-double/2addr v4, v6

    move-wide v2, v4

    .line 791
    :cond_1
    move-wide v4, v2

    move-wide v0, v4

    .end local v0    # "angle":D
    return-wide v0
.end method

.method private removeDataItemRef(Ljavafx/scene/chart/PieChart$Data;)V
    .locals 5

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/PieChart$Data;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 472
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object v2, v3

    .line 475
    .local v2, "ptr":Ljavafx/scene/chart/PieChart$Data;
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v3

    move-object v4, v1

    if-eq v3, v4, :cond_2

    .line 476
    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 478
    :cond_2
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/scene/chart/PieChart$Data;->access$1502(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v3

    goto :goto_0
.end method

.method private resolveCollision(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/chart/PieChart$LabelLayoutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/PieChart$LabelLayoutInfo;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    invoke-static {v7}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v7

    double-to-int v7, v7

    :goto_0
    move v2, v7

    .line 695
    .local v2, "boxH":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    const/4 v7, 0x1

    move v4, v7

    .local v4, "j":I
    :goto_1
    move-object v7, v1

    if-eqz v7, :cond_6

    move v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 696
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;

    move-object v5, v7

    .line 697
    .local v5, "box1":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;

    move-object v6, v7

    .line 698
    .local v6, "box2":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    move-object v7, v5

    iget-object v7, v7, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v6

    iget-object v7, v7, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    invoke-virtual {v7}, Ljavafx/scene/text/Text;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    move-object v8, v6

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textY:D

    move-object v10, v5

    iget-wide v10, v10, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textY:D

    .line 699
    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/PieChart;->fuzzyGT(DD)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    move-object v8, v6

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textY:D

    move v10, v2

    int-to-double v10, v10

    sub-double/2addr v8, v10

    move-object v10, v5

    iget-wide v10, v10, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textY:D

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/PieChart;->fuzzyLT(DD)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 700
    :cond_0
    move-object v7, v0

    move-object v8, v5

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textX:D

    move-object v10, v6

    iget-wide v10, v10, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textX:D

    .line 701
    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/PieChart;->fuzzyGT(DD)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    move-object v8, v5

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textX:D

    move-object v10, v6

    iget-wide v10, v10, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textX:D

    sub-double/2addr v8, v10

    move-object v10, v6

    iget-object v10, v10, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/text/Text;->prefWidth(D)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/PieChart;->fuzzyLT(DD)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 703
    :goto_2
    move-object v7, v0

    move-object v8, v5

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->size:D

    move-object v10, v6

    iget-wide v10, v10, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->size:D

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/PieChart;->fuzzyLT(DD)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 704
    move-object v7, v5

    iget-object v7, v7, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 705
    move v7, v4

    move v3, v7

    .line 695
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 693
    .end local v2    # "boxH":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "box1":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    .end local v6    # "box2":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 699
    .restart local v2    # "boxH":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "box1":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    .restart local v6    # "box2":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    :cond_2
    move-object v7, v0

    move-object v8, v5

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textY:D

    move v10, v2

    int-to-double v10, v10

    sub-double/2addr v8, v10

    move-object v10, v6

    iget-wide v10, v10, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textY:D

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 700
    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/PieChart;->fuzzyLT(DD)Z

    move-result v7

    if-nez v7, :cond_0

    .line 710
    :cond_3
    move v7, v4

    move v3, v7

    goto :goto_3

    .line 701
    :cond_4
    move-object v7, v0

    move-object v8, v6

    iget-wide v8, v8, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textX:D

    move-object v10, v5

    iget-wide v10, v10, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textX:D

    sub-double/2addr v8, v10

    move-object v10, v5

    iget-object v10, v10, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 702
    invoke-virtual {v10, v11, v12}, Ljavafx/scene/text/Text;->prefWidth(D)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/PieChart;->fuzzyLT(DD)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 707
    :cond_5
    move-object v7, v6

    iget-object v7, v7, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/text/Text;->setVisible(Z)V

    goto :goto_3

    .line 713
    .end local v5    # "box1":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    .end local v6    # "box2":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    :cond_6
    return-void
.end method

.method private updateDataItemStyleClass(Ljavafx/scene/chart/PieChart$Data;I)V
    .locals 12

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/PieChart$Data;
    move v2, p2

    .local v2, "index":I
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/PieChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v4

    move-object v3, v4

    .line 409
    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 411
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    const-string v8, "chart-pie"

    aput-object v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "default-color"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    .line 412
    invoke-static {v9}, Ljavafx/scene/chart/PieChart$Data;->access$1100(Ljavafx/scene/chart/PieChart$Data;)I

    move-result v9

    const/16 v10, 0x8

    rem-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 411
    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 413
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/PieChart$Data;->getPieValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 414
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "negative"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 417
    :cond_0
    return-void
.end method

.method private updateLegend()V
    .locals 9

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/PieChart;->getLegend()Ljavafx/scene/Node;

    move-result-object v5

    move-object v1, v5

    .line 750
    .local v1, "legendNode":Ljavafx/scene/Node;
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart;->legend:Lcom/sun/javafx/charts/Legend;

    if-eq v5, v6, :cond_0

    .line 768
    :goto_0
    return-void

    .line 751
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/PieChart;->legend:Lcom/sun/javafx/charts/Legend;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->getLegendSide()Ljavafx/geometry/Side;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    invoke-virtual {v6, v7}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart;->getLegendSide()Ljavafx/geometry/Side;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    invoke-virtual {v6, v7}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Lcom/sun/javafx/charts/Legend;->setVertical(Z)V

    .line 752
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/PieChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 753
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/PieChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 754
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/PieChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

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

    check-cast v5, Ljavafx/scene/chart/PieChart$Data;

    move-object v3, v5

    .line 755
    .local v3, "item":Ljavafx/scene/chart/PieChart$Data;
    new-instance v5, Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/chart/PieChart$Data;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/charts/Legend$LegendItem;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 756
    .local v4, "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 757
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "pie-legend-symbol"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 758
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/PieChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 759
    goto :goto_2

    .line 751
    .end local v3    # "item":Ljavafx/scene/chart/PieChart$Data;
    .end local v4    # "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 761
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/PieChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 762
    move-object v5, v1

    if-nez v5, :cond_4

    .line 763
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/PieChart;->setLegend(Ljavafx/scene/Node;)V

    .line 768
    :cond_4
    :goto_3
    goto/16 :goto_0

    .line 766
    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/PieChart;->setLegend(Ljavafx/scene/Node;)V

    goto :goto_3
.end method


# virtual methods
.method public final clockwiseProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->clockwise:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method public final dataProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/PieChart$Data;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->data:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
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
    .line 1108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    invoke-static {}, Ljavafx/scene/chart/PieChart;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method public final getData()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/PieChart$Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->data:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method public final getLabelLineLength()D
    .locals 3

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->labelLineLength:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-wide v0
.end method

.method public final getLabelsVisible()Z
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->labelsVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return v0
.end method

.method public final getStartAngle()D
    .locals 3

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->startAngle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-wide v0
.end method

.method public final isClockwise()Z
    .locals 2

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->clockwise:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return v0
.end method

.method public final labelLineLengthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->labelLineLength:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method public final labelsVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->labelsVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method

.method protected layoutChartChildren(DDDD)V
    .locals 61

    .prologue
    .line 532
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/scene/chart/PieChart;
    move-wide/from16 v5, p1

    .local v5, "top":D
    move-wide/from16 v7, p3

    .local v7, "left":D
    move-wide/from16 v9, p5

    .local v9, "contentWidth":D
    move-wide/from16 v11, p7

    .local v11, "contentHeight":D
    move-object/from16 v42, v4

    move-wide/from16 v43, v9

    const-wide/high16 v45, 0x4000000000000000L    # 2.0

    div-double v43, v43, v45

    move-wide/from16 v45, v7

    add-double v43, v43, v45

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart;->centerX:D

    .line 533
    move-object/from16 v42, v4

    move-wide/from16 v43, v11

    const-wide/high16 v45, 0x4000000000000000L    # 2.0

    div-double v43, v43, v45

    move-wide/from16 v45, v5

    add-double v43, v43, v45

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart;->centerY:D

    .line 534
    const-wide/16 v42, 0x0

    move-wide/from16 v13, v42

    .line 535
    .local v13, "total":D
    move-object/from16 v42, v4

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object/from16 v42, v0

    move-object/from16 v15, v42

    .local v15, "item":Ljavafx/scene/chart/PieChart$Data;
    :goto_0
    move-object/from16 v42, v15

    if-eqz v42, :cond_0

    .line 536
    move-wide/from16 v42, v13

    move-object/from16 v44, v15

    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    add-double v42, v42, v44

    move-wide/from16 v13, v42

    .line 535
    move-object/from16 v42, v15

    invoke-static/range {v42 .. v42}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v42

    move-object/from16 v15, v42

    goto :goto_0

    .line 538
    :cond_0
    move-wide/from16 v42, v13

    const-wide/16 v44, 0x0

    cmpl-double v42, v42, v44

    if-eqz v42, :cond_1

    const-wide v42, 0x4076800000000000L    # 360.0

    move-wide/from16 v44, v13

    div-double v42, v42, v44

    :goto_1
    move-wide/from16 v15, v42

    .line 540
    .local v15, "scale":D
    move-object/from16 v42, v4

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/chart/PieChart;->labelLinePath:Ljavafx/scene/shape/Path;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljavafx/collections/ObservableList;->clear()V

    .line 542
    const/16 v42, 0x0

    move-object/from16 v17, v42

    .line 543
    .local v17, "labelsX":[D
    const/16 v42, 0x0

    move-object/from16 v18, v42

    .line 544
    .local v18, "labelsY":[D
    const/16 v42, 0x0

    move-object/from16 v19, v42

    .line 545
    .local v19, "labelAngles":[D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v42

    .line 546
    .local v20, "labelScale":D
    const/16 v42, 0x0

    move-object/from16 v22, v42

    .line 547
    .local v22, "fullPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/PieChart$LabelLayoutInfo;>;"
    move-object/from16 v42, v4

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->getLabelsVisible()Z

    move-result v42

    move/from16 v23, v42

    .line 548
    .local v23, "shouldShowLabels":Z
    move-object/from16 v42, v4

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->getLabelsVisible()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 550
    const-wide/16 v42, 0x0

    move-wide/from16 v24, v42

    .line 551
    .local v24, "xPad":D
    const-wide/16 v42, 0x0

    move-wide/from16 v26, v42

    .line 553
    .local v26, "yPad":D
    move-object/from16 v42, v4

    invoke-direct/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->getDataSize()I

    move-result v42

    move/from16 v0, v42

    new-array v0, v0, [D

    move-object/from16 v42, v0

    move-object/from16 v17, v42

    .line 554
    move-object/from16 v42, v4

    invoke-direct/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->getDataSize()I

    move-result v42

    move/from16 v0, v42

    new-array v0, v0, [D

    move-object/from16 v42, v0

    move-object/from16 v18, v42

    .line 555
    move-object/from16 v42, v4

    invoke-direct/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->getDataSize()I

    move-result v42

    move/from16 v0, v42

    new-array v0, v0, [D

    move-object/from16 v42, v0

    move-object/from16 v19, v42

    .line 556
    new-instance v42, Ljava/util/ArrayList;

    move-object/from16 v59, v42

    move-object/from16 v42, v59

    move-object/from16 v43, v59

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v42

    .line 557
    const/16 v42, 0x0

    move/from16 v28, v42

    .line 558
    .local v28, "index":I
    move-object/from16 v42, v4

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->getStartAngle()D

    move-result-wide v42

    move-wide/from16 v29, v42

    .line 559
    .local v29, "start":D
    move-object/from16 v42, v4

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object/from16 v42, v0

    move-object/from16 v31, v42

    .local v31, "item":Ljavafx/scene/chart/PieChart$Data;
    :goto_2
    move-object/from16 v42, v31

    if-eqz v42, :cond_4

    .line 561
    move-object/from16 v42, v31

    invoke-static/range {v42 .. v42}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/text/Text;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljavafx/collections/ObservableList;->clear()V

    .line 563
    move-object/from16 v42, v4

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->isClockwise()Z

    move-result v42

    if-eqz v42, :cond_2

    move-wide/from16 v42, v15

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v44, v31

    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    mul-double v42, v42, v44

    :goto_3
    move-wide/from16 v32, v42

    .line 564
    .local v32, "size":D
    move-object/from16 v42, v19

    move/from16 v43, v28

    move-wide/from16 v44, v29

    move-wide/from16 v46, v32

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    div-double v46, v46, v48

    add-double v44, v44, v46

    invoke-static/range {v44 .. v45}, Ljavafx/scene/chart/PieChart;->normalizeAngle(D)D

    move-result-wide v44

    aput-wide v44, v42, v43

    .line 565
    move-object/from16 v42, v19

    move/from16 v43, v28

    aget-wide v42, v42, v43

    move-object/from16 v44, v4

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/chart/PieChart;->getLabelLineLength()D

    move-result-wide v44

    const-wide/16 v46, 0x0

    invoke-static/range {v42 .. v47}, Ljavafx/scene/chart/PieChart;->calcX(DDD)D

    move-result-wide v42

    move-wide/from16 v34, v42

    .line 566
    .local v34, "sproutX":D
    move-object/from16 v42, v19

    move/from16 v43, v28

    aget-wide v42, v42, v43

    move-object/from16 v44, v4

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/chart/PieChart;->getLabelLineLength()D

    move-result-wide v44

    const-wide/16 v46, 0x0

    invoke-static/range {v42 .. v47}, Ljavafx/scene/chart/PieChart;->calcY(DDD)D

    move-result-wide v42

    move-wide/from16 v36, v42

    .line 567
    .local v36, "sproutY":D
    move-object/from16 v42, v17

    move/from16 v43, v28

    move-wide/from16 v44, v34

    aput-wide v44, v42, v43

    .line 568
    move-object/from16 v42, v18

    move/from16 v43, v28

    move-wide/from16 v44, v36

    aput-wide v44, v42, v43

    .line 569
    move-wide/from16 v42, v24

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    move-object/from16 v46, v31

    invoke-static/range {v46 .. v46}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v46

    const-wide/high16 v48, 0x4018000000000000L    # 6.0

    add-double v46, v46, v48

    move-wide/from16 v48, v34

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->abs(D)D

    move-result-wide v48

    add-double v46, v46, v48

    mul-double v44, v44, v46

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->max(DD)D

    move-result-wide v42

    move-wide/from16 v24, v42

    .line 570
    move-wide/from16 v42, v36

    const-wide/16 v44, 0x0

    cmpl-double v42, v42, v44

    if-lez v42, :cond_3

    .line 571
    move-wide/from16 v42, v26

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    move-wide/from16 v46, v36

    move-object/from16 v48, v31

    invoke-static/range {v48 .. v48}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v48

    add-double v46, v46, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->abs(D)D

    move-result-wide v46

    mul-double v44, v44, v46

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->max(DD)D

    move-result-wide v42

    move-wide/from16 v26, v42

    .line 575
    :goto_4
    move-wide/from16 v42, v29

    move-wide/from16 v44, v32

    add-double v42, v42, v44

    move-wide/from16 v29, v42

    .line 576
    add-int/lit8 v28, v28, 0x1

    .line 559
    move-object/from16 v42, v31

    invoke-static/range {v42 .. v42}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v42

    move-object/from16 v31, v42

    goto/16 :goto_2

    .line 538
    .end local v17    # "labelsX":[D
    .end local v18    # "labelsY":[D
    .end local v19    # "labelAngles":[D
    .end local v20    # "labelScale":D
    .end local v22    # "fullPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/PieChart$LabelLayoutInfo;>;"
    .end local v23    # "shouldShowLabels":Z
    .end local v24    # "xPad":D
    .end local v26    # "yPad":D
    .end local v28    # "index":I
    .end local v29    # "start":D
    .end local v31    # "item":Ljavafx/scene/chart/PieChart$Data;
    .end local v32    # "size":D
    .end local v34    # "sproutX":D
    .end local v36    # "sproutY":D
    .local v15, "item":Ljavafx/scene/chart/PieChart$Data;
    :cond_1
    const-wide/16 v42, 0x0

    goto/16 :goto_1

    .line 563
    .local v15, "scale":D
    .restart local v17    # "labelsX":[D
    .restart local v18    # "labelsY":[D
    .restart local v19    # "labelAngles":[D
    .restart local v20    # "labelScale":D
    .restart local v22    # "fullPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/PieChart$LabelLayoutInfo;>;"
    .restart local v23    # "shouldShowLabels":Z
    .restart local v24    # "xPad":D
    .restart local v26    # "yPad":D
    .restart local v28    # "index":I
    .restart local v29    # "start":D
    .restart local v31    # "item":Ljavafx/scene/chart/PieChart$Data;
    :cond_2
    move-wide/from16 v42, v15

    move-object/from16 v44, v31

    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    mul-double v42, v42, v44

    goto/16 :goto_3

    .line 573
    .restart local v32    # "size":D
    .restart local v34    # "sproutX":D
    .restart local v36    # "sproutY":D
    :cond_3
    move-wide/from16 v42, v26

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    move-wide/from16 v46, v36

    move-object/from16 v48, v31

    invoke-static/range {v48 .. v48}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v48

    add-double v46, v46, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->abs(D)D

    move-result-wide v46

    mul-double v44, v44, v46

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->max(DD)D

    move-result-wide v42

    move-wide/from16 v26, v42

    goto :goto_4

    .line 578
    .end local v32    # "size":D
    .end local v34    # "sproutX":D
    .end local v36    # "sproutY":D
    :cond_4
    move-object/from16 v42, v4

    move-wide/from16 v43, v9

    move-wide/from16 v45, v24

    sub-double v43, v43, v45

    move-wide/from16 v45, v11

    move-wide/from16 v47, v26

    sub-double v45, v45, v47

    invoke-static/range {v43 .. v46}, Ljava/lang/Math;->min(DD)D

    move-result-wide v43

    const-wide/high16 v45, 0x4000000000000000L    # 2.0

    div-double v43, v43, v45

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart;->pieRadius:D

    .line 580
    move-object/from16 v42, v4

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/PieChart;->pieRadius:D

    move-wide/from16 v42, v0

    const-wide/high16 v44, 0x4039000000000000L    # 25.0

    cmpg-double v42, v42, v44

    if-gez v42, :cond_7

    .line 582
    move-wide/from16 v42, v9

    const-wide/high16 v44, 0x4039000000000000L    # 25.0

    sub-double v42, v42, v44

    const-wide/high16 v44, 0x4039000000000000L    # 25.0

    sub-double v42, v42, v44

    move-wide/from16 v31, v42

    .line 583
    .local v31, "roomX":D
    move-wide/from16 v42, v11

    const-wide/high16 v44, 0x4039000000000000L    # 25.0

    sub-double v42, v42, v44

    const-wide/high16 v44, 0x4039000000000000L    # 25.0

    sub-double v42, v42, v44

    move-wide/from16 v33, v42

    .line 584
    .local v33, "roomY":D
    move-wide/from16 v42, v31

    move-wide/from16 v44, v24

    div-double v42, v42, v44

    move-wide/from16 v44, v33

    move-wide/from16 v46, v26

    div-double v44, v44, v46

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->min(DD)D

    move-result-wide v42

    move-wide/from16 v20, v42

    .line 589
    move-object/from16 v42, v4

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object/from16 v42, v0

    if-nez v42, :cond_5

    move-wide/from16 v42, v20

    const-wide v44, 0x3fe6666666666666L    # 0.7

    cmpg-double v42, v42, v44

    if-ltz v42, :cond_6

    :cond_5
    move-object/from16 v42, v4

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/text/Text;->getFont()Ljavafx/scene/text/Font;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v42

    move-wide/from16 v44, v20

    mul-double v42, v42, v44

    const-wide/high16 v44, 0x4022000000000000L    # 9.0

    cmpg-double v42, v42, v44

    if-gez v42, :cond_b

    .line 590
    :cond_6
    const/16 v42, 0x0

    move/from16 v23, v42

    .line 591
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v42

    .line 604
    .end local v24    # "xPad":D
    .end local v26    # "yPad":D
    .end local v28    # "index":I
    .end local v29    # "start":D
    .end local v31    # "roomX":D
    .end local v33    # "roomY":D
    :cond_7
    move/from16 v42, v23

    if-nez v42, :cond_8

    .line 605
    move-object/from16 v42, v4

    move-wide/from16 v43, v9

    move-wide/from16 v45, v11

    invoke-static/range {v43 .. v46}, Ljava/lang/Math;->min(DD)D

    move-result-wide v43

    const-wide/high16 v45, 0x4000000000000000L    # 2.0

    div-double v43, v43, v45

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart;->pieRadius:D

    .line 608
    :cond_8
    move-object/from16 v42, v4

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljavafx/collections/ObservableList;->size()I

    move-result v42

    if-lez v42, :cond_16

    .line 609
    const/16 v42, 0x0

    move/from16 v24, v42

    .line 610
    .local v24, "index":I
    move-object/from16 v42, v4

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object/from16 v42, v0

    move-object/from16 v25, v42

    .local v25, "item":Ljavafx/scene/chart/PieChart$Data;
    :goto_5
    move-object/from16 v42, v25

    if-eqz v42, :cond_10

    .line 612
    move-object/from16 v42, v25

    invoke-static/range {v42 .. v42}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v42

    move/from16 v43, v23

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 613
    move/from16 v42, v23

    if-eqz v42, :cond_a

    .line 614
    move-object/from16 v42, v4

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->isClockwise()Z

    move-result v42

    if-eqz v42, :cond_c

    move-wide/from16 v42, v15

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v44, v25

    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    mul-double v42, v42, v44

    :goto_6
    move-wide/from16 v26, v42

    .line 615
    .local v26, "size":D
    move-object/from16 v42, v19

    move/from16 v43, v24

    aget-wide v42, v42, v43

    const-wide v44, -0x3fa9800000000000L    # -90.0

    cmpl-double v42, v42, v44

    if-lez v42, :cond_9

    move-object/from16 v42, v19

    move/from16 v43, v24

    aget-wide v42, v42, v43

    const-wide v44, 0x4056800000000000L    # 90.0

    cmpg-double v42, v42, v44

    if-ltz v42, :cond_d

    :cond_9
    const/16 v42, 0x1

    :goto_7
    move/from16 v28, v42

    .line 617
    .local v28, "isLeftSide":Z
    move-object/from16 v42, v19

    move/from16 v43, v24

    aget-wide v42, v42, v43

    move-object/from16 v44, v4

    move-object/from16 v0, v44

    iget-wide v0, v0, Ljavafx/scene/chart/PieChart;->pieRadius:D

    move-wide/from16 v44, v0

    move-object/from16 v46, v4

    move-object/from16 v0, v46

    iget-wide v0, v0, Ljavafx/scene/chart/PieChart;->centerX:D

    move-wide/from16 v46, v0

    invoke-static/range {v42 .. v47}, Ljavafx/scene/chart/PieChart;->calcX(DDD)D

    move-result-wide v42

    move-wide/from16 v29, v42

    .line 618
    .local v29, "sliceCenterEdgeX":D
    move-object/from16 v42, v19

    move/from16 v43, v24

    aget-wide v42, v42, v43

    move-object/from16 v44, v4

    move-object/from16 v0, v44

    iget-wide v0, v0, Ljavafx/scene/chart/PieChart;->pieRadius:D

    move-wide/from16 v44, v0

    move-object/from16 v46, v4

    move-object/from16 v0, v46

    iget-wide v0, v0, Ljavafx/scene/chart/PieChart;->centerY:D

    move-wide/from16 v46, v0

    invoke-static/range {v42 .. v47}, Ljavafx/scene/chart/PieChart;->calcY(DDD)D

    move-result-wide v42

    move-wide/from16 v31, v42

    .line 619
    .local v31, "sliceCenterEdgeY":D
    move/from16 v42, v28

    if-eqz v42, :cond_e

    move-object/from16 v42, v17

    move/from16 v43, v24

    aget-wide v42, v42, v43

    move-wide/from16 v44, v29

    add-double v42, v42, v44

    move-object/from16 v44, v25

    .line 620
    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v44

    sub-double v42, v42, v44

    const-wide/high16 v44, 0x4018000000000000L    # 6.0

    sub-double v42, v42, v44

    .line 621
    :goto_8
    move-wide/from16 v33, v42

    .line 622
    .local v33, "xval":D
    move-object/from16 v42, v18

    move/from16 v43, v24

    aget-wide v42, v42, v43

    move-wide/from16 v44, v31

    add-double v42, v42, v44

    move-object/from16 v44, v25

    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v44

    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    div-double v44, v44, v46

    sub-double v42, v42, v44

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    sub-double v42, v42, v44

    move-wide/from16 v35, v42

    .line 625
    .local v35, "yval":D
    move-wide/from16 v42, v29

    move-object/from16 v44, v17

    move/from16 v45, v24

    aget-wide v44, v44, v45

    add-double v42, v42, v44

    move-wide/from16 v37, v42

    .line 626
    .local v37, "lineEndX":D
    move-wide/from16 v42, v31

    move-object/from16 v44, v18

    move/from16 v45, v24

    aget-wide v44, v44, v45

    add-double v42, v42, v44

    move-wide/from16 v39, v42

    .line 627
    .local v39, "lineEndY":D
    new-instance v42, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;

    move-object/from16 v59, v42

    move-object/from16 v42, v59

    move-object/from16 v43, v59

    move-wide/from16 v44, v29

    move-wide/from16 v46, v31

    move-wide/from16 v48, v37

    move-wide/from16 v50, v39

    move-wide/from16 v52, v33

    move-wide/from16 v54, v35

    move-object/from16 v56, v25

    .line 628
    invoke-static/range {v56 .. v56}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v56

    move-wide/from16 v57, v26

    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->abs(D)D

    move-result-wide v57

    invoke-direct/range {v43 .. v58}, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;-><init>(DDDDDDLjavafx/scene/text/Text;D)V

    move-object/from16 v41, v42

    .line 629
    .local v41, "info":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    move-object/from16 v42, v22

    move-object/from16 v43, v41

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v42

    .line 632
    move-wide/from16 v42, v20

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    cmpg-double v42, v42, v44

    if-gez v42, :cond_a

    .line 633
    move-object/from16 v42, v25

    invoke-static/range {v42 .. v42}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/text/Text;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v42

    new-instance v43, Ljavafx/scene/transform/Scale;

    move-object/from16 v59, v43

    move-object/from16 v43, v59

    move-object/from16 v44, v59

    move-wide/from16 v45, v20

    move-wide/from16 v47, v20

    move/from16 v49, v28

    if-eqz v49, :cond_f

    move-object/from16 v49, v25

    .line 636
    invoke-static/range {v49 .. v49}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v49

    :goto_9
    const-wide/16 v51, 0x0

    invoke-direct/range {v44 .. v52}, Ljavafx/scene/transform/Scale;-><init>(DDDD)V

    .line 633
    invoke-interface/range {v42 .. v43}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v42

    .line 643
    .end local v26    # "size":D
    .end local v28    # "isLeftSide":Z
    .end local v29    # "sliceCenterEdgeX":D
    .end local v31    # "sliceCenterEdgeY":D
    .end local v33    # "xval":D
    .end local v35    # "yval":D
    .end local v37    # "lineEndX":D
    .end local v39    # "lineEndY":D
    .end local v41    # "info":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    :cond_a
    add-int/lit8 v24, v24, 0x1

    .line 610
    move-object/from16 v42, v25

    invoke-static/range {v42 .. v42}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v42

    move-object/from16 v25, v42

    goto/16 :goto_5

    .line 594
    .end local v25    # "item":Ljavafx/scene/chart/PieChart$Data;
    .local v24, "xPad":D
    .local v26, "yPad":D
    .local v28, "index":I
    .local v29, "start":D
    .local v31, "roomX":D
    .local v33, "roomY":D
    :cond_b
    move-object/from16 v42, v4

    const-wide/high16 v43, 0x4039000000000000L    # 25.0

    move-wide/from16 v0, v43

    move-object/from16 v2, v42

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart;->pieRadius:D

    .line 596
    const/16 v42, 0x0

    move/from16 v35, v42

    .local v35, "i":I
    :goto_a
    move/from16 v42, v35

    move-object/from16 v43, v17

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_7

    .line 597
    move-object/from16 v42, v17

    move/from16 v43, v35

    move-object/from16 v44, v17

    move/from16 v45, v35

    aget-wide v44, v44, v45

    move-wide/from16 v46, v20

    mul-double v44, v44, v46

    aput-wide v44, v42, v43

    .line 598
    move-object/from16 v42, v18

    move/from16 v43, v35

    move-object/from16 v44, v18

    move/from16 v45, v35

    aget-wide v44, v44, v45

    move-wide/from16 v46, v20

    mul-double v44, v44, v46

    aput-wide v44, v42, v43

    .line 596
    add-int/lit8 v35, v35, 0x1

    goto :goto_a

    .line 614
    .end local v26    # "yPad":D
    .end local v28    # "index":I
    .end local v29    # "start":D
    .end local v31    # "roomX":D
    .end local v33    # "roomY":D
    .end local v35    # "i":I
    .local v24, "index":I
    .restart local v25    # "item":Ljavafx/scene/chart/PieChart$Data;
    :cond_c
    move-wide/from16 v42, v15

    move-object/from16 v44, v25

    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    mul-double v42, v42, v44

    goto/16 :goto_6

    .line 615
    .local v26, "size":D
    :cond_d
    const/16 v42, 0x0

    goto/16 :goto_7

    .line 620
    .local v28, "isLeftSide":Z
    .local v29, "sliceCenterEdgeX":D
    .local v31, "sliceCenterEdgeY":D
    :cond_e
    move-object/from16 v42, v17

    move/from16 v43, v24

    aget-wide v42, v42, v43

    move-wide/from16 v44, v29

    add-double v42, v42, v44

    move-object/from16 v44, v25

    .line 621
    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v44

    sub-double v42, v42, v44

    const-wide/high16 v44, 0x4018000000000000L    # 6.0

    add-double v42, v42, v44

    goto/16 :goto_8

    .line 636
    .local v33, "xval":D
    .local v35, "yval":D
    .restart local v37    # "lineEndX":D
    .restart local v39    # "lineEndY":D
    .restart local v41    # "info":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    :cond_f
    const-wide/16 v49, 0x0

    goto/16 :goto_9

    .line 647
    .end local v26    # "size":D
    .end local v28    # "isLeftSide":Z
    .end local v29    # "sliceCenterEdgeX":D
    .end local v31    # "sliceCenterEdgeY":D
    .end local v33    # "xval":D
    .end local v35    # "yval":D
    .end local v37    # "lineEndX":D
    .end local v39    # "lineEndY":D
    .end local v41    # "info":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    :cond_10
    move-object/from16 v42, v4

    move-object/from16 v43, v22

    invoke-direct/range {v42 .. v43}, Ljavafx/scene/chart/PieChart;->resolveCollision(Ljava/util/ArrayList;)V

    .line 650
    move-object/from16 v42, v4

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->getStartAngle()D

    move-result-wide v42

    move-wide/from16 v25, v42

    .line 651
    .local v25, "sAngle":D
    move-object/from16 v42, v4

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/chart/PieChart;->begin:Ljavafx/scene/chart/PieChart$Data;

    move-object/from16 v42, v0

    move-object/from16 v27, v42

    .local v27, "item":Ljavafx/scene/chart/PieChart$Data;
    :goto_b
    move-object/from16 v42, v27

    if-eqz v42, :cond_14

    .line 652
    move-object/from16 v42, v27

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/chart/PieChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v42

    move-object/from16 v28, v42

    .line 653
    .local v28, "node":Ljavafx/scene/Node;
    const/16 v42, 0x0

    move-object/from16 v29, v42

    .line 654
    .local v29, "arc":Ljavafx/scene/shape/Arc;
    move-object/from16 v42, v28

    if-eqz v42, :cond_11

    .line 655
    move-object/from16 v42, v28

    move-object/from16 v0, v42

    instance-of v0, v0, Ljavafx/scene/layout/Region;

    move/from16 v42, v0

    if-eqz v42, :cond_11

    .line 656
    move-object/from16 v42, v28

    check-cast v42, Ljavafx/scene/layout/Region;

    move-object/from16 v30, v42

    .line 657
    .local v30, "arcRegion":Ljavafx/scene/layout/Region;
    move-object/from16 v42, v30

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/layout/Region;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v42

    if-nez v42, :cond_12

    .line 658
    new-instance v42, Ljavafx/scene/shape/Arc;

    move-object/from16 v59, v42

    move-object/from16 v42, v59

    move-object/from16 v43, v59

    invoke-direct/range {v43 .. v43}, Ljavafx/scene/shape/Arc;-><init>()V

    move-object/from16 v29, v42

    .line 659
    move-object/from16 v42, v30

    move-object/from16 v43, v29

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/layout/Region;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 663
    :goto_c
    move-object/from16 v42, v30

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/layout/Region;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 664
    move-object/from16 v42, v30

    move-object/from16 v43, v29

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/layout/Region;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 665
    move-object/from16 v42, v30

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/layout/Region;->setScaleShape(Z)V

    .line 666
    move-object/from16 v42, v30

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/layout/Region;->setCenterShape(Z)V

    .line 667
    move-object/from16 v42, v30

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/layout/Region;->setCacheShape(Z)V

    .line 670
    .end local v30    # "arcRegion":Ljavafx/scene/layout/Region;
    :cond_11
    move-object/from16 v42, v4

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/chart/PieChart;->isClockwise()Z

    move-result v42

    if-eqz v42, :cond_13

    move-wide/from16 v42, v15

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v44, v27

    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    mul-double v42, v42, v44

    :goto_d
    move-wide/from16 v30, v42

    .line 672
    .local v30, "size":D
    move-object/from16 v42, v29

    move-wide/from16 v43, v25

    invoke-virtual/range {v42 .. v44}, Ljavafx/scene/shape/Arc;->setStartAngle(D)V

    .line 673
    move-object/from16 v42, v29

    move-wide/from16 v43, v30

    invoke-virtual/range {v42 .. v44}, Ljavafx/scene/shape/Arc;->setLength(D)V

    .line 674
    move-object/from16 v42, v29

    sget-object v43, Ljavafx/scene/shape/ArcType;->ROUND:Ljavafx/scene/shape/ArcType;

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/shape/Arc;->setType(Ljavafx/scene/shape/ArcType;)V

    .line 675
    move-object/from16 v42, v29

    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-wide v0, v0, Ljavafx/scene/chart/PieChart;->pieRadius:D

    move-wide/from16 v43, v0

    move-object/from16 v45, v27

    invoke-static/range {v45 .. v45}, Ljavafx/scene/chart/PieChart$Data;->access$1300(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v45

    mul-double v43, v43, v45

    invoke-virtual/range {v42 .. v44}, Ljavafx/scene/shape/Arc;->setRadiusX(D)V

    .line 676
    move-object/from16 v42, v29

    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-wide v0, v0, Ljavafx/scene/chart/PieChart;->pieRadius:D

    move-wide/from16 v43, v0

    move-object/from16 v45, v27

    invoke-static/range {v45 .. v45}, Ljavafx/scene/chart/PieChart$Data;->access$1300(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v45

    mul-double v43, v43, v45

    invoke-virtual/range {v42 .. v44}, Ljavafx/scene/shape/Arc;->setRadiusY(D)V

    .line 677
    move-object/from16 v42, v28

    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-wide v0, v0, Ljavafx/scene/chart/PieChart;->centerX:D

    move-wide/from16 v43, v0

    invoke-virtual/range {v42 .. v44}, Ljavafx/scene/Node;->setLayoutX(D)V

    .line 678
    move-object/from16 v42, v28

    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-wide v0, v0, Ljavafx/scene/chart/PieChart;->centerY:D

    move-wide/from16 v43, v0

    invoke-virtual/range {v42 .. v44}, Ljavafx/scene/Node;->setLayoutY(D)V

    .line 679
    move-wide/from16 v42, v25

    move-wide/from16 v44, v30

    add-double v42, v42, v44

    move-wide/from16 v25, v42

    .line 651
    move-object/from16 v42, v27

    invoke-static/range {v42 .. v42}, Ljavafx/scene/chart/PieChart$Data;->access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;

    move-result-object v42

    move-object/from16 v27, v42

    goto/16 :goto_b

    .line 661
    .local v30, "arcRegion":Ljavafx/scene/layout/Region;
    :cond_12
    move-object/from16 v42, v30

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/layout/Region;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v42

    check-cast v42, Ljavafx/scene/shape/Arc;

    move-object/from16 v29, v42

    goto/16 :goto_c

    .line 670
    .end local v30    # "arcRegion":Ljavafx/scene/layout/Region;
    :cond_13
    move-wide/from16 v42, v15

    move-object/from16 v44, v27

    invoke-static/range {v44 .. v44}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    mul-double v42, v42, v44

    goto/16 :goto_d

    .line 682
    .end local v28    # "node":Ljavafx/scene/Node;
    .end local v29    # "arc":Ljavafx/scene/shape/Arc;
    :cond_14
    move-object/from16 v42, v22

    if-eqz v42, :cond_16

    .line 683
    move-object/from16 v42, v22

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    move-object/from16 v27, v42

    .end local v27    # "item":Ljavafx/scene/chart/PieChart$Data;
    :goto_e
    move-object/from16 v42, v27

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_16

    move-object/from16 v42, v27

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;

    move-object/from16 v28, v42

    .line 684
    .local v28, "info":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    move-object/from16 v42, v28

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/scene/text/Text;->isVisible()Z

    move-result v42

    if-eqz v42, :cond_15

    move-object/from16 v42, v4

    move-object/from16 v43, v28

    invoke-direct/range {v42 .. v43}, Ljavafx/scene/chart/PieChart;->drawLabelLinePath(Ljavafx/scene/chart/PieChart$LabelLayoutInfo;)V

    .line 685
    :cond_15
    goto :goto_e

    .line 688
    .end local v24    # "index":I
    .end local v25    # "sAngle":D
    .end local v28    # "info":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    :cond_16
    return-void
.end method

.method public final setClockwise(Z)V
    .locals 4

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart;->clockwise:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setData(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/PieChart$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/PieChart$Data;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart;->data:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setLabelLineLength(D)V
    .locals 7

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->labelLineLength:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setLabelsVisible(Z)V
    .locals 4

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart;->labelsVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setStartAngle(D)V
    .locals 7

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart;->startAngle:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final startAngleProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart;->startAngle:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart;
    return-object v0
.end method
