.class public Ljavafx/scene/chart/AreaChart;
.super Ljavafx/scene/chart/XYChart;
.source "AreaChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/AreaChart$StyleableProperties;
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
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/AreaChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V

    .line 138
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
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
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

    .line 73
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/AreaChart;->seriesYMultiplierMap:Ljava/util/Map;

    .line 74
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/charts/Legend;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lcom/sun/javafx/charts/Legend;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/AreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    .line 82
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/AreaChart$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljavafx/scene/chart/AreaChart$1;-><init>(Ljavafx/scene/chart/AreaChart;Z)V

    iput-object v5, v4, Ljavafx/scene/chart/AreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    .line 149
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/AreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/AreaChart;->setLegend(Ljavafx/scene/Node;)V

    .line 150
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/AreaChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/chart/AreaChart;Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;
    .locals 10

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/AreaChart;
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

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/AreaChart;->createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "x0":Ljavafx/scene/chart/AreaChart;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/chart/AreaChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/AreaChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/AreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/AreaChart;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/AreaChart;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/AreaChart;->lambda$dataItemAdded$556(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/AreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
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

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/AreaChart;->lambda$dataItemRemoved$557(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/chart/AreaChart;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
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

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/AreaChart;->lambda$dataItemRemoved$558(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/shape/LineTo;Ljavafx/scene/shape/LineTo;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/chart/AreaChart;->lambda$layoutPlotChildren$559(Ljavafx/scene/shape/LineTo;Ljavafx/scene/shape/LineTo;)I

    move-result v2

    move v0, v2

    return v0
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
    .line 496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
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

    .line 498
    .local v5, "symbol":Ljavafx/scene/Node;
    move-object v6, v5

    if-nez v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/AreaChart;->getCreateSymbols()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 499
    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v5, v6

    .line 500
    move-object v6, v5

    sget-object v7, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 501
    move-object v6, v5

    const-string v7, "Point"

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->setAccessibleRoleDescription(Ljava/lang/String;)V

    .line 502
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    invoke-static {}, Ljavafx/application/Platform;->accessibilityActiveProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 503
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setNode(Ljavafx/scene/Node;)V

    .line 507
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

    .line 509
    :cond_1
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    return-object v0
.end method

.method private static doubleValue(Ljava/lang/Number;)D
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "number":Ljava/lang/Number;
    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljavafx/scene/chart/AreaChart;->doubleValue(Ljava/lang/Number;D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "number":Ljava/lang/Number;
    return-wide v0
.end method

.method private static doubleValue(Ljava/lang/Number;D)D
    .locals 7

    .prologue
    .line 157
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
    .line 568
    # getter for: Ljavafx/scene/chart/AreaChart$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/AreaChart$StyleableProperties;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$dataItemAdded$556(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "e":Ljavafx/event/ActionEvent;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 233
    :cond_0
    return-void
.end method

.method private synthetic lambda$dataItemRemoved$557(Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v4, p4

    .local v4, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 307
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/AreaChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 308
    return-void
.end method

.method private synthetic lambda$dataItemRemoved$558(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
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

    .line 318
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 319
    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/AreaChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 320
    return-void
.end method

.method private static synthetic lambda$layoutPlotChildren$559(Ljavafx/scene/shape/LineTo;Ljavafx/scene/shape/LineTo;)I
    .locals 6

    .prologue
    .line 469
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

.method private updateDefaultColorIndex(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/AreaChart;->seriesColorMap:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v2, v7

    .line 407
    .local v2, "clearIndex":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Group;

    invoke-virtual {v7}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/shape/Path;

    move-object v3, v7

    .line 408
    .local v3, "seriesLine":Ljavafx/scene/shape/Path;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Group;

    invoke-virtual {v7}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/shape/Path;

    move-object v4, v7

    .line 409
    .local v4, "fillPath":Ljavafx/scene/shape/Path;
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 410
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljavafx/scene/chart/AreaChart;->DEFAULT_COLOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 412
    :cond_0
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 413
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljavafx/scene/chart/AreaChart;->DEFAULT_COLOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 415
    :cond_1
    const/4 v7, 0x0

    move v5, v7

    .local v5, "j":I
    :goto_0
    move v7, v5

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 416
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 417
    .local v6, "node":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 418
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljavafx/scene/chart/AreaChart;->DEFAULT_COLOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 415
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 421
    .end local v6    # "node":Ljavafx/scene/Node;
    :cond_3
    return-void
.end method


# virtual methods
.method public final createSymbolsProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/AreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
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
    .line 185
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object/from16 v3, p1

    .local v3, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move/from16 v4, p2

    .local v4, "itemIndex":I
    move-object/from16 v5, p3

    .local v5, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-interface/range {v26 .. v27}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v27, v5

    move/from16 v28, v4

    invoke-direct/range {v24 .. v28}, Ljavafx/scene/chart/AreaChart;->createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v6, v24

    .line 186
    .local v6, "symbol":Ljavafx/scene/Node;
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/AreaChart;->shouldAnimate()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 187
    const/16 v24, 0x0

    move/from16 v7, v24

    .line 188
    .local v7, "animate":Z
    move/from16 v24, v4

    if-lez v24, :cond_3

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

    if-ge v0, v1, :cond_3

    .line 189
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 190
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

    .line 191
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

    .line 192
    .local v9, "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 193
    .local v10, "x1":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 194
    .local v12, "y1":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 195
    .local v14, "x3":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 197
    .local v16, "y3":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 198
    .local v18, "x2":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 201
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

    .line 202
    .local v22, "y":D
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-wide/from16 v26, v22

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 203
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-wide/from16 v26, v18

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 209
    .line 219
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
    move-object/from16 v24, v6

    if-eqz v24, :cond_1

    .line 221
    move-object/from16 v24, v6

    const-wide/16 v25, 0x0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 222
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 223
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

    .line 224
    .local v8, "ft":Ljavafx/animation/FadeTransition;
    move-object/from16 v24, v8

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 225
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/animation/FadeTransition;->play()V

    .line 227
    .end local v8    # "ft":Ljavafx/animation/FadeTransition;
    :cond_1
    move/from16 v24, v7

    if-eqz v24, :cond_2

    .line 228
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

    invoke-static/range {v31 .. v32}, Ljavafx/scene/chart/AreaChart$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/AreaChart;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

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

    .line 234
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v37

    move-object/from16 v38, v5

    .line 235
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

    .line 236
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v37

    move-object/from16 v38, v5

    .line 237
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

    .line 239
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

    .line 240
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

    .line 241
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v36

    move-object/from16 v37, v5

    .line 242
    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v35 .. v38}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v34, v32, v33

    invoke-direct/range {v29 .. v31}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v28, v26, v27

    .line 228
    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/chart/AreaChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 246
    .line 249
    .end local v7    # "animate":Z
    :cond_2
    :goto_1
    return-void

    .line 209
    .restart local v7    # "animate":Z
    :cond_3
    move/from16 v24, v4

    if-nez v24, :cond_4

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 210
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 211
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

    .line 212
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

    .line 213
    :cond_4
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

    if-ne v0, v1, :cond_0

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 214
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 215
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->size()I

    move-result v24

    const/16 v25, 0x2

    add-int/lit8 v24, v24, -0x2

    move/from16 v8, v24

    .line 216
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

    .line 217
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

    goto/16 :goto_0

    .line 246
    .end local v7    # "animate":Z
    .end local v8    # "last":I
    :cond_5
    move-object/from16 v24, v6

    if-eqz v24, :cond_2

    .line 247
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

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
    .line 337
    .local p0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
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
    .line 252
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object/from16 v3, p1

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v4, p2

    .local v4, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v26

    move-object/from16 v5, v26

    .line 254
    .local v5, "symbol":Ljavafx/scene/Node;
    move-object/from16 v26, v5

    if-eqz v26, :cond_0

    .line 255
    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 259
    :cond_0
    move-object/from16 v26, v4

    move-object/from16 v27, v3

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getItemIndex(Ljavafx/scene/chart/XYChart$Data;)I

    move-result v26

    move/from16 v6, v26

    .line 260
    .local v6, "itemIndex":I
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->shouldAnimate()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 261
    const/16 v26, 0x0

    move/from16 v7, v26

    .line 263
    .local v7, "animate":Z
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/XYChart$Series;->getDataSize()I

    move-result v26

    move/from16 v8, v26

    .line 266
    .local v8, "dataSize":I
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljavafx/collections/ObservableList;->size()I

    move-result v26

    move/from16 v9, v26

    .line 267
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

    .line 268
    const/16 v26, 0x1

    move/from16 v7, v26

    .line 269
    move-object/from16 v26, v4

    move/from16 v27, v6

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getItem(I)Ljavafx/scene/chart/XYChart$Data;

    move-result-object v26

    move-object/from16 v10, v26

    .line 270
    .local v10, "p1":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v26, v4

    move/from16 v27, v6

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Series;->getItem(I)Ljavafx/scene/chart/XYChart$Data;

    move-result-object v26

    move-object/from16 v11, v26

    .line 271
    .local v11, "p2":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v12, v26

    .line 272
    .local v12, "x1":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v14, v26

    .line 273
    .local v14, "y1":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v11

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v16, v26

    .line 274
    .local v16, "x3":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v11

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v18, v26

    .line 276
    .local v18, "y3":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v20, v26

    .line 277
    .local v20, "x2":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 280
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

    .line 281
    .local v24, "y":D
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v27

    move-wide/from16 v28, v20

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 282
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v27

    move-wide/from16 v28, v22

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 283
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v27

    move-wide/from16 v28, v20

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 284
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v27

    move-wide/from16 v28, v24

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 290
    .line 312
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

    .line 313
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

    .line 314
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

    .line 315
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

    .line 316
    invoke-static/range {v32 .. v33}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v32

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v35, v5

    move-object/from16 v36, v4

    invoke-static/range {v33 .. v36}, Ljavafx/scene/chart/AreaChart$$Lambda$3;->lambdaFactory$(Ljavafx/scene/chart/AreaChart;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;

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

    .line 321
    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v39

    move-object/from16 v40, v3

    .line 322
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

    .line 323
    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v39

    move-object/from16 v40, v3

    .line 324
    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v40

    sget-object v41, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v38 .. v41}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v37, v35, v36

    invoke-direct/range {v31 .. v34}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v30, v28, v29

    .line 313
    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/AreaChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 327
    .line 333
    .end local v7    # "animate":Z
    .end local v8    # "dataSize":I
    .end local v9    # "dataListSize":I
    :cond_2
    :goto_1
    return-void

    .line 291
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

    .line 292
    const/16 v26, 0x1

    move/from16 v7, v26

    .line 293
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

    .line 294
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

    .line 295
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

    .line 296
    const/16 v26, 0x1

    move/from16 v7, v26

    .line 297
    move/from16 v26, v9

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    move/from16 v10, v26

    .line 298
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

    .line 299
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

    .line 300
    goto/16 :goto_0

    .end local v10    # "last":I
    :cond_5
    move-object/from16 v26, v5

    if-eqz v26, :cond_1

    .line 302
    move-object/from16 v26, v5

    const-wide/16 v27, 0x0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 303
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

    .line 304
    .local v10, "ft":Ljavafx/animation/FadeTransition;
    move-object/from16 v26, v10

    const-wide/16 v27, 0x0

    invoke-virtual/range {v26 .. v28}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 305
    move-object/from16 v26, v10

    move-object/from16 v27, v2

    move-object/from16 v28, v5

    move-object/from16 v29, v4

    move-object/from16 v30, v3

    invoke-static/range {v27 .. v30}, Ljavafx/scene/chart/AreaChart$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/AreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 309
    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Ljavafx/animation/FadeTransition;->play()V

    goto/16 :goto_0

    .line 328
    .end local v7    # "animate":Z
    .end local v8    # "dataSize":I
    .end local v9    # "dataListSize":I
    .end local v10    # "ft":Ljavafx/animation/FadeTransition;
    :cond_6
    move-object/from16 v26, v3

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/chart/XYChart$Data;->setSeries(Ljavafx/scene/chart/XYChart$Series;)V

    .line 329
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v26

    move-object/from16 v27, v5

    invoke-interface/range {v26 .. v27}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v26

    .line 330
    move-object/from16 v26, v2

    move-object/from16 v27, v4

    move-object/from16 v28, v3

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/AreaChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    goto/16 :goto_1
.end method

.method public final getCreateSymbols()Z
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/AreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
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
    .line 577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    invoke-static {}, Ljavafx/scene/chart/AreaChart;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    return-object v0
.end method

.method protected layoutPlotChildren()V
    .locals 35

    .prologue
    .line 439
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/AreaChart;->getDataSize()I

    move-result v27

    invoke-direct/range {v26 .. v27}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v4, v25

    .line 440
    .local v4, "constructedPath":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/shape/LineTo;>;"
    const/16 v25, 0x0

    move/from16 v5, v25

    .local v5, "seriesIndex":I
    :goto_0
    move/from16 v25, v5

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getDataSize()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 441
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/AreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v25

    move/from16 v26, v5

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v6, v25

    .line 442
    .local v6, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/chart/AreaChart;->seriesYMultiplierMap:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v26, v6

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v7, v25

    .line 443
    .local v7, "seriesYAnimMultiplier":Ljavafx/beans/property/DoubleProperty;
    const-wide/16 v25, 0x0

    move-wide/from16 v8, v25

    .line 444
    .local v8, "lastX":D
    move-object/from16 v25, v6

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v25

    check-cast v25, Ljavafx/scene/Group;

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v25

    move-object/from16 v10, v25

    .line 445
    .local v10, "children":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object/from16 v25, v10

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/shape/Path;

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v25

    move-object/from16 v11, v25

    .line 446
    .local v11, "seriesLine":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    move-object/from16 v25, v10

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/shape/Path;

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v25

    move-object/from16 v12, v25

    .line 447
    .local v12, "fillPath":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    move-object/from16 v25, v11

    invoke-interface/range {v25 .. v25}, Ljavafx/collections/ObservableList;->clear()V

    .line 448
    move-object/from16 v25, v12

    invoke-interface/range {v25 .. v25}, Ljavafx/collections/ObservableList;->clear()V

    .line 449
    move-object/from16 v25, v4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 450
    move-object/from16 v25, v3

    move-object/from16 v26, v6

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/chart/AreaChart;->getDisplayedDataIterator(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/Iterator;

    move-result-object v25

    move-object/from16 v13, v25

    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_0
    :goto_1
    move-object/from16 v25, v13

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 451
    move-object/from16 v25, v13

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v14, v25

    .line 452
    .local v14, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-object/from16 v26, v14

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v25

    move-wide/from16 v15, v25

    .line 453
    .local v15, "x":D
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-object/from16 v26, v3

    .line 454
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v27

    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v27

    move-object/from16 v29, v7

    invoke-virtual/range {v29 .. v29}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v29

    mul-double v27, v27, v29

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v26

    .line 453
    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v25

    move-wide/from16 v17, v25

    .line 455
    .local v17, "y":D
    move-object/from16 v25, v4

    new-instance v26, Ljavafx/scene/shape/LineTo;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    move-wide/from16 v28, v15

    move-wide/from16 v30, v17

    invoke-direct/range {v27 .. v31}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 456
    move-wide/from16 v25, v15

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v25

    if-nez v25, :cond_0

    move-wide/from16 v25, v17

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 457
    goto :goto_1

    .line 459
    :cond_1
    move-wide/from16 v25, v15

    move-wide/from16 v8, v25

    .line 460
    move-object/from16 v25, v14

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v25

    move-object/from16 v19, v25

    .line 461
    .local v19, "symbol":Ljavafx/scene/Node;
    move-object/from16 v25, v19

    if-eqz v25, :cond_2

    .line 462
    move-object/from16 v25, v19

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v25

    move-wide/from16 v20, v25

    .line 463
    .local v20, "w":D
    move-object/from16 v25, v19

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v25

    move-wide/from16 v22, v25

    .line 464
    .local v22, "h":D
    move-object/from16 v25, v19

    move-wide/from16 v26, v15

    move-wide/from16 v28, v20

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    sub-double v26, v26, v28

    move-wide/from16 v28, v17

    move-wide/from16 v30, v22

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v20

    move-wide/from16 v32, v22

    invoke-virtual/range {v25 .. v33}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 466
    .end local v20    # "w":D
    .end local v22    # "h":D
    :cond_2
    goto/16 :goto_1

    .line 468
    .end local v14    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v15    # "x":D
    .end local v17    # "y":D
    .end local v19    # "symbol":Ljavafx/scene/Node;
    :cond_3
    move-object/from16 v25, v4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 469
    move-object/from16 v25, v4

    invoke-static {}, Ljavafx/scene/chart/AreaChart$$Lambda$4;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 470
    move-object/from16 v25, v4

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/shape/LineTo;

    move-object/from16 v13, v25

    .line 472
    .local v13, "first":Ljavafx/scene/shape/LineTo;
    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v25

    move-wide/from16 v14, v25

    .line 473
    .local v14, "displayYPos":D
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v26

    move-wide/from16 v27, v14

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/chart/Axis;->getValueForDisplay(D)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v25

    move-wide/from16 v16, v25

    .line 478
    .local v16, "numericYPos":D
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v25

    move-wide/from16 v18, v25

    .line 479
    .local v18, "yAxisZeroPos":D
    move-wide/from16 v25, v18

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v25

    if-nez v25, :cond_5

    const/16 v25, 0x1

    :goto_2
    move/from16 v20, v25

    .line 480
    .local v20, "isYAxisZeroPosVisible":Z
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/chart/Axis;->getHeight()D

    move-result-wide v25

    move-wide/from16 v21, v25

    .line 481
    .local v21, "yAxisHeight":D
    move/from16 v25, v20

    if-eqz v25, :cond_6

    move-wide/from16 v25, v18

    :goto_3
    move-wide/from16 v23, v25

    .line 484
    .local v23, "yFillPos":D
    move-object/from16 v25, v11

    new-instance v26, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    move-object/from16 v28, v13

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v28

    move-wide/from16 v30, v14

    invoke-direct/range {v27 .. v31}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 485
    move-object/from16 v25, v12

    new-instance v26, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    move-object/from16 v28, v13

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v28

    move-wide/from16 v30, v23

    invoke-direct/range {v27 .. v31}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 487
    move-object/from16 v25, v11

    move-object/from16 v26, v4

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v25

    .line 488
    move-object/from16 v25, v12

    move-object/from16 v26, v4

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v25

    .line 489
    move-object/from16 v25, v12

    new-instance v26, Ljavafx/scene/shape/LineTo;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    move-wide/from16 v28, v8

    move-wide/from16 v30, v23

    invoke-direct/range {v27 .. v31}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 490
    move-object/from16 v25, v12

    new-instance v26, Ljavafx/scene/shape/ClosePath;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    invoke-direct/range {v27 .. v27}, Ljavafx/scene/shape/ClosePath;-><init>()V

    invoke-interface/range {v25 .. v26}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 440
    .end local v13    # "first":Ljavafx/scene/shape/LineTo;
    .end local v14    # "displayYPos":D
    .end local v16    # "numericYPos":D
    .end local v18    # "yAxisZeroPos":D
    .end local v20    # "isYAxisZeroPosVisible":Z
    .end local v21    # "yAxisHeight":D
    .end local v23    # "yFillPos":D
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 479
    .restart local v13    # "first":Ljavafx/scene/shape/LineTo;
    .restart local v14    # "displayYPos":D
    .restart local v16    # "numericYPos":D
    .restart local v18    # "yAxisZeroPos":D
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 481
    .restart local v20    # "isYAxisZeroPosVisible":Z
    .restart local v21    # "yAxisHeight":D
    :cond_6
    move-wide/from16 v25, v16

    const-wide/16 v27, 0x0

    cmpg-double v25, v25, v27

    if-gez v25, :cond_7

    move-wide/from16 v25, v16

    move-wide/from16 v27, v21

    sub-double v25, v25, v27

    goto :goto_3

    :cond_7
    move-wide/from16 v25, v21

    goto/16 :goto_3

    .line 493
    .end local v6    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v7    # "seriesYAnimMultiplier":Ljavafx/beans/property/DoubleProperty;
    .end local v8    # "lastX":D
    .end local v10    # "children":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    .end local v11    # "seriesLine":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    .end local v12    # "fillPath":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    .end local v13    # "first":Ljavafx/scene/shape/LineTo;
    .end local v14    # "displayYPos":D
    .end local v16    # "numericYPos":D
    .end local v18    # "yAxisZeroPos":D
    .end local v20    # "isYAxisZeroPosVisible":Z
    .end local v21    # "yAxisHeight":D
    :cond_8
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
    .line 358
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
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

    .line 359
    .local v3, "seriesLine":Ljavafx/scene/shape/Path;
    new-instance v11, Ljavafx/scene/shape/Path;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    invoke-direct {v12}, Ljavafx/scene/shape/Path;-><init>()V

    move-object v4, v11

    .line 360
    .local v4, "fillPath":Ljavafx/scene/shape/Path;
    move-object v11, v3

    sget-object v12, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v11, v12}, Ljavafx/scene/shape/Path;->setStrokeLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)V

    .line 361
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

    .line 362
    .local v5, "areaGroup":Ljavafx/scene/Group;
    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljavafx/scene/chart/XYChart$Series;->setNode(Ljavafx/scene/Node;)V

    .line 364
    new-instance v11, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    move-object v13, v0

    const-string v14, "seriesYMultiplier"

    invoke-direct {v12, v13, v14}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v11

    .line 365
    .local v6, "seriesYAnimMultiplier":Ljavafx/beans/property/DoubleProperty;
    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/chart/AreaChart;->seriesYMultiplierMap:Ljava/util/Map;

    move-object v12, v1

    move-object v13, v6

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 367
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/AreaChart;->shouldAnimate()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 368
    move-object v11, v6

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 372
    :goto_0
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    move-object v12, v5

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 373
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v11

    .line 374
    .local v7, "keyFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/AreaChart;->shouldAnimate()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 376
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

    .line 377
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

    .line 378
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 376
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 380
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

    .line 381
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Group;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 380
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 383
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

    .line 384
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 383
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 387
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

    .line 388
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v11

    move v12, v8

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/chart/XYChart$Data;

    move-object v9, v11

    .line 389
    .local v9, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v11, v0

    move-object v12, v1

    move v13, v2

    move-object v14, v9

    move v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/scene/chart/AreaChart;->createSymbol(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v11

    move-object v10, v11

    .line 390
    .local v10, "symbol":Ljavafx/scene/Node;
    move-object v11, v10

    if-eqz v11, :cond_1

    .line 391
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/AreaChart;->shouldAnimate()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 392
    move-object v11, v10

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 393
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    move-object v12, v10

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 395
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

    .line 396
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

    .line 387
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 370
    .end local v7    # "keyFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    .end local v8    # "j":I
    .end local v9    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v10    # "symbol":Ljavafx/scene/Node;
    :cond_2
    move-object v11, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 399
    .restart local v7    # "keyFrames":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/KeyFrame;>;"
    .restart local v8    # "j":I
    .restart local v9    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .restart local v10    # "symbol":Ljavafx/scene/Node;
    :cond_3
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    move-object v12, v10

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_2

    .line 403
    .end local v9    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v10    # "symbol":Ljavafx/scene/Node;
    :cond_4
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/chart/AreaChart;->shouldAnimate()Z

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

    invoke-virtual {v11, v12}, Ljavafx/scene/chart/AreaChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 404
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
    .line 342
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/chart/XYChart$Series;>;"
    const/4 v9, 0x0

    move v2, v9

    .local v2, "i":I
    :goto_0
    move v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/chart/AreaChart;->getDataSize()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 343
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/AreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v2

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Series;

    move-object v3, v9

    .line 344
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

    .line 345
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

    .line 346
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

    .line 347
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

    .line 348
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

    .line 349
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v6

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Data;

    move-object v7, v9

    .line 350
    .local v7, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v9

    move-object v8, v9

    .line 351
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

    .line 348
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 342
    .end local v7    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v8    # "node":Ljavafx/scene/Node;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 354
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
    .line 423
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/chart/AreaChart;->updateDefaultColorIndex(Ljavafx/scene/chart/XYChart$Series;)V

    .line 425
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/AreaChart;->seriesYMultiplierMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 427
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/AreaChart;->shouldAnimate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    new-instance v4, Ljavafx/animation/Timeline;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v7, v8, v9}, Ljavafx/scene/chart/AreaChart;->createSeriesRemoveTimeLine(Ljavafx/scene/chart/XYChart$Series;J)[Ljavafx/animation/KeyFrame;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/animation/Timeline;-><init>([Ljavafx/animation/KeyFrame;)V

    move-object v2, v4

    .line 429
    .local v2, "tl":Ljavafx/animation/Timeline;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->play()V

    .line 430
    .line 435
    .end local v2    # "tl":Ljavafx/animation/Timeline;
    :goto_0
    return-void

    .line 431
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 432
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

    invoke-virtual {v4}, Ljavafx/scene/chart/AreaChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 433
    .end local v3    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/AreaChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    goto :goto_0
.end method

.method public final setCreateSymbols(Z)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/AreaChart;->createSymbols:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected updateAxisRange()V
    .locals 15

    .prologue
    .line 162
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v10

    move-object v2, v10

    .line 163
    .local v2, "xa":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v10

    move-object v3, v10

    .line 164
    .local v3, "ya":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    const/4 v10, 0x0

    move-object v4, v10

    .line 165
    .local v4, "xData":Ljava/util/List;, "Ljava/util/List<TX;>;"
    const/4 v10, 0x0

    move-object v5, v10

    .line 166
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

    .line 167
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

    .line 168
    :cond_1
    move-object v10, v4

    if-nez v10, :cond_2

    move-object v10, v5

    if-eqz v10, :cond_a

    .line 169
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/AreaChart;->getData()Ljavafx/collections/ObservableList;

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

    .line 170
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

    .line 171
    .local v9, "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v10, v4

    if-eqz v10, :cond_3

    move-object v10, v4

    move-object v11, v9

    invoke-virtual {v11}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 172
    :cond_3
    move-object v10, v5

    if-eqz v10, :cond_4

    move-object v10, v5

    move-object v11, v9

    invoke-virtual {v11}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 173
    :cond_4
    goto :goto_1

    .line 174
    .end local v9    # "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_5
    goto :goto_0

    .line 175
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

    invoke-virtual {v10}, Ljavafx/scene/chart/AreaChart;->getXAxis()Ljavafx/scene/chart/Axis;

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

    .line 176
    :cond_7
    move-object v10, v2

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 178
    :cond_8
    move-object v10, v5

    if-eqz v10, :cond_a

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/AreaChart;->getYAxis()Ljavafx/scene/chart/Axis;

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

    .line 179
    :cond_9
    move-object v10, v3

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 182
    :cond_a
    return-void
.end method

.method protected updateLegend()V
    .locals 11

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AreaChart;, "Ljavafx/scene/chart/AreaChart<TX;TY;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/AreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 517
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/AreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 518
    const/4 v4, 0x0

    move v1, v4

    .local v1, "seriesIndex":I
    :goto_0
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/AreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 519
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/AreaChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v4

    .line 520
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

    .line 521
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

    .line 523
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/AreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v1    # "seriesIndex":I
    .end local v2    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v3    # "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/AreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 527
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/AreaChart;->getLegend()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_1

    .line 528
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/AreaChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/AreaChart;->setLegend(Ljavafx/scene/Node;)V

    .line 533
    :cond_1
    :goto_1
    return-void

    .line 531
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/AreaChart;->setLegend(Ljavafx/scene/Node;)V

    goto :goto_1
.end method
