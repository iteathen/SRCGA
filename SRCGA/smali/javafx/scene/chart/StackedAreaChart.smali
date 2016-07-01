.class public Ljavafx/scene/chart/StackedAreaChart;
.super Ljavafx/scene/chart/XYChart;
.source "StackedAreaChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/StackedAreaChart$StyleableProperties;,
        Ljavafx/scene/chart/StackedAreaChart$PartOf;,
        Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;
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
.field private createSymbols:Ljavafx/beans/property/BooleanProperty;

.field private legend:Lcom/sun/javafx/charts/Legend;

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
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/StackedAreaChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V

    .line 141
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
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
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

    .line 76
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/StackedAreaChart;->seriesYMultiplierMap:Ljava/util/Map;

    .line 77
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/charts/Legend;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lcom/sun/javafx/charts/Legend;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/StackedAreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    .line 85
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/StackedAreaChart$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljavafx/scene/chart/StackedAreaChart$1;-><init>(Ljavafx/scene/chart/StackedAreaChart;Z)V

    iput-object v5, v4, Ljavafx/scene/chart/StackedAreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    .line 156
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/chart/ValueAxis;

    if-nez v4, :cond_0

    .line 157
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Axis type incorrect, yAxis must be of ValueAxis type."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedAreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedAreaChart;->setLegend(Ljavafx/scene/Node;)V

    .line 160
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedAreaChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/StackedAreaChart;
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

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/StackedAreaChart;->createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "x0":Ljavafx/scene/chart/StackedAreaChart;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/chart/StackedAreaChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/StackedAreaChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedAreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/StackedAreaChart;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/StackedAreaChart;->lambda$dataItemAdded$580(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
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

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/StackedAreaChart;->lambda$dataItemRemoved$581(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
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

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/StackedAreaChart;->lambda$dataItemRemoved$582(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/StackedAreaChart;->lambda$sortAggregateList$583(Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private addDropDown(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DD)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo",
            "<TX;TY;>;>;",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;TX;TY;DD)V"
        }
    .end annotation

    .prologue
    .line 711
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "currentSeriesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;>;"
    move-object/from16 v2, p2

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v3, p3

    .local v3, "xValue":Ljava/lang/Object;, "TX;"
    move-object/from16 v4, p4

    .local v4, "yValue":Ljava/lang/Object;, "TY;"
    move-wide/from16 v5, p5

    .local v5, "x":D
    move-wide/from16 v7, p7

    .local v7, "y":D
    new-instance v10, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;-><init>(Z)V

    move-object v9, v10

    .line 712
    .local v9, "dropDownDataPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object v10, v9

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-wide v14, v5

    move-wide/from16 v16, v7

    sget-object v18, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v10 .. v20}, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->setValues(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DDLjavafx/scene/chart/StackedAreaChart$PartOf;ZZ)V

    .line 713
    move-object v10, v1

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 714
    return-void
.end method

.method private addPoint(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DDLjavafx/scene/chart/StackedAreaChart$PartOf;ZZ)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo",
            "<TX;TY;>;>;",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;TX;TY;DD",
            "Ljavafx/scene/chart/StackedAreaChart$PartOf;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 718
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object/from16 v2, p1

    .local v2, "currentSeriesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;>;"
    move-object/from16 v3, p2

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v4, p3

    .local v4, "xValue":Ljava/lang/Object;, "TX;"
    move-object/from16 v5, p4

    .local v5, "yValue":Ljava/lang/Object;, "TY;"
    move-wide/from16 v6, p5

    .local v6, "x":D
    move-wide/from16 v8, p7

    .local v8, "y":D
    move-object/from16 v10, p9

    .local v10, "partof":Ljavafx/scene/chart/StackedAreaChart$PartOf;
    move/from16 v11, p10

    .local v11, "symbol":Z
    move/from16 v12, p11

    .local v12, "lineTo":Z
    new-instance v14, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    invoke-direct {v15}, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;-><init>()V

    move-object v13, v14

    .line 719
    .local v13, "currentDataPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object v14, v13

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-object/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-virtual/range {v14 .. v24}, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->setValues(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DDLjavafx/scene/chart/StackedAreaChart$PartOf;ZZ)V

    .line 720
    move-object v14, v2

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 721
    return-void
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
    .line 778
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
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

    .line 780
    .local v5, "symbol":Ljavafx/scene/Node;
    move-object v6, v5

    if-nez v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/StackedAreaChart;->getCreateSymbols()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 781
    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v5, v6

    .line 782
    move-object v6, v5

    sget-object v7, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 783
    move-object v6, v5

    const-string v7, "Point"

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->setAccessibleRoleDescription(Ljava/lang/String;)V

    .line 784
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    invoke-static {}, Ljavafx/application/Platform;->accessibilityActiveProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 785
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setNode(Ljavafx/scene/Node;)V

    .line 789
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

    const-string v10, "chart-area-symbol"

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

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v6

    .line 791
    :cond_1
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    return-object v0
.end method

.method private static doubleValue(Ljava/lang/Number;)D
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "number":Ljava/lang/Number;
    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljavafx/scene/chart/StackedAreaChart;->doubleValue(Ljava/lang/Number;D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "number":Ljava/lang/Number;
    return-wide v0
.end method

.method private static doubleValue(Ljava/lang/Number;D)D
    .locals 7

    .prologue
    .line 167
    move-object v1, p0

    .local v1, "number":Ljava/lang/Number;
    move-wide v2, p1

    .local v2, "nullDefault":D
    move-object v4, v1

    if-nez v4, :cond_0

    move-wide v4, v2

    :goto_0
    move-wide v1, v4

    .end local v1    # "number":Ljava/lang/Number;
    return-wide v1

    .restart local v1    # "number":Ljava/lang/Number;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_0
.end method

.method private findNextCurrent(Ljava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo",
            "<TX;TY;>;>;I)I"
        }
    .end annotation

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;>;"
    move v2, p2

    .local v2, "index":I
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 727
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    iget-object v4, v4, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    sget-object v5, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedAreaChart$PartOf;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 728
    move v4, v3

    move v0, v4

    .line 731
    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    :goto_1
    return v0

    .line 726
    .restart local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method private findNextPrevious(Ljava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo",
            "<TX;TY;>;>;I)I"
        }
    .end annotation

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;>;"
    move v2, p2

    .local v2, "index":I
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 754
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    iget-object v4, v4, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    sget-object v5, Ljavafx/scene/chart/StackedAreaChart$PartOf;->PREVIOUS:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedAreaChart$PartOf;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 755
    move v4, v3

    move v0, v4

    .line 758
    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    :goto_1
    return v0

    .line 753
    .restart local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 758
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method private findPreviousCurrent(Ljava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo",
            "<TX;TY;>;>;I)I"
        }
    .end annotation

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;>;"
    move v2, p2

    .local v2, "index":I
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    if-ltz v4, :cond_1

    .line 736
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    iget-object v4, v4, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    sget-object v5, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedAreaChart$PartOf;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 737
    move v4, v3

    move v0, v4

    .line 740
    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    :goto_1
    return v0

    .line 735
    .restart local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 740
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method private findPreviousPrevious(Ljava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo",
            "<TX;TY;>;>;I)I"
        }
    .end annotation

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;>;"
    move v2, p2

    .local v2, "index":I
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    if-ltz v4, :cond_1

    .line 746
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    iget-object v4, v4, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    sget-object v5, Ljavafx/scene/chart/StackedAreaChart$PartOf;->PREVIOUS:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedAreaChart$PartOf;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    move v4, v3

    move v0, v4

    .line 750
    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    :goto_1
    return v0

    .line 745
    .restart local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 750
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
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
    .line 909
    # getter for: Ljavafx/scene/chart/StackedAreaChart$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/StackedAreaChart$StyleableProperties;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private interpolate(DDDDD)D
    .locals 19

    .prologue
    .line 774
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-wide/from16 v2, p1

    .local v2, "lowX":D
    move-wide/from16 v4, p3

    .local v4, "lowY":D
    move-wide/from16 v6, p5

    .local v6, "highX":D
    move-wide/from16 v8, p7

    .local v8, "highY":D
    move-wide/from16 v10, p9

    .local v10, "x":D
    move-wide v12, v8

    move-wide v14, v4

    sub-double/2addr v12, v14

    move-wide v14, v6

    move-wide/from16 v16, v2

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    move-wide v14, v10

    move-wide/from16 v16, v2

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    move-wide v14, v4

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    return-wide v1
.end method

.method private synthetic lambda$dataItemAdded$580(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "e":Ljavafx/event/ActionEvent;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 218
    :cond_0
    return-void
.end method

.method private synthetic lambda$dataItemRemoved$581(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v4, p4

    .local v4, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 291
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/StackedAreaChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 292
    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 293
    return-void
.end method

.method private synthetic lambda$dataItemRemoved$582(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v4, p4

    .local v4, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 302
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/StackedAreaChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 303
    return-void
.end method

.method private synthetic lambda$sortAggregateList$583(Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;)I
    .locals 14

    .prologue
    .line 764
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v2, p1

    .local v2, "o1":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;
    move-object/from16 v3, p2

    .local v3, "o2":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;
    move-object v10, v2

    iget-object v10, v10, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dataItem:Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v10

    .line 765
    .local v4, "d1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v10, v3

    iget-object v10, v10, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dataItem:Ljavafx/scene/chart/XYChart$Data;

    move-object v5, v10

    .line 766
    .local v5, "d2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v11}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v10

    move-wide v6, v10

    .line 767
    .local v6, "val1":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v10

    move-wide v8, v10

    .line 768
    .local v8, "val2":D
    move-wide v10, v6

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    const/4 v10, -0x1

    :goto_0
    move v1, v10

    .end local v1    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    return v1

    .restart local v1    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    :cond_0
    move-wide v10, v6

    move-wide v12, v8

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/4 v10, 0x1

    goto :goto_0
.end method

.method private sortAggregateList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo",
            "<TX;TY;>;>;)V"
        }
    .end annotation

    .prologue
    .line 763
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "aggregateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;>;"
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/chart/StackedAreaChart$$Lambda$4;->lambdaFactory$(Ljavafx/scene/chart/StackedAreaChart;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 770
    return-void
.end method


# virtual methods
.method public final createSymbolsProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedAreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    return-object v0
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
    .line 171
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object/from16 v3, p1

    .local v3, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move/from16 v4, p2

    .local v4, "itemIndex":I
    move-object/from16 v5, p3

    .local v5, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/StackedAreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-interface/range {v26 .. v27}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v27, v5

    move/from16 v28, v4

    invoke-direct/range {v24 .. v28}, Ljavafx/scene/chart/StackedAreaChart;->createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v6, v24

    .line 172
    .local v6, "symbol":Ljavafx/scene/Node;
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/StackedAreaChart;->shouldAnimate()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 173
    const/16 v24, 0x0

    move/from16 v7, v24

    .line 174
    .local v7, "animate":Z
    move/from16 v24, v4

    if-lez v24, :cond_2

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

    if-ge v0, v1, :cond_2

    .line 175
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 176
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

    .line 177
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

    .line 178
    .local v9, "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 179
    .local v10, "x1":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 180
    .local v12, "y1":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 181
    .local v14, "x3":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 183
    .local v16, "y3":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 184
    .local v18, "x2":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 187
    .local v20, "y2":D
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

    move-wide/from16 v22, v24

    .line 188
    .local v22, "y":D
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-wide/from16 v26, v22

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 189
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-wide/from16 v26, v18

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 195
    .line 212
    .end local v8    # "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v9    # "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v10    # "x1":D
    .end local v12    # "y1":D
    .end local v14    # "x3":D
    .end local v16    # "y3":D
    .end local v18    # "x2":D
    .end local v20    # "y2":D
    .end local v22    # "y":D
    :cond_0
    :goto_0
    move/from16 v24, v7

    if-eqz v24, :cond_1

    .line 213
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

    invoke-static/range {v31 .. v32}, Ljavafx/scene/chart/StackedAreaChart$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

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

    .line 219
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v37

    move-object/from16 v38, v5

    .line 220
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

    .line 221
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v37

    move-object/from16 v38, v5

    .line 222
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

    const-wide/high16 v30, 0x4089000000000000L    # 800.0

    .line 224
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

    .line 225
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

    .line 226
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v36

    move-object/from16 v37, v5

    .line 227
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v35 .. v38}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v34, v32, v33

    invoke-direct/range {v29 .. v31}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v28, v26, v27

    .line 213
    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/StackedAreaChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 231
    .line 234
    .end local v7    # "animate":Z
    :cond_1
    :goto_1
    return-void

    .line 195
    .restart local v7    # "animate":Z
    :cond_2
    move/from16 v24, v4

    if-nez v24, :cond_3

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 196
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 197
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

    .line 198
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

    .line 199
    :cond_3
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

    if-ne v0, v1, :cond_4

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 200
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 201
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->size()I

    move-result v24

    const/16 v25, 0x2

    add-int/lit8 v24, v24, -0x2

    move/from16 v8, v24

    .line 202
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

    .line 203
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

    .line 204
    goto/16 :goto_0

    .end local v8    # "last":I
    :cond_4
    move-object/from16 v24, v6

    if-eqz v24, :cond_0

    .line 206
    move-object/from16 v24, v6

    const-wide/16 v25, 0x0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 207
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 208
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

    .line 209
    .local v8, "ft":Ljavafx/animation/FadeTransition;
    move-object/from16 v24, v8

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 210
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/FadeTransition;->play()V

    goto/16 :goto_0

    .line 231
    .end local v7    # "animate":Z
    .end local v8    # "ft":Ljavafx/animation/FadeTransition;
    :cond_5
    move-object/from16 v24, v6

    if-eqz v24, :cond_1

    .line 232
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

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
    .line 319
    .local p0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    .local p1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-void
.end method

.method protected dataItemRemoved(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V
    .locals 43
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
    .line 237
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object/from16 v3, p1

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v4, p2

    .local v4, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v26

    move-object/from16 v5, v26

    .line 239
    .local v5, "symbol":Ljavafx/scene/Node;
    move-object/from16 v26, v5

    if-eqz v26, :cond_0

    .line 240
    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 244
    :cond_0
    move-object/from16 v26, v4

    move-object/from16 v27, v3

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getItemIndex(Ljavafx/scene/chart/XYChart$Data;)I

    move-result v26

    move/from16 v6, v26

    .line 245
    .local v6, "itemIndex":I
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/StackedAreaChart;->shouldAnimate()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 246
    const/16 v26, 0x0

    move/from16 v7, v26

    .line 248
    .local v7, "animate":Z
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/XYChart$Series;->getDataSize()I

    move-result v26

    move/from16 v8, v26

    .line 251
    .local v8, "dataSize":I
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljavafx/collections/ObservableList;->size()I

    move-result v26

    move/from16 v9, v26

    .line 252
    .local v9, "dataListSize":I
    move/from16 v26, v6

    if-lez v26, :cond_3

    move/from16 v26, v6

    move/from16 v27, v8

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 253
    const/16 v26, 0x1

    move/from16 v7, v26

    .line 254
    move-object/from16 v26, v4

    move/from16 v27, v6

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getItem(I)Ljavafx/scene/chart/XYChart$Data;

    move-result-object v26

    move-object/from16 v10, v26

    .line 255
    .local v10, "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v26, v4

    move/from16 v27, v6

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getItem(I)Ljavafx/scene/chart/XYChart$Data;

    move-result-object v26

    move-object/from16 v11, v26

    .line 256
    .local v11, "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v12, v26

    .line 257
    .local v12, "x1":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v14, v26

    .line 258
    .local v14, "y1":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v11

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v16, v26

    .line 259
    .local v16, "x3":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v11

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v18, v26

    .line 261
    .local v18, "y3":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v20, v26

    .line 262
    .local v20, "x2":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 265
    .local v22, "y2":D
    move-wide/from16 v26, v18

    move-wide/from16 v28, v14

    sub-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v12

    sub-double v28, v28, v30

    div-double v26, v26, v28

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    move-wide/from16 v28, v16

    move-wide/from16 v30, v14

    mul-double v28, v28, v30

    move-wide/from16 v30, v18

    move-wide/from16 v32, v12

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v16

    move-wide/from16 v32, v12

    sub-double v30, v30, v32

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v24, v26

    .line 266
    .local v24, "y":D
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v27

    move-wide/from16 v28, v20

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 267
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v27

    move-wide/from16 v28, v22

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 268
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v27

    move-wide/from16 v28, v20

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 269
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v27

    move-wide/from16 v28, v24

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 275
    .line 296
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
    move/from16 v26, v7

    if-eqz v26, :cond_2

    .line 297
    move-object/from16 v26, v2

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljavafx/animation/KeyFrame;

    move-object/from16 v27, v0

    move-object/from16 v42, v27

    move-object/from16 v27, v42

    move-object/from16 v28, v42

    const/16 v29, 0x0

    new-instance v30, Ljavafx/animation/KeyFrame;

    move-object/from16 v42, v30

    move-object/from16 v30, v42

    move-object/from16 v31, v42

    sget-object v32, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v33, v0

    move-object/from16 v42, v33

    move-object/from16 v33, v42

    move-object/from16 v34, v42

    const/16 v35, 0x0

    new-instance v36, Ljavafx/animation/KeyValue;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v38

    move-object/from16 v39, v3

    .line 298
    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v42, v33

    move-object/from16 v33, v42

    move-object/from16 v34, v42

    const/16 v35, 0x1

    new-instance v36, Ljavafx/animation/KeyValue;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v38

    move-object/from16 v39, v3

    .line 299
    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v36, v34, v35

    invoke-direct/range {v31 .. v33}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v30, v28, v29

    move-object/from16 v42, v27

    move-object/from16 v27, v42

    move-object/from16 v28, v42

    const/16 v29, 0x1

    new-instance v30, Ljavafx/animation/KeyFrame;

    move-object/from16 v42, v30

    move-object/from16 v30, v42

    move-object/from16 v31, v42

    const-wide/high16 v32, 0x4089000000000000L    # 800.0

    .line 300
    invoke-static/range {v32 .. v33}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v32

    move-object/from16 v33, v2

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    invoke-static/range {v33 .. v36}, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;->lambdaFactory$(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;

    move-result-object v33

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v34, v0

    move-object/from16 v42, v34

    move-object/from16 v34, v42

    move-object/from16 v35, v42

    const/16 v36, 0x0

    new-instance v37, Ljavafx/animation/KeyValue;

    move-object/from16 v42, v37

    move-object/from16 v37, v42

    move-object/from16 v38, v42

    move-object/from16 v39, v3

    .line 304
    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v39

    move-object/from16 v40, v3

    .line 305
    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v40

    sget-object v41, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v38 .. v41}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v37, v35, v36

    move-object/from16 v42, v34

    move-object/from16 v34, v42

    move-object/from16 v35, v42

    const/16 v36, 0x1

    new-instance v37, Ljavafx/animation/KeyValue;

    move-object/from16 v42, v37

    move-object/from16 v37, v42

    move-object/from16 v38, v42

    move-object/from16 v39, v3

    .line 306
    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v39

    move-object/from16 v40, v3

    .line 307
    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v40

    sget-object v41, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v38 .. v41}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v37, v35, v36

    invoke-direct/range {v31 .. v34}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v30, v28, v29

    .line 297
    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/StackedAreaChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 310
    .line 315
    .end local v7    # "animate":Z
    .end local v8    # "dataSize":I
    .end local v9    # "dataListSize":I
    :cond_2
    :goto_1
    return-void

    .line 275
    .restart local v7    # "animate":Z
    .restart local v8    # "dataSize":I
    .restart local v9    # "dataListSize":I
    :cond_3
    move/from16 v26, v6

    if-nez v26, :cond_4

    move/from16 v26, v9

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_4

    .line 276
    const/16 v26, 0x1

    move/from16 v7, v26

    .line 277
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 278
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 279
    :cond_4
    move/from16 v26, v6

    move/from16 v27, v8

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    move/from16 v26, v9

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    .line 280
    const/16 v26, 0x1

    move/from16 v7, v26

    .line 281
    move/from16 v26, v9

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    move/from16 v10, v26

    .line 282
    .local v10, "last":I
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v27

    move/from16 v28, v10

    invoke-interface/range {v27 .. v28}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 283
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v27

    move/from16 v28, v10

    invoke-interface/range {v27 .. v28}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 284
    goto/16 :goto_0

    .end local v10    # "last":I
    :cond_5
    move-object/from16 v26, v5

    if-eqz v26, :cond_1

    .line 286
    move-object/from16 v26, v5

    const-wide/16 v27, 0x0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 287
    new-instance v26, Ljavafx/animation/FadeTransition;

    move-object/from16 v42, v26

    move-object/from16 v26, v42

    move-object/from16 v27, v42

    const-wide v28, 0x407f400000000000L    # 500.0

    invoke-static/range {v28 .. v29}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v28

    move-object/from16 v29, v5

    invoke-direct/range {v27 .. v29}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object/from16 v10, v26

    .line 288
    .local v10, "ft":Ljavafx/animation/FadeTransition;
    move-object/from16 v26, v10

    const-wide/16 v27, 0x0

    invoke-virtual/range {v26 .. v28}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 289
    move-object/from16 v26, v10

    move-object/from16 v27, v2

    move-object/from16 v28, v5

    move-object/from16 v29, v4

    move-object/from16 v30, v3

    invoke-static/range {v27 .. v30}, Ljavafx/scene/chart/StackedAreaChart$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 294
    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Ljavafx/animation/FadeTransition;->play()V

    goto/16 :goto_0

    .line 311
    .end local v7    # "animate":Z
    .end local v8    # "dataSize":I
    .end local v9    # "dataListSize":I
    .end local v10    # "ft":Ljavafx/animation/FadeTransition;
    :cond_6
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v26

    move-object/from16 v27, v5

    invoke-interface/range {v26 .. v27}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v26

    .line 312
    move-object/from16 v26, v2

    move-object/from16 v27, v4

    move-object/from16 v28, v3

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/StackedAreaChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    goto/16 :goto_1
.end method

.method public final getCreateSymbols()Z
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedAreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
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
    .line 918
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    invoke-static {}, Ljavafx/scene/chart/StackedAreaChart;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    return-object v0
.end method

.method protected layoutPlotChildren()V
    .locals 50

    .prologue
    .line 502
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v49, v37

    move-object/from16 v37, v49

    move-object/from16 v38, v49

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, v37

    .line 505
    .local v3, "currentSeriesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;>;"
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v49, v37

    move-object/from16 v37, v49

    move-object/from16 v38, v49

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v37

    .line 506
    .local v4, "aggregateData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;>;"
    const/16 v37, 0x0

    move/from16 v5, v37

    .local v5, "seriesIndex":I
    :goto_0
    move/from16 v37, v5

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/StackedAreaChart;->getDataSize()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_23

    .line 507
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/StackedAreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v37

    move/from16 v38, v5

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v6, v37

    .line 508
    .local v6, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v37, v4

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 510
    move-object/from16 v37, v3

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    move-object/from16 v7, v37

    :goto_1
    move-object/from16 v37, v7

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_0

    move-object/from16 v37, v7

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v8, v37

    .line 511
    .local v8, "data":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object/from16 v37, v8

    sget-object v38, Ljavafx/scene/chart/StackedAreaChart$PartOf;->PREVIOUS:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    .line 512
    move-object/from16 v37, v4

    move-object/from16 v38, v8

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 513
    goto :goto_1

    .line 514
    .end local v8    # "data":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    :cond_0
    move-object/from16 v37, v3

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 516
    move-object/from16 v37, v2

    move-object/from16 v38, v6

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/StackedAreaChart;->getDisplayedDataIterator(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/Iterator;

    move-result-object v37

    move-object/from16 v7, v37

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :goto_2
    move-object/from16 v37, v7

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_1

    .line 517
    move-object/from16 v37, v7

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v8, v37

    .line 518
    .local v8, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    new-instance v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v49, v37

    move-object/from16 v37, v49

    move-object/from16 v38, v49

    move-object/from16 v39, v8

    move-object/from16 v40, v8

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v41, v8

    .line 519
    invoke-virtual/range {v41 .. v41}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v41

    sget-object v42, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    invoke-direct/range {v38 .. v42}, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;-><init>(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/chart/StackedAreaChart$PartOf;)V

    move-object/from16 v9, v37

    .line 520
    .local v9, "itemInfo":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object/from16 v37, v4

    move-object/from16 v38, v9

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 521
    goto :goto_2

    .line 522
    .end local v8    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v9    # "itemInfo":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    :cond_1
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart;->seriesYMultiplierMap:Ljava/util/Map;

    move-object/from16 v37, v0

    move-object/from16 v38, v6

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v7, v37

    .line 523
    .local v7, "seriesYAnimMultiplier":Ljavafx/beans/property/DoubleProperty;
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v37

    check-cast v37, Ljavafx/scene/Group;

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v37

    const/16 v38, 0x1

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/shape/Path;

    move-object/from16 v8, v37

    .line 524
    .local v8, "seriesLine":Ljavafx/scene/shape/Path;
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v37

    check-cast v37, Ljavafx/scene/Group;

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v37

    const/16 v38, 0x0

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/shape/Path;

    move-object/from16 v9, v37

    .line 525
    .local v9, "fillPath":Ljavafx/scene/shape/Path;
    move-object/from16 v37, v8

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljavafx/collections/ObservableList;->clear()V

    .line 526
    move-object/from16 v37, v9

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljavafx/collections/ObservableList;->clear()V

    .line 527
    const/16 v37, 0x0

    move/from16 v10, v37

    .line 529
    .local v10, "dataIndex":I
    move-object/from16 v37, v2

    move-object/from16 v38, v4

    invoke-direct/range {v37 .. v38}, Ljavafx/scene/chart/StackedAreaChart;->sortAggregateList(Ljava/util/ArrayList;)V

    .line 531
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v37

    move-object/from16 v11, v37

    .line 532
    .local v11, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v37

    move-object/from16 v12, v37

    .line 533
    .local v12, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    const/16 v37, 0x0

    move/from16 v13, v37

    .line 534
    .local v13, "firstCurrent":Z
    const/16 v37, 0x0

    move/from16 v14, v37

    .line 535
    .local v14, "lastCurrent":Z
    move-object/from16 v37, v2

    move-object/from16 v38, v4

    const/16 v39, -0x1

    invoke-direct/range {v37 .. v39}, Ljavafx/scene/chart/StackedAreaChart;->findNextCurrent(Ljava/util/ArrayList;I)I

    move-result v37

    move/from16 v15, v37

    .line 536
    .local v15, "firstCurrentIndex":I
    move-object/from16 v37, v2

    move-object/from16 v38, v4

    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    invoke-direct/range {v37 .. v39}, Ljavafx/scene/chart/StackedAreaChart;->findPreviousCurrent(Ljava/util/ArrayList;I)I

    move-result v37

    move/from16 v16, v37

    .line 537
    .local v16, "lastCurrentIndex":I
    move-object/from16 v37, v11

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v37

    move-wide/from16 v17, v37

    .line 538
    .local v17, "basePosition":D
    move-wide/from16 v37, v17

    invoke-static/range {v37 .. v38}, Ljava/lang/Double;->isNaN(D)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 539
    move-object/from16 v37, v11

    check-cast v37, Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v19, v37

    .line 540
    .local v19, "valueYAxis":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<Ljava/lang/Number;>;"
    move-object/from16 v37, v19

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v37

    const-wide/16 v39, 0x0

    cmpl-double v37, v37, v39

    if-lez v37, :cond_a

    .line 541
    move-object/from16 v37, v19

    move-object/from16 v38, v19

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v37

    move-wide/from16 v17, v37

    .line 549
    .end local v19    # "valueYAxis":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<Ljava/lang/Number;>;"
    :cond_2
    :goto_3
    move-object/from16 v37, v4

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    move-object/from16 v19, v37

    :goto_4
    move-object/from16 v37, v19

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_1b

    move-object/from16 v37, v19

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v20, v37

    .line 550
    .local v20, "dataInfo":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move/from16 v37, v10

    move/from16 v38, v16

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    const/16 v37, 0x1

    move/from16 v14, v37

    .line 551
    :cond_3
    move/from16 v37, v10

    move/from16 v38, v15

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_4

    const/16 v37, 0x1

    move/from16 v13, v37

    .line 552
    :cond_4
    move-object/from16 v37, v20

    move-object/from16 v0, v37

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dataItem:Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v37, v0

    move-object/from16 v21, v37

    .line 553
    .local v21, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v37, v20

    move-object/from16 v0, v37

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    move-object/from16 v37, v0

    sget-object v38, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/StackedAreaChart$PartOf;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    .line 554
    move-object/from16 v37, v2

    move-object/from16 v38, v4

    move/from16 v39, v10

    invoke-direct/range {v37 .. v39}, Ljavafx/scene/chart/StackedAreaChart;->findPreviousPrevious(Ljava/util/ArrayList;I)I

    move-result v37

    move/from16 v22, v37

    .line 555
    .local v22, "pIndex":I
    move-object/from16 v37, v2

    move-object/from16 v38, v4

    move/from16 v39, v10

    invoke-direct/range {v37 .. v39}, Ljavafx/scene/chart/StackedAreaChart;->findNextPrevious(Ljava/util/ArrayList;I)I

    move-result v37

    move/from16 v23, v37

    .line 558
    .local v23, "nIndex":I
    move/from16 v37, v22

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_5

    move/from16 v37, v23

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    move-object/from16 v37, v4

    move/from16 v38, v22

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v0, v37

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v38, v20

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_c

    .line 559
    :cond_5
    move/from16 v37, v13

    if-eqz v37, :cond_6

    .line 561
    new-instance v37, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v49, v37

    move-object/from16 v37, v49

    move-object/from16 v38, v49

    move-object/from16 v39, v20

    move-object/from16 v0, v39

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-direct/range {v38 .. v40}, Ljavafx/scene/chart/XYChart$Data;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v26, v37

    .line 562
    .local v26, "ddItem":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v26

    move-object/from16 v40, v26

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v41, v26

    invoke-virtual/range {v41 .. v41}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v41

    move-object/from16 v42, v12

    move-object/from16 v43, v26

    .line 563
    invoke-virtual/range {v43 .. v43}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v42

    move-wide/from16 v44, v17

    .line 562
    invoke-direct/range {v37 .. v45}, Ljavafx/scene/chart/StackedAreaChart;->addDropDown(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DD)V

    .line 565
    .end local v26    # "ddItem":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_6
    move-object/from16 v37, v12

    move-object/from16 v38, v21

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v26, v37

    .line 566
    .local v26, "x":D
    move-object/from16 v37, v11

    move-object/from16 v38, v11

    move-object/from16 v39, v11

    move-object/from16 v40, v21

    .line 567
    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v39

    move-object/from16 v41, v7

    invoke-virtual/range {v41 .. v41}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v41

    mul-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v38

    .line 566
    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v28, v37

    .line 568
    .local v28, "y":D
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v21

    move-object/from16 v40, v21

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v41, v21

    invoke-virtual/range {v41 .. v41}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v41

    move-wide/from16 v42, v26

    move-wide/from16 v44, v28

    sget-object v46, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    const/16 v47, 0x0

    move/from16 v48, v13

    if-eqz v48, :cond_b

    const/16 v48, 0x0

    :goto_5
    invoke-direct/range {v37 .. v48}, Ljavafx/scene/chart/StackedAreaChart;->addPoint(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DDLjavafx/scene/chart/StackedAreaChart$PartOf;ZZ)V

    .line 570
    move/from16 v37, v10

    move/from16 v38, v16

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 572
    new-instance v37, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v49, v37

    move-object/from16 v37, v49

    move-object/from16 v38, v49

    move-object/from16 v39, v20

    move-object/from16 v0, v39

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-direct/range {v38 .. v40}, Ljavafx/scene/chart/XYChart$Data;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v30, v37

    .line 573
    .local v30, "ddItem":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v30

    move-object/from16 v40, v30

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v41, v30

    invoke-virtual/range {v41 .. v41}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v41

    move-object/from16 v42, v12

    move-object/from16 v43, v30

    .line 574
    invoke-virtual/range {v43 .. v43}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v42

    move-wide/from16 v44, v17

    .line 573
    invoke-direct/range {v37 .. v45}, Ljavafx/scene/chart/StackedAreaChart;->addDropDown(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DD)V

    .line 576
    .line 634
    .line 670
    .end local v26    # "x":D
    .end local v28    # "y":D
    .end local v30    # "ddItem":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_7
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 671
    move/from16 v37, v13

    if-eqz v37, :cond_8

    const/16 v37, 0x0

    move/from16 v13, v37

    .line 672
    :cond_8
    move/from16 v37, v14

    if-eqz v37, :cond_9

    const/16 v37, 0x0

    move/from16 v14, v37

    .line 673
    :cond_9
    goto/16 :goto_4

    .line 543
    .end local v20    # "dataInfo":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    .end local v21    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v22    # "pIndex":I
    .end local v23    # "nIndex":I
    .restart local v19    # "valueYAxis":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<Ljava/lang/Number;>;"
    :cond_a
    move-object/from16 v37, v19

    move-object/from16 v38, v19

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/ValueAxis;->getUpperBound()D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v37

    move-wide/from16 v17, v37

    goto/16 :goto_3

    .line 568
    .end local v19    # "valueYAxis":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<Ljava/lang/Number;>;"
    .restart local v20    # "dataInfo":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    .restart local v21    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .restart local v22    # "pIndex":I
    .restart local v23    # "nIndex":I
    .restart local v26    # "x":D
    .restart local v28    # "y":D
    :cond_b
    const/16 v48, 0x1

    goto :goto_5

    .line 577
    .end local v26    # "x":D
    .end local v28    # "y":D
    :cond_c
    move-object/from16 v37, v4

    move/from16 v38, v22

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v24, v37

    .line 578
    .local v24, "prevPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v38, v20

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_10

    .line 581
    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget-boolean v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dropDown:Z

    move/from16 v37, v0

    if-eqz v37, :cond_d

    .line 582
    move-object/from16 v37, v2

    move-object/from16 v38, v4

    move/from16 v39, v22

    invoke-direct/range {v37 .. v39}, Ljavafx/scene/chart/StackedAreaChart;->findPreviousPrevious(Ljava/util/ArrayList;I)I

    move-result v37

    move/from16 v22, v37

    .line 583
    move-object/from16 v37, v4

    move/from16 v38, v22

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v24, v37

    .line 586
    :cond_d
    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v38, v20

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_e

    .line 587
    move-object/from16 v37, v12

    move-object/from16 v38, v21

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v26, v37

    .line 588
    .restart local v26    # "x":D
    move-object/from16 v37, v11

    move-object/from16 v38, v21

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v37

    move-object/from16 v39, v11

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v39

    add-double v37, v37, v39

    move-wide/from16 v28, v37

    .line 589
    .local v28, "yv":D
    move-object/from16 v37, v11

    move-object/from16 v38, v11

    move-wide/from16 v39, v28

    move-object/from16 v41, v7

    .line 590
    invoke-virtual/range {v41 .. v41}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v41

    mul-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v38

    .line 589
    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v30, v37

    .line 591
    .local v30, "y":D
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v21

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v41, v11

    move-wide/from16 v42, v28

    invoke-virtual/range {v41 .. v43}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v41

    move-wide/from16 v42, v26

    move-wide/from16 v44, v30

    sget-object v46, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    const/16 v47, 0x0

    move/from16 v48, v13

    if-eqz v48, :cond_f

    const/16 v48, 0x0

    :goto_7
    invoke-direct/range {v37 .. v48}, Ljavafx/scene/chart/StackedAreaChart;->addPoint(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DDLjavafx/scene/chart/StackedAreaChart$PartOf;ZZ)V

    .line 594
    .end local v26    # "x":D
    .end local v28    # "yv":D
    .end local v30    # "y":D
    :cond_e
    move/from16 v37, v14

    if-eqz v37, :cond_7

    .line 595
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v21

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v41, v24

    move-object/from16 v0, v41

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v42, v24

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v42, v0

    move-object/from16 v44, v24

    move-object/from16 v0, v44

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v44, v0

    invoke-direct/range {v37 .. v45}, Ljavafx/scene/chart/StackedAreaChart;->addDropDown(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DD)V

    goto/16 :goto_6

    .line 591
    .restart local v26    # "x":D
    .restart local v28    # "yv":D
    .restart local v30    # "y":D
    :cond_f
    const/16 v48, 0x1

    goto :goto_7

    .line 599
    .end local v26    # "x":D
    .end local v28    # "yv":D
    .end local v30    # "y":D
    :cond_10
    move/from16 v37, v23

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_12

    const/16 v37, 0x0

    :goto_8
    move-object/from16 v25, v37

    .line 600
    .local v25, "nextPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move/from16 v37, v22

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_13

    const/16 v37, 0x0

    :goto_9
    move-object/from16 v24, v37

    .line 601
    move-object/from16 v37, v11

    move-object/from16 v38, v21

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v26, v37

    .line 602
    .local v26, "yValue":D
    move-object/from16 v37, v24

    if-eqz v37, :cond_7

    move-object/from16 v37, v25

    if-eqz v37, :cond_7

    .line 603
    move-object/from16 v37, v12

    move-object/from16 v38, v21

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v28, v37

    .line 604
    .local v28, "x":D
    move-object/from16 v37, v2

    move-object/from16 v38, v24

    move-object/from16 v0, v38

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v38, v0

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v42, v0

    move-object/from16 v44, v25

    move-object/from16 v0, v44

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v44, v0

    move-wide/from16 v46, v28

    invoke-direct/range {v37 .. v47}, Ljavafx/scene/chart/StackedAreaChart;->interpolate(DDDDD)D

    move-result-wide v37

    move-wide/from16 v30, v37

    .line 606
    .local v30, "displayY":D
    move-object/from16 v37, v2

    move-object/from16 v38, v12

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v38

    move-object/from16 v40, v11

    move-object/from16 v41, v24

    move-object/from16 v0, v41

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object/from16 v41, v0

    .line 607
    invoke-virtual/range {v40 .. v41}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v40

    move-object/from16 v42, v12

    move-object/from16 v43, v25

    move-object/from16 v0, v43

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v43, v0

    .line 608
    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v42

    move-object/from16 v44, v11

    move-object/from16 v45, v25

    move-object/from16 v0, v45

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object/from16 v45, v0

    .line 609
    invoke-virtual/range {v44 .. v45}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v44

    move-object/from16 v46, v12

    move-object/from16 v47, v20

    move-object/from16 v0, v47

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v47, v0

    .line 610
    invoke-virtual/range {v46 .. v47}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v46

    .line 606
    invoke-direct/range {v37 .. v47}, Ljavafx/scene/chart/StackedAreaChart;->interpolate(DDDDD)D

    move-result-wide v37

    move-wide/from16 v32, v37

    .line 611
    .local v32, "dataY":D
    move/from16 v37, v13

    if-eqz v37, :cond_11

    .line 613
    new-instance v37, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v49, v37

    move-object/from16 v37, v49

    move-object/from16 v38, v49

    move-object/from16 v39, v20

    move-object/from16 v0, v39

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v39, v0

    move-wide/from16 v40, v32

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    invoke-direct/range {v38 .. v40}, Ljavafx/scene/chart/XYChart$Data;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v34, v37

    .line 614
    .local v34, "ddItem":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v34

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v41, v11

    move-wide/from16 v42, v32

    invoke-virtual/range {v41 .. v43}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v41

    move-wide/from16 v42, v28

    move-wide/from16 v44, v30

    invoke-direct/range {v37 .. v45}, Ljavafx/scene/chart/StackedAreaChart;->addDropDown(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DD)V

    .line 616
    .end local v34    # "ddItem":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_11
    move-object/from16 v37, v11

    move-object/from16 v38, v11

    move-wide/from16 v39, v26

    move-wide/from16 v41, v32

    add-double v39, v39, v41

    move-object/from16 v41, v7

    invoke-virtual/range {v41 .. v41}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v41

    mul-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v34, v37

    .line 618
    .local v34, "y":D
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v21

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v41, v11

    move-wide/from16 v42, v26

    move-wide/from16 v44, v32

    add-double v42, v42, v44

    invoke-virtual/range {v41 .. v43}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v41

    move-wide/from16 v42, v28

    move-wide/from16 v44, v34

    sget-object v46, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    const/16 v47, 0x0

    move/from16 v48, v13

    if-eqz v48, :cond_14

    const/16 v48, 0x0

    :goto_a
    invoke-direct/range {v37 .. v48}, Ljavafx/scene/chart/StackedAreaChart;->addPoint(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DDLjavafx/scene/chart/StackedAreaChart$PartOf;ZZ)V

    .line 620
    move/from16 v37, v10

    move/from16 v38, v16

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 622
    new-instance v37, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v49, v37

    move-object/from16 v37, v49

    move-object/from16 v38, v49

    move-object/from16 v39, v20

    move-object/from16 v0, v39

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v39, v0

    move-wide/from16 v40, v32

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    invoke-direct/range {v38 .. v40}, Ljavafx/scene/chart/XYChart$Data;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v36, v37

    .line 623
    .local v36, "ddItem":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v36

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v41, v11

    move-wide/from16 v42, v32

    invoke-virtual/range {v41 .. v43}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v41

    move-wide/from16 v42, v28

    move-wide/from16 v44, v30

    invoke-direct/range {v37 .. v45}, Ljavafx/scene/chart/StackedAreaChart;->addDropDown(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DD)V

    goto/16 :goto_6

    .line 599
    .end local v25    # "nextPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    .end local v26    # "yValue":D
    .end local v28    # "x":D
    .end local v30    # "displayY":D
    .end local v32    # "dataY":D
    .end local v34    # "y":D
    .end local v36    # "ddItem":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_12
    move-object/from16 v37, v4

    move/from16 v38, v23

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    goto/16 :goto_8

    .line 600
    .restart local v25    # "nextPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    :cond_13
    move-object/from16 v37, v4

    move/from16 v38, v22

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    goto/16 :goto_9

    .line 618
    .restart local v26    # "yValue":D
    .restart local v28    # "x":D
    .restart local v30    # "displayY":D
    .restart local v32    # "dataY":D
    .restart local v34    # "y":D
    :cond_14
    const/16 v48, 0x1

    goto :goto_a

    .line 635
    .end local v22    # "pIndex":I
    .end local v23    # "nIndex":I
    .end local v24    # "prevPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    .end local v25    # "nextPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    .end local v26    # "yValue":D
    .end local v28    # "x":D
    .end local v30    # "displayY":D
    .end local v32    # "dataY":D
    .end local v34    # "y":D
    :cond_15
    move-object/from16 v37, v2

    move-object/from16 v38, v4

    move/from16 v39, v10

    invoke-direct/range {v37 .. v39}, Ljavafx/scene/chart/StackedAreaChart;->findPreviousCurrent(Ljava/util/ArrayList;I)I

    move-result v37

    move/from16 v22, v37

    .line 636
    .restart local v22    # "pIndex":I
    move-object/from16 v37, v2

    move-object/from16 v38, v4

    move/from16 v39, v10

    invoke-direct/range {v37 .. v39}, Ljavafx/scene/chart/StackedAreaChart;->findNextCurrent(Ljava/util/ArrayList;I)I

    move-result v37

    move/from16 v23, v37

    .line 639
    .restart local v23    # "nIndex":I
    move-object/from16 v37, v20

    move-object/from16 v0, v37

    iget-boolean v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dropDown:Z

    move/from16 v37, v0

    if-eqz v37, :cond_17

    .line 640
    move-object/from16 v37, v12

    move-object/from16 v38, v20

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v37

    move-object/from16 v39, v12

    move-object/from16 v40, v4

    move/from16 v41, v15

    .line 641
    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v39

    cmpg-double v37, v37, v39

    if-lez v37, :cond_16

    move-object/from16 v37, v12

    move-object/from16 v38, v20

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v38, v0

    .line 642
    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v37

    move-object/from16 v39, v12

    move-object/from16 v40, v4

    move/from16 v41, v16

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v39

    cmpl-double v37, v37, v39

    if-lez v37, :cond_7

    .line 643
    :cond_16
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v21

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v41, v20

    move-object/from16 v0, v41

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v42, v20

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v42, v0

    move-object/from16 v44, v20

    move-object/from16 v0, v44

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v44, v0

    invoke-direct/range {v37 .. v45}, Ljavafx/scene/chart/StackedAreaChart;->addDropDown(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DD)V

    goto/16 :goto_6

    .line 646
    :cond_17
    move/from16 v37, v22

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_18

    move/from16 v37, v23

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_19

    .line 647
    :cond_18
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v21

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v41, v20

    move-object/from16 v0, v41

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v42, v20

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v42, v0

    move-object/from16 v44, v20

    move-object/from16 v0, v44

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v44, v0

    sget-object v46, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    const/16 v47, 0x1

    const/16 v48, 0x0

    invoke-direct/range {v37 .. v48}, Ljavafx/scene/chart/StackedAreaChart;->addPoint(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DDLjavafx/scene/chart/StackedAreaChart$PartOf;ZZ)V

    goto/16 :goto_6

    .line 650
    :cond_19
    move-object/from16 v37, v4

    move/from16 v38, v23

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v25, v37

    .line 651
    .restart local v25    # "nextPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object/from16 v37, v25

    move-object/from16 v0, v37

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v38, v20

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1a

    goto/16 :goto_6

    .line 655
    :cond_1a
    move-object/from16 v37, v4

    move/from16 v38, v22

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v24, v37

    .line 656
    .restart local v24    # "prevPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object/from16 v37, v12

    move-object/from16 v38, v21

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v26, v37

    .line 657
    .local v26, "x":D
    move-object/from16 v37, v2

    move-object/from16 v38, v12

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v38

    move-object/from16 v40, v11

    move-object/from16 v41, v24

    move-object/from16 v0, v41

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object/from16 v41, v0

    .line 658
    invoke-virtual/range {v40 .. v41}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v40

    move-object/from16 v42, v12

    move-object/from16 v43, v25

    move-object/from16 v0, v43

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v43, v0

    .line 659
    invoke-virtual/range {v42 .. v43}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v42

    move-object/from16 v44, v11

    move-object/from16 v45, v25

    move-object/from16 v0, v45

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object/from16 v45, v0

    .line 660
    invoke-virtual/range {v44 .. v45}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v44

    move-object/from16 v46, v12

    move-object/from16 v47, v20

    move-object/from16 v0, v47

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v47, v0

    .line 661
    invoke-virtual/range {v46 .. v47}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v46

    .line 657
    invoke-direct/range {v37 .. v47}, Ljavafx/scene/chart/StackedAreaChart;->interpolate(DDDDD)D

    move-result-wide v37

    move-wide/from16 v28, v37

    .line 662
    .local v28, "dataY":D
    move-object/from16 v37, v11

    move-object/from16 v38, v20

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v39, v28

    add-double v37, v37, v39

    move-wide/from16 v30, v37

    .line 663
    .local v30, "yv":D
    move-object/from16 v37, v11

    move-object/from16 v38, v11

    move-wide/from16 v39, v30

    move-object/from16 v41, v7

    .line 664
    invoke-virtual/range {v41 .. v41}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v41

    mul-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v38

    .line 663
    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v37

    move-wide/from16 v32, v37

    .line 665
    .local v32, "y":D
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    new-instance v39, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v49, v39

    move-object/from16 v39, v49

    move-object/from16 v40, v49

    move-object/from16 v41, v20

    move-object/from16 v0, v41

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-wide/from16 v42, v28

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v42

    invoke-direct/range {v40 .. v42}, Ljavafx/scene/chart/XYChart$Data;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v41, v11

    move-wide/from16 v42, v30

    invoke-virtual/range {v41 .. v43}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v41

    move-wide/from16 v42, v26

    move-wide/from16 v44, v32

    sget-object v46, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    const/16 v47, 0x1

    const/16 v48, 0x1

    invoke-direct/range {v37 .. v48}, Ljavafx/scene/chart/StackedAreaChart;->addPoint(Ljava/util/ArrayList;Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DDLjavafx/scene/chart/StackedAreaChart$PartOf;ZZ)V

    goto/16 :goto_6

    .line 676
    .end local v20    # "dataInfo":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    .end local v21    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v22    # "pIndex":I
    .end local v23    # "nIndex":I
    .end local v24    # "prevPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    .end local v25    # "nextPoint":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    .end local v26    # "x":D
    .end local v28    # "dataY":D
    .end local v30    # "yv":D
    .end local v32    # "y":D
    :cond_1b
    move-object/from16 v37, v3

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_1c

    .line 677
    move-object/from16 v37, v8

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    new-instance v38, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v49, v38

    move-object/from16 v38, v49

    move-object/from16 v39, v49

    move-object/from16 v40, v3

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v3

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 678
    move-object/from16 v37, v9

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    new-instance v38, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v49, v38

    move-object/from16 v38, v49

    move-object/from16 v39, v49

    move-object/from16 v40, v3

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v3

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 680
    :cond_1c
    move-object/from16 v37, v3

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    move-object/from16 v19, v37

    :goto_b
    move-object/from16 v37, v19

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_1f

    move-object/from16 v37, v19

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v20, v37

    .line 681
    .local v20, "point":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object/from16 v37, v20

    move-object/from16 v0, v37

    iget-boolean v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->lineTo:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1e

    .line 682
    move-object/from16 v37, v8

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v49, v38

    move-object/from16 v38, v49

    move-object/from16 v39, v49

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v20

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 686
    :goto_c
    move-object/from16 v37, v9

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v49, v38

    move-object/from16 v38, v49

    move-object/from16 v39, v49

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v20

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 688
    move-object/from16 v37, v20

    move-object/from16 v0, v37

    iget-boolean v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->skipSymbol:Z

    move/from16 v37, v0

    if-nez v37, :cond_1d

    .line 689
    move-object/from16 v37, v20

    move-object/from16 v0, v37

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dataItem:Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v37

    move-object/from16 v21, v37

    .line 690
    .local v21, "symbol":Ljavafx/scene/Node;
    move-object/from16 v37, v21

    if-eqz v37, :cond_1d

    .line 691
    move-object/from16 v37, v21

    const-wide/high16 v38, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v37 .. v39}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v37

    move-wide/from16 v22, v37

    .line 692
    .local v22, "w":D
    move-object/from16 v37, v21

    const-wide/high16 v38, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v37 .. v39}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v37

    move-wide/from16 v24, v37

    .line 693
    .local v24, "h":D
    move-object/from16 v37, v21

    move-object/from16 v38, v20

    move-object/from16 v0, v38

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v38, v0

    move-wide/from16 v40, v22

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    div-double v40, v40, v42

    sub-double v38, v38, v40

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v40, v0

    move-wide/from16 v42, v24

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    div-double v42, v42, v44

    sub-double v40, v40, v42

    move-wide/from16 v42, v22

    move-wide/from16 v44, v24

    invoke-virtual/range {v37 .. v45}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 696
    .end local v21    # "symbol":Ljavafx/scene/Node;
    .end local v22    # "w":D
    .end local v24    # "h":D
    :cond_1d
    goto/16 :goto_b

    .line 684
    :cond_1e
    move-object/from16 v37, v8

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    new-instance v38, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v49, v38

    move-object/from16 v38, v49

    move-object/from16 v39, v49

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v20

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v37

    goto/16 :goto_c

    .line 697
    .end local v20    # "point":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    :cond_1f
    move-object/from16 v37, v4

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    const/16 v38, 0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v19, v37

    .local v19, "i":I
    :goto_d
    move/from16 v37, v19

    if-lez v37, :cond_21

    .line 698
    move-object/from16 v37, v4

    move/from16 v38, v19

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;

    move-object/from16 v20, v37

    .line 699
    .restart local v20    # "point":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    sget-object v37, Ljavafx/scene/chart/StackedAreaChart$PartOf;->PREVIOUS:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    move-object/from16 v38, v20

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljavafx/scene/chart/StackedAreaChart$PartOf;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_20

    .line 700
    move-object/from16 v37, v9

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    new-instance v38, Ljavafx/scene/shape/LineTo;

    move-object/from16 v49, v38

    move-object/from16 v38, v49

    move-object/from16 v39, v49

    move-object/from16 v40, v20

    move-object/from16 v0, v40

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    move-wide/from16 v40, v0

    move-object/from16 v42, v20

    move-object/from16 v0, v42

    iget-wide v0, v0, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    move-wide/from16 v42, v0

    invoke-direct/range {v39 .. v43}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 697
    :cond_20
    add-int/lit8 v19, v19, -0x1

    goto :goto_d

    .line 703
    .end local v20    # "point":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    :cond_21
    move-object/from16 v37, v9

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_22

    .line 704
    move-object/from16 v37, v9

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v37

    new-instance v38, Ljavafx/scene/shape/ClosePath;

    move-object/from16 v49, v38

    move-object/from16 v38, v49

    move-object/from16 v39, v49

    invoke-direct/range {v39 .. v39}, Ljavafx/scene/shape/ClosePath;-><init>()V

    invoke-interface/range {v37 .. v38}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v37

    .line 506
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 708
    .end local v6    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v7    # "seriesYAnimMultiplier":Ljavafx/beans/property/DoubleProperty;
    .end local v8    # "seriesLine":Ljavafx/scene/shape/Path;
    .end local v9    # "fillPath":Ljavafx/scene/shape/Path;
    .end local v10    # "dataIndex":I
    .end local v11    # "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    .end local v12    # "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    .end local v13    # "firstCurrent":Z
    .end local v14    # "lastCurrent":Z
    .end local v15    # "firstCurrentIndex":I
    .end local v16    # "lastCurrentIndex":I
    .end local v17    # "basePosition":D
    .end local v19    # "i":I
    :cond_23
    return-void
.end method

.method protected seriesAdded(Ljavafx/scene/chart/XYChart$Series;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I)V"
        }
    .end annotation

    .prologue
    .line 339
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move/from16 v2, p2

    .local v2, "seriesIndex":I
    new-instance v11, Ljavafx/scene/shape/Path;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    invoke-direct {v12}, Ljavafx/scene/shape/Path;-><init>()V

    move-object v3, v11

    .line 340
    .local v3, "seriesLine":Ljavafx/scene/shape/Path;
    new-instance v11, Ljavafx/scene/shape/Path;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    invoke-direct {v12}, Ljavafx/scene/shape/Path;-><init>()V

    move-object v4, v11

    .line 341
    .local v4, "fillPath":Ljavafx/scene/shape/Path;
    move-object v11, v3

    sget-object v12, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v11, v12}, Ljavafx/scene/shape/Path;->setStrokeLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)V

    .line 342
    move-object v11, v4

    sget-object v12, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v11, v12}, Ljavafx/scene/shape/Path;->setStrokeLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)V

    .line 343
    new-instance v11, Ljavafx/scene/Group;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    const/4 v13, 0x2

    new-array v13, v13, [Ljavafx/scene/Node;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x0

    move-object/from16 v16, v4

    aput-object v16, v14, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x1

    move-object/from16 v16, v3

    aput-object v16, v14, v15

    invoke-direct {v12, v13}, Ljavafx/scene/Group;-><init>([Ljavafx/scene/Node;)V

    move-object v5, v11

    .line 344
    .local v5, "areaGroup":Ljavafx/scene/Group;
    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljavafx/scene/chart/XYChart$Series;->setNode(Ljavafx/scene/Node;)V

    .line 346
    new-instance v11, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    move-object v13, v0

    const-string v14, "seriesYMultiplier"

    invoke-direct {v12, v13, v14}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v11

    .line 347
    .local v6, "seriesYAnimMultiplier":Ljavafx/beans/property/DoubleProperty;
    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/chart/StackedAreaChart;->seriesYMultiplierMap:Ljava/util/Map;

    move-object v12, v1

    move-object v13, v6

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 349
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/StackedAreaChart;->shouldAnimate()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 350
    move-object v11, v6

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 354
    :goto_0
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    move-object v12, v5

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 355
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v11

    .line 356
    .local v7, "keyFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/StackedAreaChart;->shouldAnimate()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 358
    move-object v11, v7

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    sget-object v14, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v15, 0x2

    new-array v15, v15, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x0

    new-instance v18, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v5

    .line 359
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Group;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x1

    new-instance v18, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v6

    const/16 v21, 0x0

    .line 360
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 358
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 362
    move-object v11, v7

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    invoke-static {v14, v15}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x0

    new-instance v18, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v5

    .line 363
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Group;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 362
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 365
    move-object v11, v7

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const-wide v14, 0x407f400000000000L    # 500.0

    invoke-static {v14, v15}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x0

    new-instance v18, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v6

    const/16 v21, 0x1

    .line 366
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 365
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 369
    :cond_0
    const/4 v11, 0x0

    move v8, v11

    .local v8, "j":I
    :goto_1
    move v11, v8

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 370
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v11

    move v12, v8

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/chart/XYChart$Data;

    move-object v9, v11

    .line 371
    .local v9, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v11, v0

    move-object v12, v1

    move v13, v2

    move-object v14, v9

    move v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/scene/chart/StackedAreaChart;->createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v11

    move-object v10, v11

    .line 372
    .local v10, "symbol":Ljavafx/scene/Node;
    move-object v11, v10

    if-eqz v11, :cond_2

    .line 373
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/StackedAreaChart;->shouldAnimate()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v10

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 374
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    move-object v12, v10

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 375
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/StackedAreaChart;->shouldAnimate()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 377
    move-object v11, v7

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    sget-object v14, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v15, 0x1

    new-array v15, v15, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x0

    new-instance v18, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 378
    move-object v11, v7

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    invoke-static {v14, v15}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x0

    new-instance v18, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 369
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 352
    .end local v7    # "keyFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    .end local v8    # "j":I
    .end local v9    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v10    # "symbol":Ljavafx/scene/Node;
    :cond_3
    move-object v11, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 382
    .restart local v7    # "keyFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    .restart local v8    # "j":I
    :cond_4
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/StackedAreaChart;->shouldAnimate()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v0

    move-object v12, v7

    move-object v13, v7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljavafx/animation/KeyFrame;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljavafx/animation/KeyFrame;

    invoke-virtual {v11, v12}, Ljavafx/scene/chart/StackedAreaChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 383
    :cond_5
    return-void
.end method

.method protected seriesChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 16
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
    .line 323
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/chart/XYChart$Series;>;"
    const/4 v9, 0x0

    move v2, v9

    .local v2, "i":I
    :goto_0
    move v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/chart/StackedAreaChart;->getDataSize()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 324
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedAreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v2

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Series;

    move-object v3, v9

    .line 325
    .local v3, "s":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Group;

    invoke-virtual {v9}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/shape/Path;

    move-object v4, v9

    .line 326
    .local v4, "seriesLine":Ljavafx/scene/shape/Path;
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Group;

    invoke-virtual {v9}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/shape/Path;

    move-object v5, v9

    .line 327
    .local v5, "fillPath":Ljavafx/scene/shape/Path;
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    const-string v13, "chart-series-area-line"

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "series"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x2

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/chart/XYChart$Series;->defaultColorStyleClass:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v9

    .line 328
    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    const-string v13, "chart-series-area-fill"

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "series"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x2

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/chart/XYChart$Series;->defaultColorStyleClass:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v9

    .line 329
    const/4 v9, 0x0

    move v6, v9

    .local v6, "j":I
    :goto_1
    move v9, v6

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 330
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v6

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Data;

    move-object v7, v9

    .line 331
    .local v7, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v9

    move-object v8, v9

    .line 332
    .local v8, "node":Ljavafx/scene/Node;
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    const-string v13, "chart-area-symbol"

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "series"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x3

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/chart/XYChart$Series;->defaultColorStyleClass:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v9

    .line 329
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 323
    .end local v7    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v8    # "node":Ljavafx/scene/Node;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 335
    .end local v3    # "s":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v4    # "seriesLine":Ljavafx/scene/shape/Path;
    .end local v5    # "fillPath":Ljavafx/scene/shape/Path;
    .end local v6    # "j":I
    :cond_2
    return-void
.end method

.method protected seriesRemoved(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/StackedAreaChart;->seriesYMultiplierMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 389
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/StackedAreaChart;->shouldAnimate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    new-instance v4, Ljavafx/animation/Timeline;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v7, v8, v9}, Ljavafx/scene/chart/StackedAreaChart;->createSeriesRemoveTimeLine(Ljavafx/scene/chart/XYChart$Series;J)[Ljavafx/animation/KeyFrame;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/animation/Timeline;-><init>([Ljavafx/animation/KeyFrame;)V

    move-object v2, v4

    .line 391
    .local v2, "tl":Ljavafx/animation/Timeline;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->play()V

    .line 392
    .line 397
    .end local v2    # "tl":Ljavafx/animation/Timeline;
    :goto_0
    return-void

    .line 393
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 394
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/XYChart$Data;

    move-object v3, v4

    .local v3, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/StackedAreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 395
    .end local v3    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedAreaChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    goto :goto_0
.end method

.method public final setCreateSymbols(Z)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/StackedAreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected updateAxisRange()V
    .locals 29

    .prologue
    .line 403
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/StackedAreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v20

    move-object/from16 v2, v20

    .line 404
    .local v2, "xa":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/StackedAreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v20

    move-object/from16 v3, v20

    .line 405
    .local v3, "ya":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 406
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v20

    .line 407
    .local v4, "xData":Ljava/util/List;
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/StackedAreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v5, v20

    :goto_0
    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v6, v20

    .line 408
    .local v6, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v7, v20

    :goto_1
    move-object/from16 v20, v7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v8, v20

    .line 409
    .local v8, "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v20, v4

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 410
    goto :goto_1

    .line 411
    .end local v8    # "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_0
    goto :goto_0

    .line 412
    .end local v6    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 414
    .end local v4    # "xData":Ljava/util/List;
    :cond_2
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 415
    const-wide v20, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v4, v20

    .line 416
    .local v4, "totalMinY":D
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/StackedAreaChart;->getDisplayedSeriesIterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v6, v20

    .line 417
    .local v6, "seriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    const/16 v20, 0x1

    move/from16 v7, v20

    .line 418
    .local v7, "first":Z
    new-instance v20, Ljava/util/TreeMap;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v8, v20

    .line 419
    .local v8, "accum":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    new-instance v20, Ljava/util/TreeMap;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v9, v20

    .line 420
    .local v9, "prevAccum":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    new-instance v20, Ljava/util/TreeMap;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v10, v20

    .line 421
    .local v10, "currentValues":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    :goto_2
    move-object/from16 v20, v6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 422
    move-object/from16 v20, v10

    invoke-interface/range {v20 .. v20}, Ljava/util/NavigableMap;->clear()V

    .line 423
    move-object/from16 v20, v6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v11, v20

    .line 424
    .local v11, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v12, v20

    :goto_3
    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v13, v20

    .line 425
    .local v13, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v20, v13

    if-eqz v20, :cond_3

    .line 426
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 427
    .local v14, "xv":D
    move-object/from16 v20, v3

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 428
    .local v16, "yv":D
    move-object/from16 v20, v10

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-wide/from16 v22, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 429
    move/from16 v20, v7

    if-eqz v20, :cond_4

    .line 431
    move-object/from16 v20, v8

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-wide/from16 v22, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 433
    move-wide/from16 v20, v4

    move-wide/from16 v22, v16

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    move-wide/from16 v4, v20

    .line 458
    .end local v14    # "xv":D
    .end local v16    # "yv":D
    :cond_3
    :goto_4
    goto :goto_3

    .line 435
    .restart local v14    # "xv":D
    .restart local v16    # "yv":D
    :cond_4
    move-object/from16 v20, v9

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 436
    move-object/from16 v20, v8

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v22, v9

    move-wide/from16 v23, v14

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_4

    .line 439
    :cond_5
    move-object/from16 v20, v9

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v20

    move-object/from16 v18, v20

    .line 440
    .local v18, "he":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v20, v9

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v20

    move-object/from16 v19, v20

    .line 441
    .local v19, "le":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v20, v18

    if-eqz v20, :cond_6

    move-object/from16 v20, v19

    if-eqz v20, :cond_6

    .line 443
    move-object/from16 v20, v8

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-wide/from16 v22, v14

    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-object/from16 v26, v19

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Double;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    sub-double v24, v24, v26

    div-double v22, v22, v24

    move-object/from16 v24, v19

    .line 444
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-object/from16 v26, v18

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Double;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    add-double v24, v24, v26

    mul-double v22, v22, v24

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    .line 443
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_4

    .line 445
    :cond_6
    move-object/from16 v20, v18

    if-eqz v20, :cond_7

    .line 447
    move-object/from16 v20, v8

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_4

    .line 448
    :cond_7
    move-object/from16 v20, v19

    if-eqz v20, :cond_8

    .line 450
    move-object/from16 v20, v8

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v22, v19

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-wide/from16 v24, v16

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_4

    .line 453
    :cond_8
    move-object/from16 v20, v8

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-wide/from16 v22, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_4

    .line 460
    .end local v13    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v14    # "xv":D
    .end local v16    # "yv":D
    .end local v18    # "he":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v19    # "le":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_9
    move-object/from16 v20, v9

    invoke-interface/range {v20 .. v20}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v12, v20

    :goto_5
    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    move-object/from16 v13, v20

    .line 461
    .local v13, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v21, v13

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 462
    goto :goto_5

    .line 464
    :cond_a
    move-object/from16 v20, v13

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    move-object/from16 v14, v20

    .line 465
    .local v14, "k":Ljava/lang/Double;
    move-object/from16 v20, v13

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    move-object/from16 v15, v20

    .line 467
    .local v15, "v":Ljava/lang/Double;
    move-object/from16 v20, v10

    move-object/from16 v21, v14

    invoke-interface/range {v20 .. v21}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v20

    move-object/from16 v16, v20

    .line 468
    .local v16, "he":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v20, v10

    move-object/from16 v21, v14

    invoke-interface/range {v20 .. v21}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v20

    move-object/from16 v17, v20

    .line 469
    .local v17, "le":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    move-object/from16 v20, v16

    if-eqz v20, :cond_b

    move-object/from16 v20, v17

    if-eqz v20, :cond_b

    .line 471
    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v24, v17

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v16

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-object/from16 v26, v17

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Double;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    sub-double v24, v24, v26

    div-double v22, v22, v24

    move-object/from16 v24, v17

    .line 472
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-object/from16 v26, v16

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Double;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    add-double v24, v24, v26

    mul-double v22, v22, v24

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    add-double v22, v22, v24

    .line 471
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 484
    :goto_6
    goto/16 :goto_5

    .line 473
    :cond_b
    move-object/from16 v20, v16

    if-eqz v20, :cond_c

    .line 475
    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move-object/from16 v22, v16

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_6

    .line 476
    :cond_c
    move-object/from16 v20, v17

    if-eqz v20, :cond_d

    .line 478
    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move-object/from16 v22, v17

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_6

    .line 481
    :cond_d
    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    invoke-interface/range {v20 .. v22}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_6

    .line 486
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v14    # "k":Ljava/lang/Double;
    .end local v15    # "v":Ljava/lang/Double;
    .end local v16    # "he":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v17    # "le":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_e
    move-object/from16 v20, v9

    invoke-interface/range {v20 .. v20}, Ljava/util/NavigableMap;->clear()V

    .line 487
    move-object/from16 v20, v9

    move-object/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Ljava/util/NavigableMap;->putAll(Ljava/util/Map;)V

    .line 488
    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Ljava/util/NavigableMap;->clear()V

    .line 489
    move-wide/from16 v20, v4

    const-wide v22, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v20, v20, v22

    if-nez v20, :cond_f

    const/16 v20, 0x1

    :goto_7
    move/from16 v7, v20

    .line 492
    goto/16 :goto_2

    .line 489
    :cond_f
    const/16 v20, 0x0

    goto :goto_7

    .line 493
    .end local v11    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_10
    move-wide/from16 v20, v4

    const-wide v22, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_11

    move-object/from16 v20, v3

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x0

    move-object/from16 v24, v3

    move-wide/from16 v25, v4

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x1

    move-object/from16 v24, v3

    move-object/from16 v25, v9

    .line 494
    invoke-interface/range {v25 .. v25}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Double;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v24

    aput-object v24, v22, v23

    .line 493
    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 497
    .end local v4    # "totalMinY":D
    .end local v6    # "seriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    .end local v7    # "first":Z
    .end local v8    # "accum":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v9    # "prevAccum":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v10    # "currentValues":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_11
    return-void
.end method

.method protected updateLegend()V
    .locals 11

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart;, "Ljavafx/scene/chart/StackedAreaChart<TX;TY;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/StackedAreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 799
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/StackedAreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 800
    const/4 v4, 0x0

    move v1, v4

    .local v1, "seriesIndex":I
    :goto_0
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/StackedAreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 801
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/StackedAreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v4

    .line 802
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

    .line 803
    .local v3, "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    const-string v8, "chart-area-symbol"

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

    const-string v8, "area-legend-symbol"

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x3

    move-object v8, v2

    iget-object v8, v8, Ljavafx/scene/chart/XYChart$Series;->defaultColorStyleClass:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v4

    .line 805
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/StackedAreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    .end local v1    # "seriesIndex":I
    .end local v2    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v3    # "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/StackedAreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 809
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/StackedAreaChart;->getLegend()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_1

    .line 810
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedAreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedAreaChart;->setLegend(Ljavafx/scene/Node;)V

    .line 815
    :cond_1
    :goto_1
    return-void

    .line 813
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedAreaChart;->setLegend(Ljavafx/scene/Node;)V

    goto :goto_1
.end method
