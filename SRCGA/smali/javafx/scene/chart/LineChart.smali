.class public Ljavafx/scene/chart/LineChart;
.super Ljavafx/scene/chart/XYChart;
.source "LineChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/LineChart$SortingPolicy;,
        Ljavafx/scene/chart/LineChart$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/chart/XYChart",
        "<TX;TY;>;"
    }
.end annotation


# instance fields
.field private XYValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private axisSortingPolicy:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/chart/LineChart$SortingPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private createSymbols:Ljavafx/beans/property/BooleanProperty;

.field private dataItemBeingRemoved:Ljavafx/scene/chart/XYChart$Data;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;"
        }
    .end annotation
.end field

.field private dataRemoveTimeline:Ljavafx/animation/Timeline;

.field private fadeSymbolTransition:Ljavafx/animation/FadeTransition;

.field private legend:Lcom/sun/javafx/charts/Legend;

.field private seriesOfDataRemoved:Ljavafx/scene/chart/XYChart$Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;"
        }
    .end annotation
.end field

.field private seriesRemoveTimeline:Ljavafx/animation/Timeline;

.field private seriesYMultiplierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;",
            "Ljavafx/beans/property/DoubleProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;)V
    .locals 7
    .param p1    # Ljavafx/scene/chart/Axis;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "xAxis"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/chart/Axis;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "yAxis"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TX;>;",
            "Ljavafx/scene/chart/Axis",
            "<TY;>;)V"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/LineChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V
    .locals 10
    .param p1    # Ljavafx/scene/chart/Axis;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "xAxis"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/chart/Axis;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "yAxis"
        .end annotation
    .end param
    .param p3    # Ljavafx/collections/ObservableList;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "data"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TX;>;",
            "Ljavafx/scene/chart/Axis",
            "<TY;>;",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;)V"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, p3

    .local v3, "data":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/XYChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;)V

    .line 84
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/LineChart;->seriesYMultiplierMap:Ljava/util/Map;

    .line 85
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/charts/Legend;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lcom/sun/javafx/charts/Legend;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/LineChart;->legend:Lcom/sun/javafx/charts/Legend;

    .line 87
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/chart/LineChart;->seriesOfDataRemoved:Ljavafx/scene/chart/XYChart$Series;

    .line 88
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/chart/LineChart;->dataItemBeingRemoved:Ljavafx/scene/chart/XYChart$Data;

    .line 89
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/chart/LineChart;->fadeSymbolTransition:Ljavafx/animation/FadeTransition;

    .line 90
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/LineChart;->XYValueMap:Ljava/util/Map;

    .line 92
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/chart/LineChart;->seriesRemoveTimeline:Ljavafx/animation/Timeline;

    .line 96
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/LineChart$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljavafx/scene/chart/LineChart$1;-><init>(Ljavafx/scene/chart/LineChart;Z)V

    iput-object v5, v4, Ljavafx/scene/chart/LineChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    .line 147
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/LineChart$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    sget-object v8, Ljavafx/scene/chart/LineChart$SortingPolicy;->X_AXIS:Ljavafx/scene/chart/LineChart$SortingPolicy;

    invoke-direct {v6, v7, v8}, Ljavafx/scene/chart/LineChart$2;-><init>(Ljavafx/scene/chart/LineChart;Ljavafx/scene/chart/LineChart$SortingPolicy;)V

    iput-object v5, v4, Ljavafx/scene/chart/LineChart;->axisSortingPolicy:Ljavafx/beans/property/ObjectProperty;

    .line 187
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/LineChart;->setLegend(Ljavafx/scene/Node;)V

    .line 188
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/LineChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/chart/LineChart;Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;
    .locals 10

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/LineChart;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/XYChart$Series;
    move v2, p2

    .local v2, "x2":I
    move-object v3, p3

    .local v3, "x3":Ljavafx/scene/chart/XYChart$Data;
    move v4, p4

    .local v4, "x4":I
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/LineChart;->createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "x0":Ljavafx/scene/chart/LineChart;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/chart/LineChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/LineChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/LineChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/LineChart;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/LineChart;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/LineChart;->lambda$dataItemAdded$569(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/LineChart;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/LineChart;->lambda$dataItemRemoved$570(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/shape/LineTo;Ljavafx/scene/shape/LineTo;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/chart/LineChart;->lambda$layoutPlotChildren$571(Ljavafx/scene/shape/LineTo;Ljavafx/scene/shape/LineTo;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/shape/LineTo;Ljavafx/scene/shape/LineTo;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/chart/LineChart;->lambda$layoutPlotChildren$572(Ljavafx/scene/shape/LineTo;Ljavafx/scene/shape/LineTo;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/chart/LineChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/LineChart;->lambda$createDataRemoveTimeline$573(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private createDataRemoveTimeline(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/animation/Timeline;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;",
            "Ljavafx/scene/Node;",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)",
            "Ljavafx/animation/Timeline;"
        }
    .end annotation

    .prologue
    .line 537
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object/from16 v2, p1

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v3, p2

    .local v3, "symbol":Ljavafx/scene/Node;
    move-object/from16 v4, p3

    .local v4, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    new-instance v6, Ljavafx/animation/Timeline;

    move-object/from16 v22, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v22

    invoke-direct {v7}, Ljavafx/animation/Timeline;-><init>()V

    move-object v5, v6

    .line 539
    .local v5, "t":Ljavafx/animation/Timeline;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/LineChart;->XYValueMap:Ljava/util/Map;

    move-object v7, v2

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 541
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljavafx/animation/KeyFrame;

    move-object/from16 v22, v7

    move-object/from16 v7, v22

    move-object/from16 v8, v22

    const/4 v9, 0x0

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    sget-object v12, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v13, 0x2

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v2

    .line 542
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x1

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v2

    .line 543
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    move-object/from16 v22, v7

    move-object/from16 v7, v22

    move-object/from16 v8, v22

    const/4 v9, 0x1

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const-wide v12, 0x407f400000000000L    # 500.0

    .line 544
    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    move-object v13, v1

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v16}, Ljavafx/scene/chart/LineChart$$Lambda$5;->lambdaFactory$(Ljavafx/scene/chart/LineChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x0

    new-instance v17, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    .line 549
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v19

    move-object/from16 v20, v2

    .line 550
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v18 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v17, v15, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x1

    new-instance v17, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    .line 551
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v19

    move-object/from16 v20, v2

    .line 552
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v18 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v17, v15, v16

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    .line 541
    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v6

    .line 554
    move-object v6, v5

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    return-object v1
.end method

.method private createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;I)",
            "Ljavafx/scene/Node;"
        }
    .end annotation

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move v2, p2

    .local v2, "seriesIndex":I
    move-object/from16 v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move/from16 v4, p4

    .local v4, "itemIndex":I
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    move-object v5, v6

    .line 560
    .local v5, "symbol":Ljavafx/scene/Node;
    move-object v6, v5

    if-nez v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/LineChart;->getCreateSymbols()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 561
    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v5, v6

    .line 562
    move-object v6, v5

    sget-object v7, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 563
    move-object v6, v5

    const-string v7, "Point"

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->setAccessibleRoleDescription(Ljava/lang/String;)V

    .line 564
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    invoke-static {}, Ljavafx/application/Platform;->accessibilityActiveProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 565
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setNode(Ljavafx/scene/Node;)V

    .line 568
    :cond_0
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-string v10, "chart-line-symbol"

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "series"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x3

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/chart/XYChart$Series;->defaultColorStyleClass:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v6

    .line 570
    :cond_1
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    return-object v0
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
    .line 628
    # getter for: Ljavafx/scene/chart/LineChart$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/LineChart$StyleableProperties;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$createDataRemoveTimeline$573(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v4, p4

    .local v4, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 546
    :cond_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/LineChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 547
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->XYValueMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 548
    return-void
.end method

.method private synthetic lambda$dataItemAdded$569(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "e":Ljavafx/event/ActionEvent;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    :cond_0
    return-void
.end method

.method private synthetic lambda$dataItemRemoved$570(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, p2

    .local v2, "symbol":Ljavafx/scene/Node;
    move-object v3, p3

    .local v3, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v4, p4

    .local v4, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/XYChart$Data;->setSeries(Ljavafx/scene/chart/XYChart$Series;)V

    .line 352
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 353
    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/LineChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 354
    move-object v5, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 355
    return-void
.end method

.method private static synthetic lambda$layoutPlotChildren$571(Ljavafx/scene/shape/LineTo;Ljavafx/scene/shape/LineTo;)I
    .locals 6

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "e1":Ljavafx/scene/shape/LineTo;
    move-object v1, p1

    .local v1, "e2":Ljavafx/scene/shape/LineTo;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    move v0, v2

    .end local v0    # "e1":Ljavafx/scene/shape/LineTo;
    return v0
.end method

.method private static synthetic lambda$layoutPlotChildren$572(Ljavafx/scene/shape/LineTo;Ljavafx/scene/shape/LineTo;)I
    .locals 6

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "e1":Ljavafx/scene/shape/LineTo;
    move-object v1, p1

    .local v1, "e2":Ljavafx/scene/shape/LineTo;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    move v0, v2

    .end local v0    # "e1":Ljavafx/scene/shape/LineTo;
    return v0
.end method

.method private updateDefaultColorIndex(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->seriesColorMap:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v5

    .line 434
    .local v2, "clearIndex":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljavafx/scene/chart/LineChart;->DEFAULT_COLOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 435
    const/4 v5, 0x0

    move v3, v5

    .local v3, "j":I
    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 436
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 437
    .local v4, "node":Ljavafx/scene/Node;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 438
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljavafx/scene/chart/LineChart;->DEFAULT_COLOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 435
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    .end local v4    # "node":Ljavafx/scene/Node;
    :cond_1
    return-void
.end method


# virtual methods
.method public final axisSortingPolicyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/chart/LineChart$SortingPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/LineChart;->axisSortingPolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    return-object v0
.end method

.method public final createSymbolsProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/LineChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    return-object v0
.end method

.method dataBeingRemovedIsAdded(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V
    .locals 8

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->fadeSymbolTransition:Ljavafx/animation/FadeTransition;

    if-eqz v5, :cond_0

    .line 504
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->fadeSymbolTransition:Ljavafx/animation/FadeTransition;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 505
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->fadeSymbolTransition:Ljavafx/animation/FadeTransition;

    invoke-virtual {v5}, Ljavafx/animation/FadeTransition;->stop()V

    .line 507
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    if-eqz v5, :cond_1

    .line 508
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 509
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->stop()V

    .line 511
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 512
    .local v3, "symbol":Ljavafx/scene/Node;
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 514
    :cond_2
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/XYChart$Data;->setSeries(Ljavafx/scene/chart/XYChart$Series;)V

    .line 515
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/LineChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 518
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->XYValueMap:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-object v4, v5

    .line 519
    .local v4, "value":Ljava/lang/Double;
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 520
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 521
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 523
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->XYValueMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 524
    return-void
.end method

.method protected dataItemAdded(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 220
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object/from16 v3, p1

    .local v3, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move/from16 v4, p2

    .local v4, "itemIndex":I
    move-object/from16 v5, p3

    .local v5, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-interface/range {v26 .. v27}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v27, v5

    move/from16 v28, v4

    invoke-direct/range {v24 .. v28}, Ljavafx/scene/chart/LineChart;->createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v6, v24

    .line 221
    .local v6, "symbol":Ljavafx/scene/Node;
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/LineChart;->shouldAnimate()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 222
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v24

    sget-object v25, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    invoke-virtual/range {v24 .. v25}, Ljavafx/animation/Animation$Status;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 223
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->seriesOfDataRemoved:Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 224
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/Timeline;->stop()V

    .line 225
    move-object/from16 v24, v2

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Ljavafx/scene/chart/LineChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    .line 226
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->dataItemBeingRemoved:Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v24

    .line 227
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->seriesOfDataRemoved:Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->dataItemBeingRemoved:Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/chart/LineChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 228
    move-object/from16 v24, v2

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Ljavafx/scene/chart/LineChart;->seriesOfDataRemoved:Ljavafx/scene/chart/XYChart$Series;

    .line 229
    move-object/from16 v24, v2

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Ljavafx/scene/chart/LineChart;->dataItemBeingRemoved:Ljavafx/scene/chart/XYChart$Data;

    .line 232
    :cond_0
    const/16 v24, 0x0

    move/from16 v7, v24

    .line 233
    .local v7, "animate":Z
    move/from16 v24, v4

    if-lez v24, :cond_4

    move/from16 v24, v4

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljavafx/collections/ObservableList;->size()I

    move-result v25

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 234
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 235
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    move/from16 v25, v4

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v8, v24

    .line 236
    .local v8, "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    move/from16 v25, v4

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v9, v24

    .line 237
    .local v9, "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v24, v8

    if-eqz v24, :cond_1

    move-object/from16 v24, v9

    if-eqz v24, :cond_1

    .line 238
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 239
    .local v10, "x1":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 240
    .local v12, "y1":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 241
    .local v14, "x3":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 243
    .local v16, "y3":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 245
    .local v18, "x2":D
    move-wide/from16 v24, v18

    move-wide/from16 v26, v10

    cmpl-double v24, v24, v26

    if-lez v24, :cond_3

    move-wide/from16 v24, v18

    move-wide/from16 v26, v14

    cmpg-double v24, v24, v26

    if-gez v24, :cond_3

    .line 247
    move-wide/from16 v24, v16

    move-wide/from16 v26, v12

    sub-double v24, v24, v26

    move-wide/from16 v26, v14

    move-wide/from16 v28, v10

    sub-double v26, v26, v28

    div-double v24, v24, v26

    move-wide/from16 v26, v18

    mul-double v24, v24, v26

    move-wide/from16 v26, v14

    move-wide/from16 v28, v12

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v10

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    move-wide/from16 v28, v14

    move-wide/from16 v30, v10

    sub-double v28, v28, v30

    div-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 248
    .local v20, "y":D
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-wide/from16 v26, v20

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 249
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-wide/from16 v26, v18

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 250
    .line 258
    .line 275
    .end local v8    # "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v9    # "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v10    # "x1":D
    .end local v12    # "y1":D
    .end local v14    # "x3":D
    .end local v16    # "y3":D
    .end local v18    # "x2":D
    .end local v20    # "y":D
    :cond_1
    :goto_0
    move/from16 v24, v7

    if-eqz v24, :cond_2

    .line 276
    move-object/from16 v24, v2

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljavafx/animation/KeyFrame;

    move-object/from16 v25, v0

    move-object/from16 v39, v25

    move-object/from16 v25, v39

    move-object/from16 v26, v39

    const/16 v27, 0x0

    new-instance v28, Ljavafx/animation/KeyFrame;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    sget-object v30, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object/from16 v31, v2

    move-object/from16 v32, v6

    invoke-static/range {v31 .. v32}, Ljavafx/scene/chart/LineChart$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/LineChart;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

    move-result-object v31

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v32, v0

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const/16 v34, 0x0

    new-instance v35, Ljavafx/animation/KeyValue;

    move-object/from16 v39, v35

    move-object/from16 v35, v39

    move-object/from16 v36, v39

    move-object/from16 v37, v5

    .line 279
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v37

    move-object/from16 v38, v5

    .line 280
    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v38

    invoke-direct/range {v36 .. v38}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v35, v33, v34

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const/16 v34, 0x1

    new-instance v35, Ljavafx/animation/KeyValue;

    move-object/from16 v39, v35

    move-object/from16 v35, v39

    move-object/from16 v36, v39

    move-object/from16 v37, v5

    .line 281
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v37

    move-object/from16 v38, v5

    .line 282
    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v38

    invoke-direct/range {v36 .. v38}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v35, v33, v34

    invoke-direct/range {v29 .. v32}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v28, v26, v27

    move-object/from16 v39, v25

    move-object/from16 v25, v39

    move-object/from16 v26, v39

    const/16 v27, 0x1

    new-instance v28, Ljavafx/animation/KeyFrame;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const-wide v30, 0x4085e00000000000L    # 700.0

    .line 283
    invoke-static/range {v30 .. v31}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v31, v0

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    const/16 v33, 0x0

    new-instance v34, Ljavafx/animation/KeyValue;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    move-object/from16 v36, v5

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v36

    move-object/from16 v37, v5

    .line 284
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v35 .. v38}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v34, v32, v33

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    const/16 v33, 0x1

    new-instance v34, Ljavafx/animation/KeyValue;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    move-object/from16 v36, v5

    .line 285
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v36

    move-object/from16 v37, v5

    .line 286
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v35 .. v38}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v34, v32, v33

    invoke-direct/range {v29 .. v31}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v28, v26, v27

    .line 276
    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/LineChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 290
    .line 293
    .end local v7    # "animate":Z
    :cond_2
    :goto_1
    return-void

    .line 252
    .restart local v7    # "animate":Z
    .restart local v8    # "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .restart local v9    # "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .restart local v10    # "x1":D
    .restart local v12    # "y1":D
    .restart local v14    # "x3":D
    .restart local v16    # "y3":D
    .restart local v18    # "x2":D
    :cond_3
    move-wide/from16 v24, v14

    move-wide/from16 v26, v10

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 253
    .local v20, "x":D
    move-wide/from16 v24, v16

    move-wide/from16 v26, v12

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v24, v24, v26

    move-wide/from16 v22, v24

    .line 254
    .local v22, "y":D
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-wide/from16 v26, v20

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 255
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-wide/from16 v26, v22

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 258
    .end local v8    # "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v9    # "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v10    # "x1":D
    .end local v12    # "y1":D
    .end local v14    # "x3":D
    .end local v16    # "y3":D
    .end local v18    # "x2":D
    .end local v20    # "x":D
    .end local v22    # "y":D
    :cond_4
    move/from16 v24, v4

    if-nez v24, :cond_5

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 259
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 260
    move-object/from16 v24, v5

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v25

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 261
    move-object/from16 v24, v5

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v25

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 262
    :cond_5
    move/from16 v24, v4

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljavafx/collections/ObservableList;->size()I

    move-result v25

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 263
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 264
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->size()I

    move-result v24

    const/16 v25, 0x2

    add-int/lit8 v24, v24, -0x2

    move/from16 v8, v24

    .line 265
    .local v8, "last":I
    move-object/from16 v24, v5

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v25

    move/from16 v26, v8

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 266
    move-object/from16 v24, v5

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v25

    move/from16 v26, v8

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 267
    goto/16 :goto_0

    .end local v8    # "last":I
    :cond_6
    move-object/from16 v24, v6

    if-eqz v24, :cond_1

    .line 269
    move-object/from16 v24, v6

    const-wide/16 v25, 0x0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 270
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 271
    new-instance v24, Ljavafx/animation/FadeTransition;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    const-wide v26, 0x407f400000000000L    # 500.0

    invoke-static/range {v26 .. v27}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v26

    move-object/from16 v27, v6

    invoke-direct/range {v25 .. v27}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object/from16 v8, v24

    .line 272
    .local v8, "ft":Ljavafx/animation/FadeTransition;
    move-object/from16 v24, v8

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 273
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/FadeTransition;->play()V

    goto/16 :goto_0

    .line 291
    .end local v7    # "animate":Z
    .end local v8    # "ft":Ljavafx/animation/FadeTransition;
    :cond_7
    move-object/from16 v24, v6

    if-eqz v24, :cond_2

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    goto/16 :goto_1
.end method

.method protected dataItemChanged(Ljavafx/scene/chart/XYChart$Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    .local p1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-void
.end method

.method protected dataItemRemoved(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object/from16 v3, p1

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v4, p2

    .local v4, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v28

    move-object/from16 v5, v28

    .line 298
    .local v5, "symbol":Ljavafx/scene/Node;
    move-object/from16 v28, v5

    if-eqz v28, :cond_0

    .line 299
    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 303
    :cond_0
    move-object/from16 v28, v4

    move-object/from16 v29, v3

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Series;->getItemIndex(Ljavafx/scene/chart/XYChart$Data;)I

    move-result v28

    move/from16 v6, v28

    .line 304
    .local v6, "itemIndex":I
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/LineChart;->shouldAnimate()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 305
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->XYValueMap:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->clear()V

    .line 306
    const/16 v28, 0x0

    move/from16 v7, v28

    .line 308
    .local v7, "animate":Z
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/XYChart$Series;->getDataSize()I

    move-result v28

    move/from16 v8, v28

    .line 311
    .local v8, "dataSize":I
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljavafx/collections/ObservableList;->size()I

    move-result v28

    move/from16 v9, v28

    .line 312
    .local v9, "dataListSize":I
    move/from16 v28, v6

    if-lez v28, :cond_4

    move/from16 v28, v6

    move/from16 v29, v8

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 313
    const/16 v28, 0x1

    move/from16 v7, v28

    .line 314
    move-object/from16 v28, v4

    move/from16 v29, v6

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Series;->getItem(I)Ljavafx/scene/chart/XYChart$Data;

    move-result-object v28

    move-object/from16 v10, v28

    .line 315
    .local v10, "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v28, v4

    move/from16 v29, v6

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Series;->getItem(I)Ljavafx/scene/chart/XYChart$Data;

    move-result-object v28

    move-object/from16 v11, v28

    .line 316
    .local v11, "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v28

    move-object/from16 v29, v10

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 317
    .local v12, "x1":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v28

    move-object/from16 v29, v10

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v28

    move-wide/from16 v14, v28

    .line 318
    .local v14, "y1":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v28

    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 319
    .local v16, "x3":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v28

    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 321
    .local v18, "y3":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v28

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 322
    .local v20, "x2":D
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v28

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 323
    .local v22, "y2":D
    move-wide/from16 v28, v20

    move-wide/from16 v30, v12

    cmpl-double v28, v28, v30

    if-lez v28, :cond_3

    move-wide/from16 v28, v20

    move-wide/from16 v30, v16

    cmpg-double v28, v28, v30

    if-gez v28, :cond_3

    .line 325
    move-wide/from16 v28, v18

    move-wide/from16 v30, v14

    sub-double v28, v28, v30

    move-wide/from16 v30, v16

    move-wide/from16 v32, v12

    sub-double v30, v30, v32

    div-double v28, v28, v30

    move-wide/from16 v30, v20

    mul-double v28, v28, v30

    move-wide/from16 v30, v16

    move-wide/from16 v32, v14

    mul-double v30, v30, v32

    move-wide/from16 v32, v18

    move-wide/from16 v34, v12

    mul-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v32, v16

    move-wide/from16 v34, v12

    sub-double v32, v32, v34

    div-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 326
    .local v24, "y":D
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v29

    move-wide/from16 v30, v20

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 327
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v29

    move-wide/from16 v30, v22

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 328
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v29

    move-wide/from16 v30, v20

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 329
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v29

    move-wide/from16 v30, v24

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 330
    .line 337
    .line 358
    .end local v10    # "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v11    # "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v12    # "x1":D
    .end local v14    # "y1":D
    .end local v16    # "x3":D
    .end local v18    # "y3":D
    .end local v20    # "x2":D
    .end local v22    # "y2":D
    .end local v24    # "y":D
    :cond_1
    :goto_0
    move/from16 v28, v7

    if-eqz v28, :cond_2

    .line 359
    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v5

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v32}, Ljavafx/scene/chart/LineChart;->createDataRemoveTimeline(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/animation/Timeline;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Ljavafx/scene/chart/LineChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    .line 360
    move-object/from16 v28, v2

    move-object/from16 v29, v4

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Ljavafx/scene/chart/LineChart;->seriesOfDataRemoved:Ljavafx/scene/chart/XYChart$Series;

    .line 361
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Ljavafx/scene/chart/LineChart;->dataItemBeingRemoved:Ljavafx/scene/chart/XYChart$Data;

    .line 362
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/animation/Timeline;->play()V

    .line 364
    .line 370
    .end local v7    # "animate":Z
    .end local v8    # "dataSize":I
    .end local v9    # "dataListSize":I
    :cond_2
    :goto_1
    return-void

    .line 332
    .restart local v7    # "animate":Z
    .restart local v8    # "dataSize":I
    .restart local v9    # "dataListSize":I
    .restart local v10    # "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .restart local v11    # "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .restart local v12    # "x1":D
    .restart local v14    # "y1":D
    .restart local v16    # "x3":D
    .restart local v18    # "y3":D
    .restart local v20    # "x2":D
    .restart local v22    # "y2":D
    :cond_3
    move-wide/from16 v28, v16

    move-wide/from16 v30, v12

    add-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 333
    .local v24, "x":D
    move-wide/from16 v28, v18

    move-wide/from16 v30, v14

    add-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 334
    .local v26, "y":D
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v29

    move-wide/from16 v30, v24

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 335
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v29

    move-wide/from16 v30, v26

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    .end local v10    # "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v11    # "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v12    # "x1":D
    .end local v14    # "y1":D
    .end local v16    # "x3":D
    .end local v18    # "y3":D
    .end local v20    # "x2":D
    .end local v22    # "y2":D
    .end local v24    # "x":D
    .end local v26    # "y":D
    :cond_4
    move/from16 v28, v6

    if-nez v28, :cond_5

    move/from16 v28, v9

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_5

    .line 338
    const/16 v28, 0x1

    move/from16 v7, v28

    .line 339
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 340
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 341
    :cond_5
    move/from16 v28, v6

    move/from16 v29, v8

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    move/from16 v28, v9

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_6

    .line 342
    const/16 v28, 0x1

    move/from16 v7, v28

    .line 343
    move/from16 v28, v9

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v10, v28

    .line 344
    .local v10, "last":I
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v29

    move/from16 v30, v10

    invoke-interface/range {v29 .. v30}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 345
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v29

    move/from16 v30, v10

    invoke-interface/range {v29 .. v30}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 346
    goto/16 :goto_0

    .end local v10    # "last":I
    :cond_6
    move-object/from16 v28, v5

    if-eqz v28, :cond_1

    .line 348
    move-object/from16 v28, v2

    new-instance v29, Ljavafx/animation/FadeTransition;

    move-object/from16 v36, v29

    move-object/from16 v29, v36

    move-object/from16 v30, v36

    const-wide v31, 0x407f400000000000L    # 500.0

    invoke-static/range {v31 .. v32}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v31

    move-object/from16 v32, v5

    invoke-direct/range {v30 .. v32}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Ljavafx/scene/chart/LineChart;->fadeSymbolTransition:Ljavafx/animation/FadeTransition;

    .line 349
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->fadeSymbolTransition:Ljavafx/animation/FadeTransition;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 350
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->fadeSymbolTransition:Ljavafx/animation/FadeTransition;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v5

    move-object/from16 v32, v4

    invoke-static/range {v29 .. v32}, Ljavafx/scene/chart/LineChart$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/LineChart;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 356
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->fadeSymbolTransition:Ljavafx/animation/FadeTransition;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/animation/FadeTransition;->play()V

    goto/16 :goto_0

    .line 365
    .end local v7    # "animate":Z
    .end local v8    # "dataSize":I
    .end local v9    # "dataListSize":I
    :cond_7
    move-object/from16 v28, v3

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/chart/XYChart$Data;->setSeries(Ljavafx/scene/chart/XYChart$Series;)V

    .line 366
    move-object/from16 v28, v5

    if-eqz v28, :cond_8

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v28

    move-object/from16 v29, v5

    invoke-interface/range {v28 .. v29}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v28

    .line 367
    :cond_8
    move-object/from16 v28, v2

    move-object/from16 v29, v4

    move-object/from16 v30, v3

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/chart/LineChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    goto/16 :goto_1
.end method

.method public final getAxisSortingPolicy()Ljavafx/scene/chart/LineChart$SortingPolicy;
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/LineChart;->axisSortingPolicy:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/chart/LineChart$SortingPolicy;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    return-object v0
.end method

.method public final getCreateSymbols()Z
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/LineChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    return v0
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
    .line 637
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    invoke-static {}, Ljavafx/scene/chart/LineChart;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    return-object v0
.end method

.method protected layoutPlotChildren()V
    .locals 29

    .prologue
    .line 459
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/chart/LineChart;->getDataSize()I

    move-result v21

    invoke-direct/range {v20 .. v21}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v3, v19

    .line 460
    .local v3, "constructedPath":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/shape/LineTo;>;"
    const/16 v19, 0x0

    move/from16 v4, v19

    .local v4, "seriesIndex":I
    :goto_0
    move/from16 v19, v4

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/LineChart;->getDataSize()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 461
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v19

    move/from16 v20, v4

    invoke-interface/range {v19 .. v20}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v5, v19

    .line 462
    .local v5, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/chart/LineChart;->seriesYMultiplierMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v6, v19

    .line 463
    .local v6, "seriesYAnimMultiplier":Ljavafx/beans/property/DoubleProperty;
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljavafx/scene/shape/Path;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 464
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v19

    check-cast v19, Ljavafx/scene/shape/Path;

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v19

    move-object/from16 v7, v19

    .line 465
    .local v7, "seriesLine":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    move-object/from16 v19, v7

    invoke-interface/range {v19 .. v19}, Ljavafx/collections/ObservableList;->clear()V

    .line 466
    move-object/from16 v19, v3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 467
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/chart/LineChart;->getDisplayedDataIterator(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v8, v19

    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_0
    :goto_1
    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 468
    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v9, v19

    .line 469
    .local v9, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v19

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v19

    move-wide/from16 v10, v19

    .line 470
    .local v10, "x":D
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v19

    move-object/from16 v20, v2

    .line 471
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v21

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v21

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    mul-double v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v20

    .line 470
    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v19

    move-wide/from16 v12, v19

    .line 472
    .local v12, "y":D
    move-wide/from16 v19, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v19

    if-nez v19, :cond_0

    move-wide/from16 v19, v12

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 473
    goto :goto_1

    .line 475
    :cond_1
    move-object/from16 v19, v3

    new-instance v20, Ljavafx/scene/shape/LineTo;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-direct/range {v21 .. v25}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 477
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v19

    move-object/from16 v14, v19

    .line 478
    .local v14, "symbol":Ljavafx/scene/Node;
    move-object/from16 v19, v14

    if-eqz v19, :cond_2

    .line 479
    move-object/from16 v19, v14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v19

    move-wide/from16 v15, v19

    .line 480
    .local v15, "w":D
    move-object/from16 v19, v14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 481
    .local v17, "h":D
    move-object/from16 v19, v14

    move-wide/from16 v20, v10

    move-wide/from16 v22, v15

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v22, v12

    move-wide/from16 v24, v17

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v24, v15

    move-wide/from16 v26, v17

    invoke-virtual/range {v19 .. v27}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 483
    .end local v15    # "w":D
    .end local v17    # "h":D
    :cond_2
    goto/16 :goto_1

    .line 484
    .end local v9    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v10    # "x":D
    .end local v12    # "y":D
    .end local v14    # "symbol":Ljavafx/scene/Node;
    :cond_3
    sget-object v19, Ljavafx/scene/chart/LineChart$3;->$SwitchMap$javafx$scene$chart$LineChart$SortingPolicy:[I

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/LineChart;->getAxisSortingPolicy()Ljavafx/scene/chart/LineChart$SortingPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/LineChart$SortingPolicy;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 493
    :goto_2
    move-object/from16 v19, v3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_4

    .line 494
    move-object/from16 v19, v3

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/scene/shape/LineTo;

    move-object/from16 v8, v19

    .line 495
    .local v8, "first":Ljavafx/scene/shape/LineTo;
    move-object/from16 v19, v7

    new-instance v20, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v22

    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v24

    invoke-direct/range {v21 .. v25}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface/range {v19 .. v20}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 496
    move-object/from16 v19, v7

    move-object/from16 v20, v3

    invoke-interface/range {v19 .. v20}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v19

    .line 460
    .end local v7    # "seriesLine":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    .end local v8    # "first":Ljavafx/scene/shape/LineTo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 486
    .restart local v7    # "seriesLine":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :pswitch_0
    move-object/from16 v19, v3

    invoke-static {}, Ljavafx/scene/chart/LineChart$$Lambda$3;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 487
    goto :goto_2

    .line 489
    :pswitch_1
    move-object/from16 v19, v3

    invoke-static {}, Ljavafx/scene/chart/LineChart$$Lambda$4;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 500
    .end local v5    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v6    # "seriesYAnimMultiplier":Ljavafx/beans/property/DoubleProperty;
    .end local v7    # "seriesLine":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_5
    return-void

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected seriesAdded(Ljavafx/scene/chart/XYChart$Series;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I)V"
        }
    .end annotation

    .prologue
    .line 388
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move/from16 v2, p2

    .local v2, "seriesIndex":I
    new-instance v9, Ljavafx/scene/shape/Path;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    invoke-direct {v10}, Ljavafx/scene/shape/Path;-><init>()V

    move-object v3, v9

    .line 389
    .local v3, "seriesLine":Ljavafx/scene/shape/Path;
    move-object v9, v3

    sget-object v10, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Path;->setStrokeLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)V

    .line 390
    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljavafx/scene/chart/XYChart$Series;->setNode(Ljavafx/scene/Node;)V

    .line 392
    new-instance v9, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object v11, v0

    const-string v12, "seriesYMultiplier"

    invoke-direct {v10, v11, v12}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v9

    .line 393
    .local v4, "seriesYAnimMultiplier":Ljavafx/beans/property/DoubleProperty;
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/LineChart;->seriesYMultiplierMap:Ljava/util/Map;

    move-object v10, v1

    move-object v11, v4

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 395
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/LineChart;->shouldAnimate()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 396
    move-object v9, v3

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Path;->setOpacity(D)V

    .line 397
    move-object v9, v4

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 401
    :goto_0
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v3

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 403
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v9

    .line 404
    .local v5, "keyFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/LineChart;->shouldAnimate()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 406
    move-object v9, v5

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    sget-object v12, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v13, 0x2

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v3

    .line 407
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/Path;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v4

    const/16 v19, 0x0

    .line 408
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 406
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 410
    move-object v9, v5

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-wide/high16 v12, 0x4069000000000000L    # 200.0

    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v3

    .line 411
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/Path;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 410
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 413
    move-object v9, v5

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-wide v12, 0x407f400000000000L    # 500.0

    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v4

    const/16 v19, 0x1

    .line 414
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 413
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 417
    :cond_0
    const/4 v9, 0x0

    move v6, v9

    .local v6, "j":I
    :goto_1
    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 418
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v6

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Data;

    move-object v7, v9

    .line 419
    .local v7, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v7

    move v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/scene/chart/LineChart;->createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v9

    move-object v8, v9

    .line 420
    .local v8, "symbol":Ljavafx/scene/Node;
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 421
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/LineChart;->shouldAnimate()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v8

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 422
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v8

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 423
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/LineChart;->shouldAnimate()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 425
    move-object v9, v5

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    sget-object v12, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v13, 0x1

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 426
    move-object v9, v5

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-wide/high16 v12, 0x4069000000000000L    # 200.0

    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 417
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 399
    .end local v5    # "keyFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    .end local v6    # "j":I
    .end local v7    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v8    # "symbol":Ljavafx/scene/Node;
    :cond_3
    move-object v9, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 430
    .restart local v5    # "keyFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    .restart local v6    # "j":I
    :cond_4
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/LineChart;->shouldAnimate()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v0

    move-object v10, v5

    move-object v11, v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljavafx/animation/KeyFrame;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljavafx/animation/KeyFrame;

    invoke-virtual {v9, v10}, Ljavafx/scene/chart/LineChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 431
    :cond_5
    return-void
.end method

.method seriesBeingRemovedIsAdded(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/LineChart;->seriesRemoveTimeline:Ljavafx/animation/Timeline;

    if-eqz v4, :cond_1

    .line 528
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/LineChart;->seriesRemoveTimeline:Ljavafx/animation/Timeline;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 529
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/LineChart;->seriesRemoveTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->stop()V

    .line 530
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 531
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

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

    check-cast v4, Ljavafx/scene/chart/XYChart$Data;

    move-object v3, v4

    .local v3, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 532
    .end local v3    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/LineChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    .line 534
    :cond_1
    return-void
.end method

.method protected seriesChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/chart/XYChart$Series;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/chart/XYChart$Series;>;"
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/LineChart;->getDataSize()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 380
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/chart/XYChart$Series;

    move-object v3, v5

    .line 381
    .local v3, "s":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 382
    .local v4, "seriesNode":Ljavafx/scene/Node;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    const-string v9, "chart-series-line"

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "series"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x2

    move-object v9, v3

    iget-object v9, v9, Ljavafx/scene/chart/XYChart$Series;->defaultColorStyleClass:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 379
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v3    # "s":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v4    # "seriesNode":Ljavafx/scene/Node;
    :cond_1
    return-void
.end method

.method protected seriesRemoved(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 444
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v2, p1

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v5, v1

    move-object v6, v2

    invoke-direct {v5, v6}, Ljavafx/scene/chart/LineChart;->updateDefaultColorIndex(Ljavafx/scene/chart/XYChart$Series;)V

    .line 446
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->seriesYMultiplierMap:Ljava/util/Map;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 447
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/LineChart;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 448
    move-object v5, v1

    new-instance v6, Ljavafx/animation/Timeline;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v2

    const-wide/16 v10, 0x384

    invoke-virtual {v8, v9, v10, v11}, Ljavafx/scene/chart/LineChart;->createSeriesRemoveTimeLine(Ljavafx/scene/chart/XYChart$Series;J)[Ljavafx/animation/KeyFrame;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavafx/animation/Timeline;-><init>([Ljavafx/animation/KeyFrame;)V

    iput-object v6, v5, Ljavafx/scene/chart/LineChart;->seriesRemoveTimeline:Ljavafx/animation/Timeline;

    .line 449
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->seriesRemoveTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->play()V

    .line 455
    :goto_0
    return-void

    .line 451
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 452
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

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

    check-cast v5, Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v5

    .local v4, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 453
    .end local v4    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_1
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/LineChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    goto :goto_0
.end method

.method public final setAxisSortingPolicy(Ljavafx/scene/chart/LineChart$SortingPolicy;)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/chart/LineChart$SortingPolicy;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/LineChart;->axisSortingPolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCreateSymbols(Z)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/LineChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected updateAxisRange()V
    .locals 15

    .prologue
    .line 195
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v10

    move-object v2, v10

    .line 196
    .local v2, "xa":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v10

    move-object v3, v10

    .line 197
    .local v3, "ya":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    const/4 v10, 0x0

    move-object v4, v10

    .line 198
    .local v4, "xData":Ljava/util/List;, "Ljava/util/List<TX;>;"
    const/4 v10, 0x0

    move-object v5, v10

    .line 199
    .local v5, "yData":Ljava/util/List;, "Ljava/util/List<TY;>;"
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v10

    .line 200
    :cond_0
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v10

    .line 201
    :cond_1
    move-object v10, v4

    if-nez v10, :cond_2

    move-object v10, v5

    if-eqz v10, :cond_a

    .line 202
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    :goto_0
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/chart/XYChart$Series;

    move-object v7, v10

    .line 203
    .local v7, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_1
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/chart/XYChart$Data;

    move-object v9, v10

    .line 204
    .local v9, "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v10, v4

    if-eqz v10, :cond_3

    move-object v10, v4

    move-object v11, v9

    invoke-virtual {v11}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 205
    :cond_3
    move-object v10, v5

    if-eqz v10, :cond_4

    move-object v10, v5

    move-object v11, v9

    invoke-virtual {v11}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 206
    :cond_4
    goto :goto_1

    .line 207
    .end local v9    # "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_5
    goto :goto_0

    .line 209
    .end local v7    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_6
    move-object v10, v4

    if-eqz v10, :cond_8

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/LineChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v10

    move-object v11, v4

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_8

    .line 210
    :cond_7
    move-object v10, v2

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 212
    :cond_8
    move-object v10, v5

    if-eqz v10, :cond_a

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/LineChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v10

    move-object v11, v5

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_a

    .line 213
    :cond_9
    move-object v10, v3

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 217
    :cond_a
    return-void
.end method

.method protected updateLegend()V
    .locals 11

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart;, "Ljavafx/scene/chart/LineChart<TX;TY;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/LineChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 578
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 579
    const/4 v4, 0x0

    move v1, v4

    .local v1, "seriesIndex":I
    :goto_0
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 580
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v4

    .line 581
    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    new-instance v4, Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Series;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/charts/Legend$LegendItem;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 582
    .local v3, "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    const-string v8, "chart-line-symbol"

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "series"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x2

    move-object v8, v2

    iget-object v8, v8, Ljavafx/scene/chart/XYChart$Series;->defaultColorStyleClass:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v4

    .line 583
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/LineChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v1    # "seriesIndex":I
    .end local v2    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v3    # "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/LineChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 587
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/LineChart;->getLegend()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_1

    .line 588
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/LineChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/LineChart;->setLegend(Ljavafx/scene/Node;)V

    .line 593
    :cond_1
    :goto_1
    return-void

    .line 591
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/LineChart;->setLegend(Ljavafx/scene/Node;)V

    goto :goto_1
.end method
