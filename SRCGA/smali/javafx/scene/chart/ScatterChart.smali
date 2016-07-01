.class public Ljavafx/scene/chart/ScatterChart;
.super Ljavafx/scene/chart/XYChart;
.source "ScatterChart.java"


# annotations
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
.field private legend:Lcom/sun/javafx/charts/Legend;


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
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/ScatterChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V
    .locals 8
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
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
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

    .line 52
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/charts/Legend;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/javafx/charts/Legend;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/ScatterChart;->legend:Lcom/sun/javafx/charts/Legend;

    .line 75
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/ScatterChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/ScatterChart;->setLegend(Ljavafx/scene/Node;)V

    .line 76
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/ScatterChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 77
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/ScatterChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
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

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/ScatterChart;->lambda$dataItemRemoved$577(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/ScatterChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/ScatterChart;->lambda$seriesRemoved$578(Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/chart/ScatterChart;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/ScatterChart;->lambda$seriesRemoved$579(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private synthetic lambda$dataItemRemoved$577(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v4, p4

    .local v4, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/ScatterChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 121
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/ScatterChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 122
    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 123
    return-void
.end method

.method private synthetic lambda$seriesRemoved$578(Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/ActionEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/ScatterChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    .line 150
    return-void
.end method

.method private synthetic lambda$seriesRemoved$579(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/ScatterChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 158
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 159
    return-void
.end method


# virtual methods
.method protected dataItemAdded(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;)V
    .locals 15
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
    .line 83
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object/from16 v2, p1

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move/from16 v3, p2

    .local v3, "itemIndex":I
    move-object/from16 v4, p3

    .local v4, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 85
    .local v5, "symbol":Ljavafx/scene/Node;
    move-object v7, v5

    if-nez v7, :cond_0

    .line 86
    new-instance v7, Ljavafx/scene/layout/StackPane;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v5, v7

    .line 87
    move-object v7, v5

    sget-object v8, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 88
    move-object v7, v5

    const-string v8, "Point"

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->setAccessibleRoleDescription(Ljava/lang/String;)V

    .line 89
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    invoke-static {}, Ljavafx/application/Platform;->accessibilityActiveProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 90
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/XYChart$Data;->setNode(Ljavafx/scene/Node;)V

    .line 93
    :cond_0
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    const-string v11, "chart-symbol"

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "series"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/ScatterChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v13, v2

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x3

    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/chart/XYChart$Series;->defaultColorStyleClass:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    .line 96
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/ScatterChart;->shouldAnimate()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    move-object v7, v5

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 98
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/ScatterChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 99
    new-instance v7, Ljavafx/animation/FadeTransition;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-wide v9, 0x407f400000000000L    # 500.0

    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v6, v7

    .line 100
    .local v6, "ft":Ljavafx/animation/FadeTransition;
    move-object v7, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 101
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/animation/FadeTransition;->play()V

    .line 102
    .line 105
    .end local v6    # "ft":Ljavafx/animation/FadeTransition;
    :goto_0
    return-void

    .line 103
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/ScatterChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0
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
    .line 133
    .local p0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    .local p1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-void
.end method

.method protected dataItemRemoved(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V
    .locals 11
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
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 111
    .local v3, "symbol":Ljavafx/scene/Node;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 112
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 115
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/ScatterChart;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    new-instance v5, Ljavafx/animation/FadeTransition;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-wide v7, 0x407f400000000000L    # 500.0

    invoke-static {v7, v8}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v4, v5

    .line 118
    .local v4, "ft":Ljavafx/animation/FadeTransition;
    move-object v5, v4

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 119
    move-object v5, v4

    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    move-object v9, v1

    invoke-static {v6, v7, v8, v9}, Ljavafx/scene/chart/ScatterChart$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/ScatterChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 124
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/FadeTransition;->play()V

    .line 125
    .line 129
    .end local v4    # "ft":Ljavafx/animation/FadeTransition;
    :goto_0
    return-void

    .line 126
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/ScatterChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 127
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/ScatterChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    goto :goto_0
.end method

.method protected layoutPlotChildren()V
    .locals 24

    .prologue
    .line 175
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    const/4 v15, 0x0

    move v2, v15

    .local v2, "seriesIndex":I
    :goto_0
    move v15, v2

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/ScatterChart;->getDataSize()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 176
    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/chart/ScatterChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v15

    move/from16 v16, v2

    invoke-interface/range {v15 .. v16}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/chart/XYChart$Series;

    move-object v3, v15

    .line 177
    .local v3, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v15, v1

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljavafx/scene/chart/ScatterChart;->getDisplayedDataIterator(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/Iterator;

    move-result-object v15

    move-object v4, v15

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_0
    :goto_1
    move-object v15, v4

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 178
    move-object v15, v4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/chart/XYChart$Data;

    move-object v5, v15

    .line 179
    .local v5, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/chart/ScatterChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v15

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v15

    move-wide v6, v15

    .line 180
    .local v6, "x":D
    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/chart/ScatterChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v15

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v15

    move-wide v8, v15

    .line 181
    .local v8, "y":D
    move-wide v15, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_0

    move-wide v15, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 182
    goto :goto_1

    .line 184
    :cond_1
    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v15

    move-object v10, v15

    .line 185
    .local v10, "symbol":Ljavafx/scene/Node;
    move-object v15, v10

    if-eqz v15, :cond_2

    .line 186
    move-object v15, v10

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v15

    move-wide v11, v15

    .line 187
    .local v11, "w":D
    move-object v15, v10

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v15

    move-wide v13, v15

    .line 188
    .local v13, "h":D
    move-object v15, v10

    move-wide/from16 v16, v6

    move-wide/from16 v18, v11

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v18, v8

    move-wide/from16 v20, v13

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    invoke-virtual/range {v15 .. v23}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 190
    .end local v11    # "w":D
    .end local v13    # "h":D
    :cond_2
    goto :goto_1

    .line 175
    .end local v5    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v6    # "x":D
    .end local v8    # "y":D
    .end local v10    # "symbol":Ljavafx/scene/Node;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 192
    .end local v3    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_4
    return-void
.end method

.method protected seriesAdded(Ljavafx/scene/chart/XYChart$Series;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I)V"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move v2, p2

    .local v2, "seriesIndex":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "j":I
    :goto_0
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 139
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/chart/ScatterChart;->dataItemAdded(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method protected seriesRemoved(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/ScatterChart;->shouldAnimate()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    new-instance v7, Ljavafx/animation/ParallelTransition;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljavafx/animation/ParallelTransition;-><init>()V

    move-object v2, v7

    .line 148
    .local v2, "pt":Ljavafx/animation/ParallelTransition;
    move-object v7, v2

    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Ljavafx/scene/chart/ScatterChart$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/ScatterChart;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/animation/ParallelTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 151
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v7

    .line 152
    .local v4, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 154
    .local v5, "symbol":Ljavafx/scene/Node;
    new-instance v7, Ljavafx/animation/FadeTransition;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-wide v9, 0x407f400000000000L    # 500.0

    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v6, v7

    .line 155
    .local v6, "ft":Ljavafx/animation/FadeTransition;
    move-object v7, v6

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 156
    move-object v7, v6

    move-object v8, v0

    move-object v9, v5

    invoke-static {v8, v9}, Ljavafx/scene/chart/ScatterChart$$Lambda$3;->lambdaFactory$(Ljavafx/scene/chart/ScatterChart;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 160
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 161
    goto :goto_0

    .line 162
    .end local v4    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v5    # "symbol":Ljavafx/scene/Node;
    .end local v6    # "ft":Ljavafx/animation/FadeTransition;
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/animation/ParallelTransition;->play()V

    .line 163
    .line 170
    .end local v2    # "pt":Ljavafx/animation/ParallelTransition;
    :goto_1
    return-void

    .line 164
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :goto_2
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v3, v7

    .line 165
    .local v3, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v4, v7

    .line 166
    .local v4, "symbol":Ljavafx/scene/Node;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/ScatterChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 167
    goto :goto_2

    .line 168
    .end local v3    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v4    # "symbol":Ljavafx/scene/Node;
    :cond_2
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/ScatterChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    goto :goto_1
.end method

.method protected updateLegend()V
    .locals 8

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/ScatterChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 199
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/ScatterChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 200
    const/4 v4, 0x0

    move v1, v4

    .local v1, "seriesIndex":I
    :goto_0
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/ScatterChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 201
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/ScatterChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v4

    .line 202
    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    new-instance v4, Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Series;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/charts/Legend$LegendItem;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 203
    .local v3, "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 204
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 206
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/ScatterChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "seriesIndex":I
    .end local v2    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v3    # "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/ScatterChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 210
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/ScatterChart;->getLegend()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_2

    .line 211
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/ScatterChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/ScatterChart;->setLegend(Ljavafx/scene/Node;)V

    .line 216
    :cond_2
    :goto_1
    return-void

    .line 214
    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/ScatterChart;->setLegend(Ljavafx/scene/Node;)V

    goto :goto_1
.end method
