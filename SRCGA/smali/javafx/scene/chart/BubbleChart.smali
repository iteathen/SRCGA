.class public Ljavafx/scene/chart/BubbleChart;
.super Ljavafx/scene/chart/XYChart;
.source "BubbleChart.java"


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
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/BubbleChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V

    .line 67
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
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
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

    .line 54
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/charts/Legend;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/javafx/charts/Legend;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/BubbleChart;->legend:Lcom/sun/javafx/charts/Legend;

    .line 79
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BubbleChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/BubbleChart;->setLegend(Ljavafx/scene/Node;)V

    .line 80
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/chart/ValueAxis;

    if-eqz v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/chart/ValueAxis;

    if-nez v4, :cond_1

    .line 81
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Axis type incorrect, X and Y should both be NumberAxis"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_1
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/BubbleChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 84
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/BubbleChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
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

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/BubbleChart;->lambda$dataItemRemoved$566(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/BubbleChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/BubbleChart;->lambda$seriesRemoved$567(Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/chart/BubbleChart;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/BubbleChart;->lambda$seriesRemoved$568(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private createBubble(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;
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
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
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

    .line 240
    .local v5, "bubble":Ljavafx/scene/Node;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 241
    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v5, v6

    .line 242
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setNode(Ljavafx/scene/Node;)V

    .line 245
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-string v10, "chart-bubble"

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

    .line 247
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    return-object v0
.end method

.method private static getDoubleValue(Ljava/lang/Object;D)D
    .locals 7

    .prologue
    .line 96
    move-object v1, p0

    .local v1, "number":Ljava/lang/Object;
    move-wide v2, p1

    .local v2, "nullDefault":D
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Number;

    if-nez v4, :cond_0

    move-wide v4, v2

    :goto_0
    move-wide v1, v4

    .end local v1    # "number":Ljava/lang/Object;
    return-wide v1

    .restart local v1    # "number":Ljava/lang/Object;
    :cond_0
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_0
.end method

.method private synthetic lambda$dataItemRemoved$566(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "bubble":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v4, p4

    .local v4, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/BubbleChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 166
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/BubbleChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 167
    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 168
    return-void
.end method

.method private synthetic lambda$seriesRemoved$567(Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/ActionEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/BubbleChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    .line 204
    return-void
.end method

.method private synthetic lambda$seriesRemoved$568(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "bubble":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/BubbleChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 212
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 213
    return-void
.end method


# virtual methods
.method protected dataItemAdded(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;)V
    .locals 13
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
    .line 145
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v2, p1

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move v3, p2

    .local v3, "itemIndex":I
    move-object/from16 v4, p3

    .local v4, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v1

    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/chart/BubbleChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v2

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move-object v10, v4

    move v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/BubbleChart;->createBubble(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 146
    .local v5, "bubble":Ljavafx/scene/Node;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/BubbleChart;->shouldAnimate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 148
    move-object v7, v5

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 149
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/BubbleChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 150
    new-instance v7, Ljavafx/animation/FadeTransition;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-wide v9, 0x407f400000000000L    # 500.0

    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v6, v7

    .line 151
    .local v6, "ft":Ljavafx/animation/FadeTransition;
    move-object v7, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 152
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/animation/FadeTransition;->play()V

    .line 153
    .line 156
    .end local v6    # "ft":Ljavafx/animation/FadeTransition;
    :goto_0
    return-void

    .line 154
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/BubbleChart;->getPlotChildren()Ljavafx/collections/ObservableList;

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
    .line 178
    .local p0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
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
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 160
    .local v3, "bubble":Ljavafx/scene/Node;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/BubbleChart;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
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

    .line 163
    .local v4, "ft":Ljavafx/animation/FadeTransition;
    move-object v5, v4

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 164
    move-object v5, v4

    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    move-object v9, v1

    invoke-static {v6, v7, v8, v9}, Ljavafx/scene/chart/BubbleChart$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/BubbleChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 169
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/FadeTransition;->play()V

    .line 170
    .line 174
    .end local v4    # "ft":Ljavafx/animation/FadeTransition;
    :goto_0
    return-void

    .line 171
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/BubbleChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 172
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/BubbleChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    goto :goto_0
.end method

.method protected layoutPlotChildren()V
    .locals 21

    .prologue
    .line 102
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    const/4 v13, 0x0

    move v2, v13

    .local v2, "seriesIndex":I
    :goto_0
    move v13, v2

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/chart/BubbleChart;->getDataSize()I

    move-result v14

    if-ge v13, v14, :cond_8

    .line 103
    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/chart/BubbleChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v13

    move v14, v2

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/chart/XYChart$Series;

    move-object v3, v13

    .line 105
    .local v3, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v13, v1

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljavafx/scene/chart/BubbleChart;->getDisplayedDataIterator(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/Iterator;

    move-result-object v13

    move-object v4, v13

    .line 106
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_0
    :goto_1
    move-object v13, v4

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 107
    move-object v13, v4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/chart/XYChart$Data;

    move-object v5, v13

    .line 108
    .local v5, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/chart/BubbleChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v13

    move-wide v6, v13

    .line 109
    .local v6, "x":D
    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/chart/BubbleChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v13

    move-wide v8, v13

    .line 110
    .local v8, "y":D
    move-wide v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-nez v13, :cond_0

    move-wide v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 111
    goto :goto_1

    .line 113
    :cond_1
    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v13

    move-object v10, v13

    .line 115
    .local v10, "bubble":Ljavafx/scene/Node;
    move-object v13, v10

    if-eqz v13, :cond_2

    .line 116
    move-object v13, v10

    instance-of v13, v13, Ljavafx/scene/layout/StackPane;

    if-eqz v13, :cond_2

    .line 117
    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v13

    check-cast v13, Ljavafx/scene/layout/StackPane;

    move-object v12, v13

    .line 118
    .local v12, "region":Ljavafx/scene/layout/StackPane;
    move-object v13, v12

    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v13

    if-nez v13, :cond_3

    .line 119
    new-instance v13, Ljavafx/scene/shape/Ellipse;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getExtraValue()Ljava/lang/Object;

    move-result-object v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v15 .. v17}, Ljavafx/scene/chart/BubbleChart;->getDoubleValue(Ljava/lang/Object;D)D

    move-result-wide v15

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/chart/XYChart$Data;->getExtraValue()Ljava/lang/Object;

    move-result-object v17

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v17 .. v19}, Ljavafx/scene/chart/BubbleChart;->getDoubleValue(Ljava/lang/Object;D)D

    move-result-wide v17

    invoke-direct/range {v14 .. v18}, Ljavafx/scene/shape/Ellipse;-><init>(DD)V

    move-object v11, v13

    .line 125
    .local v11, "ellipse":Ljavafx/scene/shape/Ellipse;
    :goto_2
    move-object v13, v11

    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->getExtraValue()Ljava/lang/Object;

    move-result-object v14

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v16}, Ljavafx/scene/chart/BubbleChart;->getDoubleValue(Ljava/lang/Object;D)D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/BubbleChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Ljavafx/scene/chart/NumberAxis;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/BubbleChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v16

    check-cast v16, Ljavafx/scene/chart/NumberAxis;

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/NumberAxis;->getScale()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    :goto_3
    mul-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Ellipse;->setRadiusX(D)V

    .line 126
    move-object v13, v11

    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->getExtraValue()Ljava/lang/Object;

    move-result-object v14

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v16}, Ljavafx/scene/chart/BubbleChart;->getDoubleValue(Ljava/lang/Object;D)D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/BubbleChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Ljavafx/scene/chart/NumberAxis;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/BubbleChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v16

    check-cast v16, Ljavafx/scene/chart/NumberAxis;

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/NumberAxis;->getScale()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    :goto_4
    mul-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Ellipse;->setRadiusY(D)V

    .line 130
    move-object v13, v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljavafx/scene/layout/StackPane;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 131
    move-object v13, v12

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljavafx/scene/layout/StackPane;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 132
    move-object v13, v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljavafx/scene/layout/StackPane;->setScaleShape(Z)V

    .line 133
    move-object v13, v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljavafx/scene/layout/StackPane;->setCenterShape(Z)V

    .line 134
    move-object v13, v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljavafx/scene/layout/StackPane;->setCacheShape(Z)V

    .line 136
    move-object v13, v10

    move-wide v14, v6

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/Node;->setLayoutX(D)V

    .line 137
    move-object v13, v10

    move-wide v14, v8

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/Node;->setLayoutY(D)V

    .line 140
    .end local v11    # "ellipse":Ljavafx/scene/shape/Ellipse;
    .end local v12    # "region":Ljavafx/scene/layout/StackPane;
    :cond_2
    goto/16 :goto_1

    .line 120
    .restart local v12    # "region":Ljavafx/scene/layout/StackPane;
    :cond_3
    move-object v13, v12

    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v13

    instance-of v13, v13, Ljavafx/scene/shape/Ellipse;

    if-eqz v13, :cond_4

    .line 121
    move-object v13, v12

    invoke-virtual {v13}, Ljavafx/scene/layout/StackPane;->getShape()Ljavafx/scene/shape/Shape;

    move-result-object v13

    check-cast v13, Ljavafx/scene/shape/Ellipse;

    move-object v11, v13

    .restart local v11    # "ellipse":Ljavafx/scene/shape/Ellipse;
    goto/16 :goto_2

    .line 123
    .line 142
    .end local v3    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    .end local v5    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v6    # "x":D
    .end local v8    # "y":D
    .end local v10    # "bubble":Ljavafx/scene/Node;
    .end local v11    # "ellipse":Ljavafx/scene/shape/Ellipse;
    .end local v12    # "region":Ljavafx/scene/layout/StackPane;
    :cond_4
    :goto_5
    return-void

    .line 125
    .restart local v3    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    .restart local v5    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .restart local v6    # "x":D
    .restart local v8    # "y":D
    .restart local v10    # "bubble":Ljavafx/scene/Node;
    .restart local v11    # "ellipse":Ljavafx/scene/shape/Ellipse;
    .restart local v12    # "region":Ljavafx/scene/layout/StackPane;
    :cond_5
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    .line 126
    :cond_6
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    .line 102
    .end local v5    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v6    # "x":D
    .end local v8    # "y":D
    .end local v10    # "bubble":Ljavafx/scene/Node;
    .end local v11    # "ellipse":Ljavafx/scene/shape/Ellipse;
    .end local v12    # "region":Ljavafx/scene/layout/StackPane;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 142
    .end local v3    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_8
    goto :goto_5
.end method

.method protected seriesAdded(Ljavafx/scene/chart/XYChart$Series;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I)V"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move v2, p2

    .local v2, "seriesIndex":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "j":I
    :goto_0
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 183
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v7

    .line 184
    .local v4, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v4

    move v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/BubbleChart;->createBubble(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 185
    .local v5, "bubble":Ljavafx/scene/Node;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BubbleChart;->shouldAnimate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    move-object v7, v5

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 187
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BubbleChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 189
    new-instance v7, Ljavafx/animation/FadeTransition;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-wide v9, 0x407f400000000000L    # 500.0

    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v6, v7

    .line 190
    .local v6, "ft":Ljavafx/animation/FadeTransition;
    move-object v7, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 191
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/animation/FadeTransition;->play()V

    .line 192
    .line 182
    .end local v6    # "ft":Ljavafx/animation/FadeTransition;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BubbleChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .line 196
    .end local v4    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v5    # "bubble":Ljavafx/scene/Node;
    :cond_1
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
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BubbleChart;->shouldAnimate()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    new-instance v7, Ljavafx/animation/ParallelTransition;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljavafx/animation/ParallelTransition;-><init>()V

    move-object v2, v7

    .line 202
    .local v2, "pt":Ljavafx/animation/ParallelTransition;
    move-object v7, v2

    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Ljavafx/scene/chart/BubbleChart$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/BubbleChart;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/animation/ParallelTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 205
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

    .line 206
    .local v4, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 208
    .local v5, "bubble":Ljavafx/scene/Node;
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

    .line 209
    .local v6, "ft":Ljavafx/animation/FadeTransition;
    move-object v7, v6

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 210
    move-object v7, v6

    move-object v8, v0

    move-object v9, v5

    invoke-static {v8, v9}, Ljavafx/scene/chart/BubbleChart$$Lambda$3;->lambdaFactory$(Ljavafx/scene/chart/BubbleChart;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 214
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 215
    goto :goto_0

    .line 216
    .end local v4    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v5    # "bubble":Ljavafx/scene/Node;
    .end local v6    # "ft":Ljavafx/animation/FadeTransition;
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/animation/ParallelTransition;->play()V

    .line 217
    .line 225
    .end local v2    # "pt":Ljavafx/animation/ParallelTransition;
    :goto_1
    return-void

    .line 218
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

    .line 219
    .local v3, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v4, v7

    .line 220
    .local v4, "bubble":Ljavafx/scene/Node;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BubbleChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 221
    goto :goto_2

    .line 222
    .end local v3    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v4    # "bubble":Ljavafx/scene/Node;
    :cond_2
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/BubbleChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    goto :goto_1
.end method

.method protected updateAxisRange()V
    .locals 20

    .prologue
    .line 258
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/BubbleChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v12

    move-object v2, v12

    .line 259
    .local v2, "xa":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/BubbleChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v12

    move-object v3, v12

    .line 260
    .local v3, "ya":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    const/4 v12, 0x0

    move-object v4, v12

    .line 261
    .local v4, "xData":Ljava/util/List;, "Ljava/util/List<TX;>;"
    const/4 v12, 0x0

    move-object v5, v12

    .line 262
    .local v5, "yData":Ljava/util/List;, "Ljava/util/List<TY;>;"
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v12

    .line 263
    :cond_0
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v12

    .line 264
    :cond_1
    move-object v12, v2

    instance-of v12, v12, Ljavafx/scene/chart/CategoryAxis;

    move v6, v12

    .line 265
    .local v6, "xIsCategory":Z
    move-object v12, v3

    instance-of v12, v12, Ljavafx/scene/chart/CategoryAxis;

    move v7, v12

    .line 266
    .local v7, "yIsCategory":Z
    move-object v12, v4

    if-nez v12, :cond_2

    move-object v12, v5

    if-eqz v12, :cond_a

    .line 267
    :cond_2
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/BubbleChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v8, v12

    :goto_0
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/chart/XYChart$Series;

    move-object v9, v12

    .line 268
    .local v9, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v10, v12

    :goto_1
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/chart/XYChart$Data;

    move-object v11, v12

    .line 269
    .local v11, "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v12, v4

    if-eqz v12, :cond_3

    .line 270
    move v12, v6

    if-eqz v12, :cond_5

    .line 271
    move-object v12, v4

    move-object v13, v11

    invoke-virtual {v13}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 277
    :cond_3
    :goto_2
    move-object v12, v5

    if-eqz v12, :cond_4

    .line 278
    move v12, v7

    if-eqz v12, :cond_6

    .line 279
    move-object v12, v5

    move-object v13, v11

    invoke-virtual {v13}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 285
    :cond_4
    :goto_3
    goto :goto_1

    .line 273
    :cond_5
    move-object v12, v4

    move-object v13, v2

    move-object v14, v2

    move-object v15, v11

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v14

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/XYChart$Data;->getExtraValue()Ljava/lang/Object;

    move-result-object v16

    const-wide/16 v17, 0x0

    invoke-static/range {v16 .. v18}, Ljavafx/scene/chart/BubbleChart;->getDoubleValue(Ljava/lang/Object;D)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 274
    move-object v12, v4

    move-object v13, v2

    move-object v14, v2

    move-object v15, v11

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v14

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/XYChart$Data;->getExtraValue()Ljava/lang/Object;

    move-result-object v16

    const-wide/16 v17, 0x0

    invoke-static/range {v16 .. v18}, Ljavafx/scene/chart/BubbleChart;->getDoubleValue(Ljava/lang/Object;D)D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_2

    .line 281
    :cond_6
    move-object v12, v5

    move-object v13, v3

    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v14

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/XYChart$Data;->getExtraValue()Ljava/lang/Object;

    move-result-object v16

    const-wide/16 v17, 0x0

    invoke-static/range {v16 .. v18}, Ljavafx/scene/chart/BubbleChart;->getDoubleValue(Ljava/lang/Object;D)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 282
    move-object v12, v5

    move-object v13, v3

    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v14

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/XYChart$Data;->getExtraValue()Ljava/lang/Object;

    move-result-object v16

    const-wide/16 v17, 0x0

    invoke-static/range {v16 .. v18}, Ljavafx/scene/chart/BubbleChart;->getDoubleValue(Ljava/lang/Object;D)D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    goto/16 :goto_3

    .line 286
    .end local v11    # "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_7
    goto/16 :goto_0

    .line 287
    .end local v9    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_8
    move-object v12, v4

    if-eqz v12, :cond_9

    move-object v12, v2

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 288
    :cond_9
    move-object v12, v5

    if-eqz v12, :cond_a

    move-object v12, v3

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 290
    :cond_a
    return-void
.end method

.method protected updateLegend()V
    .locals 11

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BubbleChart;, "Ljavafx/scene/chart/BubbleChart<TX;TY;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BubbleChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 297
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/BubbleChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 298
    const/4 v4, 0x0

    move v1, v4

    .local v1, "seriesIndex":I
    :goto_0
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/BubbleChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 299
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/BubbleChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v4

    .line 300
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

    .line 301
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

    const/4 v7, 0x1

    const-string v8, "chart-bubble"

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x2

    const-string v8, "bubble-legend-symbol"

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

    .line 303
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BubbleChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "seriesIndex":I
    .end local v2    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v3    # "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BubbleChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 307
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/BubbleChart;->getLegend()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_1

    .line 308
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BubbleChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/BubbleChart;->setLegend(Ljavafx/scene/Node;)V

    .line 313
    :cond_1
    :goto_1
    return-void

    .line 311
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/BubbleChart;->setLegend(Ljavafx/scene/Node;)V

    goto :goto_1
.end method
