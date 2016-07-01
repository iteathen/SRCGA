.class public Ljavafx/scene/chart/StackedBarChart;
.super Ljavafx/scene/chart/XYChart;
.source "StackedBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/StackedBarChart$StyleableProperties;
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


# static fields
.field private static final HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private categoriesListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoryAxis:Ljavafx/scene/chart/CategoryAxis;

.field private categoryGap:Ljavafx/beans/property/DoubleProperty;

.field private legend:Lcom/sun/javafx/charts/Legend;

.field private final orientation:Ljavafx/geometry/Orientation;

.field private seriesCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/chart/XYChart$Series;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;>;>;"
        }
    .end annotation
.end field

.field private seriesDefaultColorIndex:I

.field private seriesDefaultColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private valueAxis:Ljavafx/scene/chart/ValueAxis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 603
    const-string v0, "vertical"

    .line 604
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/chart/StackedBarChart;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 606
    const-string v0, "horizontal"

    .line 607
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/chart/StackedBarChart;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 606
    return-void
.end method

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
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/StackedBarChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V
    .locals 11
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
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
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

    .line 67
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->seriesCategoryMap:Ljava/util/Map;

    .line 69
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/charts/Legend;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/sun/javafx/charts/Legend;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->legend:Lcom/sun/javafx/charts/Legend;

    .line 73
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorIndex:I

    .line 74
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorMap:Ljava/util/Map;

    .line 76
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/StackedBarChart$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/StackedBarChart$1;-><init>(Ljavafx/scene/chart/StackedBarChart;)V

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->categoriesListener:Ljavafx/collections/ListChangeListener;

    .line 99
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/StackedBarChart$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/chart/StackedBarChart$2;-><init>(Ljavafx/scene/chart/StackedBarChart;D)V

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    .line 154
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/StackedBarChart;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "stacked-bar-chart"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 155
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedBarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedBarChart;->setLegend(Ljavafx/scene/Node;)V

    .line 156
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/chart/ValueAxis;

    if-eqz v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/chart/CategoryAxis;

    if-nez v4, :cond_2

    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/chart/ValueAxis;

    if-eqz v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/chart/CategoryAxis;

    if-nez v4, :cond_2

    .line 158
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "Axis type incorrect, one of X,Y should be CategoryAxis and the other NumberAxis"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/chart/CategoryAxis;

    if-eqz v4, :cond_3

    .line 161
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljavafx/scene/chart/CategoryAxis;

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    .line 162
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Ljavafx/scene/chart/ValueAxis;

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    .line 163
    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    .line 170
    :goto_0
    move-object v4, v0

    sget-object v5, Ljavafx/scene/chart/StackedBarChart;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v5, v6}, Ljavafx/scene/chart/StackedBarChart;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 171
    move-object v4, v0

    sget-object v5, Ljavafx/scene/chart/StackedBarChart;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v4, v5, v6}, Ljavafx/scene/chart/StackedBarChart;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 172
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/StackedBarChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 173
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/StackedBarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    invoke-virtual {v4}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedBarChart;->categoriesListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 174
    return-void

    .line 165
    :cond_3
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Ljavafx/scene/chart/CategoryAxis;

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    .line 166
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljavafx/scene/chart/ValueAxis;

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    .line 167
    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    goto :goto_0

    .line 170
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 171
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;D)V
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
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "categoryGap"
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
            "<TX;TY;>;>;D)V"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, p3

    .local v3, "data":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    move-wide v4, p4

    .local v4, "categoryGap":D
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljavafx/scene/chart/StackedBarChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;)V

    .line 187
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/StackedBarChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 188
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/chart/StackedBarChart;->setCategoryGap(D)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/chart/StackedBarChart;)Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/StackedBarChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/StackedBarChart;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/chart/StackedBarChart;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/StackedBarChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedBarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/StackedBarChart;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/StackedBarChart;->lambda$dataItemRemoved$584(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/StackedBarChart;->lambda$createDataRemoveTimeline$585(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/StackedBarChart;->lambda$createDataRemoveTimeline$586(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/StackedBarChart;->lambda$seriesRemoved$587(Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/StackedBarChart;->lambda$seriesRemoved$588(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private animateDataAdd(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;",
            "Ljavafx/scene/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object/from16 v2, p1

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v3, p2

    .local v3, "bar":Ljavafx/scene/Node;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_1

    .line 263
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .line 264
    .local v4, "barVal":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 265
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const-string v7, "negative"

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 267
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/StackedBarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/StackedBarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 268
    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/StackedBarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedBarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/chart/StackedBarChart;->setCurrentDisplayedYValue(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;)V

    .line 269
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/StackedBarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 270
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/StackedBarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 271
    move-object v6, v1

    new-instance v7, Ljavafx/animation/Timeline;

    move-object/from16 v23, v7

    move-object/from16 v7, v23

    move-object/from16 v8, v23

    const/4 v9, 0x2

    new-array v9, v9, [Ljavafx/animation/KeyFrame;

    move-object/from16 v23, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v23

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    sget-object v14, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v15, 0x1

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

    move-object/from16 v21, v2

    .line 272
    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/StackedBarChart;->currentDisplayedYValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v20

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Ljavafx/scene/chart/StackedBarChart;->getCurrentDisplayedYValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v12, v10, v11

    move-object/from16 v23, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v23

    const/4 v11, 0x1

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    const-wide v14, 0x4085e00000000000L    # 700.0

    .line 273
    invoke-static {v14, v15}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v14

    const/4 v15, 0x1

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

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/StackedBarChart;->currentDisplayedYValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v19 .. v22}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Ljavafx/animation/Timeline;-><init>([Ljavafx/animation/KeyFrame;)V

    .line 271
    invoke-virtual {v6, v7}, Ljavafx/scene/chart/StackedBarChart;->animate(Ljavafx/animation/Animation;)V

    .line 289
    :goto_0
    return-void

    .line 276
    .end local v4    # "barVal":D
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .line 277
    .restart local v4    # "barVal":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 278
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const-string v7, "negative"

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 280
    :cond_2
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 281
    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/chart/StackedBarChart;->setCurrentDisplayedXValue(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;)V

    .line 282
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/StackedBarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 283
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 284
    move-object v6, v1

    new-instance v7, Ljavafx/animation/Timeline;

    move-object/from16 v23, v7

    move-object/from16 v7, v23

    move-object/from16 v8, v23

    const/4 v9, 0x2

    new-array v9, v9, [Ljavafx/animation/KeyFrame;

    move-object/from16 v23, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v23

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    sget-object v14, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v15, 0x1

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

    move-object/from16 v21, v2

    .line 285
    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/StackedBarChart;->currentDisplayedXValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v20

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Ljavafx/scene/chart/StackedBarChart;->getCurrentDisplayedXValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v12, v10, v11

    move-object/from16 v23, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v23

    const/4 v11, 0x1

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    const-wide v14, 0x4085e00000000000L    # 700.0

    .line 286
    invoke-static {v14, v15}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v14

    const/4 v15, 0x1

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

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/StackedBarChart;->currentDisplayedXValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v19 .. v22}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Ljavafx/animation/Timeline;-><init>([Ljavafx/animation/KeyFrame;)V

    .line 284
    invoke-virtual {v6, v7}, Ljavafx/scene/chart/StackedBarChart;->animate(Ljavafx/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private createBar(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;
    .locals 14

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;
    move/from16 v2, p2

    .local v2, "seriesIndex":I
    move-object/from16 v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;
    move/from16 v4, p4

    .local v4, "itemIndex":I
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 533
    .local v5, "bar":Ljavafx/scene/Node;
    move-object v7, v5

    if-nez v7, :cond_0

    .line 534
    new-instance v7, Ljavafx/scene/layout/StackPane;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v5, v7

    .line 535
    move-object v7, v5

    sget-object v8, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 536
    move-object v7, v5

    const-string v8, "Bar"

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->setAccessibleRoleDescription(Ljava/lang/String;)V

    .line 537
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    invoke-static {}, Ljavafx/application/Platform;->accessibilityActiveProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 538
    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/XYChart$Data;->setNode(Ljavafx/scene/Node;)V

    .line 540
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorMap:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 541
    .local v6, "defaultColorStyleClass":Ljava/lang/String;
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    const-string v11, "chart-bar"

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "series"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x3

    move-object v11, v6

    aput-object v11, v9, v10

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    .line 542
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    return-object v0
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
    .line 329
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object/from16 v2, p1

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v3, p2

    .local v3, "bar":Ljavafx/scene/Node;
    move-object/from16 v4, p3

    .local v4, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    new-instance v6, Ljavafx/animation/Timeline;

    move-object/from16 v22, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v22

    invoke-direct {v7}, Ljavafx/animation/Timeline;-><init>()V

    move-object v5, v6

    .line 330
    .local v5, "t":Ljavafx/animation/Timeline;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_0

    .line 331
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/StackedBarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/StackedBarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 332
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

    const/4 v13, 0x1

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 333
    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/chart/StackedBarChart;->currentDisplayedYValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 334
    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/chart/StackedBarChart;->getCurrentDisplayedYValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;

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

    const-wide v12, 0x4085e00000000000L    # 700.0

    .line 335
    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    move-object v13, v1

    move-object v14, v3

    invoke-static {v13, v14}, Ljavafx/scene/chart/StackedBarChart$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x0

    new-instance v17, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 338
    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/chart/StackedBarChart;->currentDisplayedYValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v18 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v17, v15, v16

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    .line 332
    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v6

    .line 349
    :goto_0
    move-object v6, v5

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    return-object v1

    .line 340
    .restart local v1    # "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 341
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

    const/4 v13, 0x1

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x0

    new-instance v16, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 342
    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/chart/StackedBarChart;->currentDisplayedXValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 343
    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/chart/StackedBarChart;->getCurrentDisplayedXValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;

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

    const-wide v12, 0x4085e00000000000L    # 700.0

    .line 344
    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    move-object v13, v1

    move-object v14, v3

    invoke-static {v13, v14}, Ljavafx/scene/chart/StackedBarChart$$Lambda$3;->lambdaFactory$(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljavafx/animation/KeyValue;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x0

    new-instance v17, Ljavafx/animation/KeyValue;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 347
    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/chart/StackedBarChart;->currentDisplayedXValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v18 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v17, v15, v16

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    .line 341
    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_0
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
    .line 590
    # getter for: Ljavafx/scene/chart/StackedBarChart$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/StackedBarChart$StyleableProperties;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getDataItem(Ljavafx/scene/chart/XYChart$Series;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;"
        }
    .end annotation

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v2, p2

    .local v2, "category":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/StackedBarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v3, v4

    .line 547
    .local v3, "catmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;>;"
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v2

    .line 548
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private synthetic lambda$createDataRemoveTimeline$585(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "bar":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/StackedBarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 337
    return-void
.end method

.method private synthetic lambda$createDataRemoveTimeline$586(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "bar":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/StackedBarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 346
    return-void
.end method

.method private synthetic lambda$dataItemRemoved$584(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 7

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v3, p3

    .local v3, "event":Ljavafx/event/ActionEvent;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/chart/StackedBarChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 232
    return-void
.end method

.method private synthetic lambda$seriesRemoved$587(Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/ActionEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/StackedBarChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    .line 361
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/StackedBarChart;->requestChartLayout()V

    .line 362
    return-void
.end method

.method private synthetic lambda$seriesRemoved$588(Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "bar":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/StackedBarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 379
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 380
    return-void
.end method


# virtual methods
.method public categoryGapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedBarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    return-object v0
.end method

.method protected dataItemAdded(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;)V
    .locals 14
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
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move/from16 v2, p2

    .local v2, "itemIndex":I
    move-object/from16 v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v9, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v8, v9, :cond_1

    .line 195
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v4, v8

    .line 202
    .local v4, "category":Ljava/lang/String;
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/chart/StackedBarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v5, v8

    .line 204
    .local v5, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;>;"
    move-object v8, v5

    if-nez v8, :cond_0

    .line 205
    new-instance v8, Ljava/util/HashMap;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v5, v8

    .line 206
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/chart/StackedBarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v9, v1

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 209
    :cond_0
    move-object v8, v5

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object v8, v5

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    :goto_1
    move-object v6, v8

    .line 210
    .local v6, "itemList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v8, v6

    move-object v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 211
    move-object v8, v5

    move-object v9, v4

    move-object v10, v6

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 213
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/chart/StackedBarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v11, v1

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    move-object v11, v3

    move v12, v2

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/chart/StackedBarChart;->createBar(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v8

    move-object v7, v8

    .line 214
    .local v7, "bar":Ljavafx/scene/Node;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/chart/StackedBarChart;->shouldAnimate()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 215
    move-object v8, v0

    move-object v9, v3

    move-object v10, v7

    invoke-direct {v8, v9, v10}, Ljavafx/scene/chart/StackedBarChart;->animateDataAdd(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;)V

    .line 219
    :goto_2
    return-void

    .line 197
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;>;"
    .end local v6    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    .end local v7    # "bar":Ljavafx/scene/Node;
    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v4, v8

    .restart local v4    # "category":Ljava/lang/String;
    goto :goto_0

    .line 209
    .restart local v5    # "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;>;"
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 217
    .restart local v6    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    .restart local v7    # "bar":Ljavafx/scene/Node;
    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/chart/StackedBarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v7

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2
.end method

.method protected dataItemChanged(Ljavafx/scene/chart/XYChart$Data;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_1

    .line 245
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v2, v6

    .line 246
    .local v2, "barVal":D
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/StackedBarChart;->getCurrentDisplayedYValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .line 251
    .local v4, "currentVal":D
    :goto_0
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 253
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const-string v7, "negative"

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 248
    .end local v2    # "barVal":D
    .end local v4    # "currentVal":D
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v2, v6

    .line 249
    .restart local v2    # "barVal":D
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/StackedBarChart;->getCurrentDisplayedXValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .restart local v4    # "currentVal":D
    goto :goto_0

    .line 254
    :cond_2
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 256
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const-string v7, "negative"

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1
.end method

.method protected dataItemRemoved(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V
    .locals 9
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
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 224
    .local v3, "bar":Ljavafx/scene/Node;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 225
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 228
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/StackedBarChart;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/chart/StackedBarChart;->createDataRemoveTimeline(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/animation/Timeline;

    move-result-object v5

    move-object v4, v5

    .line 230
    .local v4, "t":Ljavafx/animation/Timeline;
    move-object v5, v4

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-static {v6, v7, v8}, Ljavafx/scene/chart/StackedBarChart$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 233
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->play()V

    .line 234
    .line 238
    .end local v4    # "t":Ljavafx/animation/Timeline;
    :goto_0
    return-void

    .line 235
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/StackedBarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 236
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/StackedBarChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    goto :goto_0
.end method

.method public getCategoryGap()D
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedBarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    return-wide v0
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
    .line 599
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    invoke-static {}, Ljavafx/scene/chart/StackedBarChart;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    return-object v0
.end method

.method getSeriesSize()I
    .locals 4

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    const/4 v3, 0x0

    move v1, v3

    .line 499
    .local v1, "count":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/StackedBarChart;->getDisplayedSeriesIterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 500
    .local v2, "seriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    return v0
.end method

.method protected layoutPlotChildren()V
    .locals 49

    .prologue
    .line 438
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/CategoryAxis;->getCategorySpacing()D

    move-result-wide v38

    move-wide/from16 v4, v38

    .line 440
    .local v4, "catSpace":D
    move-wide/from16 v38, v4

    move-object/from16 v40, v3

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/StackedBarChart;->getCategoryGap()D

    move-result-wide v40

    sub-double v38, v38, v40

    move-wide/from16 v6, v38

    .line 441
    .local v6, "availableBarSpace":D
    move-wide/from16 v38, v6

    move-wide/from16 v8, v38

    .line 442
    .local v8, "barWidth":D
    move-wide/from16 v38, v4

    move-object/from16 v40, v3

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/chart/StackedBarChart;->getCategoryGap()D

    move-result-wide v40

    sub-double v38, v38, v40

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    div-double v38, v38, v40

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v10, v38

    .line 443
    .local v10, "barOffset":D
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v38

    move-wide/from16 v12, v38

    .line 444
    .local v12, "lowerBoundValue":D
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/ValueAxis;->getUpperBound()D

    move-result-wide v38

    move-wide/from16 v14, v38

    .line 446
    .local v14, "upperBoundValue":D
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    move-object/from16 v16, v38

    :goto_0
    move-object/from16 v38, v16

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_6

    move-object/from16 v38, v16

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v17, v38

    .line 447
    .local v17, "category":Ljava/lang/String;
    const-wide/16 v38, 0x0

    move-wide/from16 v18, v38

    .line 448
    .local v18, "currentPositiveValue":D
    const-wide/16 v38, 0x0

    move-wide/from16 v20, v38

    .line 449
    .local v20, "currentNegativeValue":D
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/StackedBarChart;->getDisplayedSeriesIterator()Ljava/util/Iterator;

    move-result-object v38

    move-object/from16 v22, v38

    .line 450
    .local v22, "seriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :goto_1
    move-object/from16 v38, v22

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_5

    .line 451
    move-object/from16 v38, v22

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v23, v38

    .line 452
    .local v23, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v38, v3

    move-object/from16 v39, v23

    move-object/from16 v40, v17

    invoke-direct/range {v38 .. v40}, Ljavafx/scene/chart/StackedBarChart;->getDataItem(Ljavafx/scene/chart/XYChart$Series;Ljava/lang/String;)Ljava/util/List;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v38

    move-object/from16 v24, v38

    :goto_2
    move-object/from16 v38, v24

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_4

    move-object/from16 v38, v24

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v25, v38

    .line 453
    .local v25, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v38, v25

    if-eqz v38, :cond_0

    .line 454
    move-object/from16 v38, v25

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v38

    move-object/from16 v26, v38

    .line 457
    .local v26, "bar":Ljavafx/scene/Node;
    move-object/from16 v38, v3

    move-object/from16 v39, v25

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/StackedBarChart;->getCurrentDisplayedXValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v31, v38

    .line 458
    .local v31, "xValue":Ljava/lang/Object;, "TX;"
    move-object/from16 v38, v3

    move-object/from16 v39, v25

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/StackedBarChart;->getCurrentDisplayedYValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v32, v38

    .line 459
    .local v32, "yValue":Ljava/lang/Object;, "TY;"
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    move-object/from16 v38, v0

    sget-object v39, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 460
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v38

    move-object/from16 v39, v31

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v38

    move-wide/from16 v27, v38

    .line 461
    .local v27, "categoryPos":D
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/StackedBarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v38

    move-object/from16 v39, v32

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v38

    move-wide/from16 v29, v38

    .line 468
    .local v29, "valNumber":D
    :goto_3
    move-object/from16 v38, v26

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v38

    const-string v39, "negative"

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v38

    move/from16 v37, v38

    .line 469
    .local v37, "isNegative":Z
    move/from16 v38, v37

    if-nez v38, :cond_2

    .line 470
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v38, v0

    move-wide/from16 v39, v18

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v38

    move-wide/from16 v33, v38

    .line 471
    .local v33, "bottom":D
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v38, v0

    move-wide/from16 v39, v18

    move-wide/from16 v41, v29

    add-double v39, v39, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v38

    move-wide/from16 v35, v38

    .line 472
    .local v35, "top":D
    move-wide/from16 v38, v18

    move-wide/from16 v40, v29

    add-double v38, v38, v40

    move-wide/from16 v18, v38

    .line 479
    :goto_4
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    move-object/from16 v38, v0

    sget-object v39, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 480
    move-object/from16 v38, v26

    move-wide/from16 v39, v27

    move-wide/from16 v41, v10

    add-double v39, v39, v41

    move-wide/from16 v41, v35

    move-wide/from16 v43, v8

    move-wide/from16 v45, v33

    move-wide/from16 v47, v35

    sub-double v45, v45, v47

    invoke-virtual/range {v38 .. v46}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 488
    .end local v26    # "bar":Ljavafx/scene/Node;
    .end local v27    # "categoryPos":D
    .end local v29    # "valNumber":D
    .end local v31    # "xValue":Ljava/lang/Object;, "TX;"
    .end local v32    # "yValue":Ljava/lang/Object;, "TY;"
    .end local v33    # "bottom":D
    .end local v35    # "top":D
    .end local v37    # "isNegative":Z
    :cond_0
    :goto_5
    goto/16 :goto_2

    .line 463
    .restart local v26    # "bar":Ljavafx/scene/Node;
    .restart local v31    # "xValue":Ljava/lang/Object;, "TX;"
    .restart local v32    # "yValue":Ljava/lang/Object;, "TY;"
    :cond_1
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/StackedBarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v38

    move-object/from16 v39, v32

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v38

    move-wide/from16 v27, v38

    .line 464
    .restart local v27    # "categoryPos":D
    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v38

    move-object/from16 v39, v31

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->toNumericValue(Ljava/lang/Object;)D

    move-result-wide v38

    move-wide/from16 v29, v38

    .restart local v29    # "valNumber":D
    goto/16 :goto_3

    .line 474
    .restart local v37    # "isNegative":Z
    :cond_2
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v38, v0

    move-wide/from16 v39, v20

    move-wide/from16 v41, v29

    add-double v39, v39, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v38

    move-wide/from16 v33, v38

    .line 475
    .restart local v33    # "bottom":D
    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v38, v0

    move-wide/from16 v39, v20

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v38

    move-wide/from16 v35, v38

    .line 476
    .restart local v35    # "top":D
    move-wide/from16 v38, v20

    move-wide/from16 v40, v29

    add-double v38, v38, v40

    move-wide/from16 v20, v38

    goto :goto_4

    .line 483
    :cond_3
    move-object/from16 v38, v26

    move-wide/from16 v39, v33

    move-wide/from16 v41, v27

    move-wide/from16 v43, v10

    add-double v41, v41, v43

    move-wide/from16 v43, v35

    move-wide/from16 v45, v33

    sub-double v43, v43, v45

    move-wide/from16 v45, v8

    invoke-virtual/range {v38 .. v46}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    goto :goto_5

    .line 489
    .end local v25    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v26    # "bar":Ljavafx/scene/Node;
    .end local v27    # "categoryPos":D
    .end local v29    # "valNumber":D
    .end local v31    # "xValue":Ljava/lang/Object;, "TX;"
    .end local v32    # "yValue":Ljava/lang/Object;, "TY;"
    .end local v33    # "bottom":D
    .end local v35    # "top":D
    .end local v37    # "isNegative":Z
    :cond_4
    goto/16 :goto_1

    .line 490
    .end local v23    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_5
    goto/16 :goto_0

    .line 491
    .end local v17    # "category":Ljava/lang/String;
    .end local v18    # "currentPositiveValue":D
    .end local v20    # "currentNegativeValue":D
    .end local v22    # "seriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :cond_6
    return-void
.end method

.method protected seriesAdded(Ljavafx/scene/chart/XYChart$Series;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I)V"
        }
    .end annotation

    .prologue
    .line 293
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move/from16 v2, p2

    .local v2, "seriesIndex":I
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "default-color"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorIndex:I

    const/16 v14, 0x8

    rem-int/lit8 v13, v13, 0x8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    .line 294
    .local v3, "defaultColorStyleClass":Ljava/lang/String;
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorMap:Ljava/util/Map;

    move-object v13, v1

    move-object v14, v3

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 295
    move-object v12, v0

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    iget v13, v13, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorIndex:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorIndex:I

    .line 298
    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object v4, v12

    .line 299
    .local v4, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;>;"
    const/4 v12, 0x0

    move v5, v12

    .local v5, "j":I
    :goto_0
    move v12, v5

    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v13

    invoke-interface {v13}, Ljavafx/collections/ObservableList;->size()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 300
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v12

    move v13, v5

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/chart/XYChart$Data;

    move-object v6, v12

    .line 301
    .local v6, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v12, v0

    move-object v13, v1

    move v14, v2

    move-object v15, v6

    move/from16 v16, v5

    invoke-direct/range {v12 .. v16}, Ljavafx/scene/chart/StackedBarChart;->createBar(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v12

    move-object v7, v12

    .line 303
    .local v7, "bar":Ljavafx/scene/Node;
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v13, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_0

    .line 304
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v8, v12

    .line 309
    .local v8, "category":Ljava/lang/String;
    :goto_1
    move-object v12, v4

    move-object v13, v8

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object v12, v4

    move-object v13, v8

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    :goto_2
    move-object v9, v12

    .line 310
    .local v9, "itemList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v12, v9

    move-object v13, v6

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 311
    move-object v12, v4

    move-object v13, v8

    move-object v14, v9

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 312
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/chart/StackedBarChart;->shouldAnimate()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 313
    move-object v12, v0

    move-object v13, v6

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Ljavafx/scene/chart/StackedBarChart;->animateDataAdd(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;)V

    .line 299
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 306
    .end local v8    # "category":Ljava/lang/String;
    .end local v9    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_0
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v8, v12

    .restart local v8    # "category":Ljava/lang/String;
    goto :goto_1

    .line 309
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 315
    .restart local v9    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/chart/StackedBarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v13, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v12, v13, :cond_4

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    .line 316
    :goto_4
    move-wide v10, v12

    .line 317
    .local v10, "barVal":D
    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_3

    .line 318
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v12

    const-string v13, "negative"

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 320
    :cond_3
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/chart/StackedBarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v13, v7

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_3

    .line 315
    .end local v10    # "barVal":D
    :cond_4
    move-object v12, v6

    .line 316
    invoke-virtual {v12}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    goto :goto_4

    .line 323
    .end local v6    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v7    # "bar":Ljavafx/scene/Node;
    .end local v8    # "category":Ljava/lang/String;
    .end local v9    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_5
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 324
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/chart/StackedBarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v13, v1

    move-object v14, v4

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 326
    :cond_6
    return-void
.end method

.method protected seriesRemoved(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorIndex:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorIndex:I

    .line 357
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedBarChart;->shouldAnimate()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 358
    new-instance v9, Ljavafx/animation/ParallelTransition;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljavafx/animation/ParallelTransition;-><init>()V

    move-object v2, v9

    .line 359
    .local v2, "pt":Ljavafx/animation/ParallelTransition;
    move-object v9, v2

    move-object v10, v0

    move-object v11, v1

    invoke-static {v10, v11}, Ljavafx/scene/chart/StackedBarChart$$Lambda$4;->lambdaFactory$(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/animation/ParallelTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 363
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_0
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v9

    .line 364
    .local v4, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v9

    move-object v5, v9

    .line 366
    .local v5, "bar":Ljavafx/scene/Node;
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedBarChart;->getSeriesSize()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 367
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

    if-ge v9, v10, :cond_0

    .line 368
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v6

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Data;

    move-object v7, v9

    .line 369
    .local v7, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v9, v0

    move-object v10, v7

    move-object v11, v5

    move-object v12, v1

    invoke-direct {v9, v10, v11, v12}, Ljavafx/scene/chart/StackedBarChart;->createDataRemoveTimeline(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/animation/Timeline;

    move-result-object v9

    move-object v8, v9

    .line 370
    .local v8, "t":Ljavafx/animation/Timeline;
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v8

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 367
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 383
    .end local v6    # "j":I
    .end local v7    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v8    # "t":Ljavafx/animation/Timeline;
    :cond_0
    :goto_2
    goto :goto_0

    .line 374
    :cond_1
    new-instance v9, Ljavafx/animation/FadeTransition;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-wide v11, 0x4085e00000000000L    # 700.0

    invoke-static {v11, v12}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v11

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v6, v9

    .line 375
    .local v6, "ft":Ljavafx/animation/FadeTransition;
    move-object v9, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 376
    move-object v9, v6

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 377
    move-object v9, v6

    move-object v10, v0

    move-object v11, v5

    invoke-static {v10, v11}, Ljavafx/scene/chart/StackedBarChart$$Lambda$5;->lambdaFactory$(Ljavafx/scene/chart/StackedBarChart;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 381
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v6

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    .line 384
    .end local v4    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v5    # "bar":Ljavafx/scene/Node;
    .end local v6    # "ft":Ljavafx/animation/FadeTransition;
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/animation/ParallelTransition;->play()V

    .line 385
    .line 393
    .end local v2    # "pt":Ljavafx/animation/ParallelTransition;
    :goto_3
    return-void

    .line 386
    :cond_3
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v9

    :goto_4
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Data;

    move-object v3, v9

    .line 387
    .local v3, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v9

    move-object v4, v9

    .line 388
    .local v4, "bar":Ljavafx/scene/Node;
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedBarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v4

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 389
    goto :goto_4

    .line 390
    .end local v3    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v4    # "bar":Ljavafx/scene/Node;
    :cond_4
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljavafx/scene/chart/StackedBarChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    .line 391
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedBarChart;->requestChartLayout()V

    goto :goto_3
.end method

.method public setCategoryGap(D)V
    .locals 7

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/StackedBarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 126
    return-void
.end method

.method protected updateAxisRange()V
    .locals 23

    .prologue
    .line 399
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/StackedBarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    :goto_0
    move/from16 v4, v18

    .line 400
    .local v4, "categoryIsX":Z
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/CategoryAxis;->isAutoRanging()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 401
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v18

    .line 402
    .local v5, "cData":Ljava/util/List;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/StackedBarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v6, v18

    :goto_1
    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v7, v18

    .line 403
    .local v7, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v8, v18

    :goto_2
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v9, v18

    .line 404
    .local v9, "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v18, v9

    if-eqz v18, :cond_0

    move-object/from16 v18, v5

    move/from16 v19, v4

    if-eqz v19, :cond_2

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v19

    :goto_3
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 405
    :cond_0
    goto :goto_2

    .line 399
    .end local v4    # "categoryIsX":Z
    .end local v5    # "cData":Ljava/util/List;
    .end local v7    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v9    # "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 404
    .restart local v4    # "categoryIsX":Z
    .restart local v5    # "cData":Ljava/util/List;
    .restart local v7    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .restart local v9    # "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_2
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v19

    goto :goto_3

    .line 406
    .end local v9    # "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_3
    goto :goto_1

    .line 407
    .end local v7    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_4
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/chart/CategoryAxis;->invalidateRange(Ljava/util/List;)V

    .line 409
    .end local v5    # "cData":Ljava/util/List;
    :cond_5
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/ValueAxis;->isAutoRanging()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 410
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v18

    .line 411
    .local v5, "vData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/CategoryAxis;->getAllDataCategories()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v6, v18

    :goto_4
    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v7, v18

    .line 412
    .local v7, "category":Ljava/lang/String;
    const-wide/16 v18, 0x0

    move-wide/from16 v8, v18

    .line 413
    .local v8, "totalXN":D
    const-wide/16 v18, 0x0

    move-wide/from16 v10, v18

    .line 414
    .local v10, "totalXP":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/StackedBarChart;->getDisplayedSeriesIterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v12, v18

    .line 415
    .local v12, "seriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :goto_5
    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 416
    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v13, v18

    .line 417
    .local v13, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v18, v3

    move-object/from16 v19, v13

    move-object/from16 v20, v7

    invoke-direct/range {v18 .. v20}, Ljavafx/scene/chart/StackedBarChart;->getDataItem(Ljavafx/scene/chart/XYChart$Series;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v14, v18

    :goto_6
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/chart/XYChart$Data;

    move-object/from16 v15, v18

    .line 418
    .local v15, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v18, v15

    if-eqz v18, :cond_6

    .line 419
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v18

    const-string v19, "negative"

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v16, v18

    .line 420
    .local v16, "isNegative":Z
    move/from16 v18, v4

    if-eqz v18, :cond_7

    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v18

    :goto_7
    check-cast v18, Ljava/lang/Number;

    check-cast v18, Ljava/lang/Number;

    move-object/from16 v17, v18

    .line 421
    .local v17, "value":Ljava/lang/Number;
    move/from16 v18, v16

    if-nez v18, :cond_8

    .line 422
    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/ValueAxis;->toNumericValue(Ljava/lang/Number;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 427
    .end local v16    # "isNegative":Z
    .end local v17    # "value":Ljava/lang/Number;
    :cond_6
    :goto_8
    goto :goto_6

    .line 420
    .restart local v16    # "isNegative":Z
    :cond_7
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v18

    goto :goto_7

    .line 424
    .restart local v17    # "value":Ljava/lang/Number;
    :cond_8
    move-wide/from16 v18, v8

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/chart/ValueAxis;->toNumericValue(Ljava/lang/Number;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v8, v18

    goto :goto_8

    .line 428
    .end local v15    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v16    # "isNegative":Z
    .end local v17    # "value":Ljava/lang/Number;
    :cond_9
    goto/16 :goto_5

    .line 429
    .end local v13    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_a
    move-object/from16 v18, v5

    move-wide/from16 v19, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 430
    move-object/from16 v18, v5

    move-wide/from16 v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 431
    goto/16 :goto_4

    .line 432
    .end local v7    # "category":Ljava/lang/String;
    .end local v8    # "totalXN":D
    .end local v10    # "totalXP":D
    .end local v12    # "seriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :cond_b
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/StackedBarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/chart/ValueAxis;->invalidateRange(Ljava/util/List;)V

    .line 434
    .end local v5    # "vData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    :cond_c
    return-void
.end method

.method protected updateLegend()V
    .locals 12

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedBarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 512
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/StackedBarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 513
    const/4 v5, 0x0

    move v1, v5

    .local v1, "seriesIndex":I
    :goto_0
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/StackedBarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 514
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/StackedBarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v5

    .line 515
    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    new-instance v5, Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/charts/Legend$LegendItem;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 516
    .local v3, "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedBarChart;->seriesDefaultColorMap:Ljava/util/Map;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 517
    .local v4, "defaultColorStyleClass":Ljava/lang/String;
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    const-string v9, "chart-bar"

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

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x2

    const-string v9, "bar-legend-symbol"

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x3

    move-object v9, v4

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 519
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedBarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 522
    .end local v1    # "seriesIndex":I
    .end local v2    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v3    # "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    .end local v4    # "defaultColorStyleClass":Ljava/lang/String;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedBarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 523
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/StackedBarChart;->getLegend()Ljavafx/scene/Node;

    move-result-object v5

    if-nez v5, :cond_1

    .line 524
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/StackedBarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/StackedBarChart;->setLegend(Ljavafx/scene/Node;)V

    .line 529
    :cond_1
    :goto_1
    return-void

    .line 527
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/StackedBarChart;->setLegend(Ljavafx/scene/Node;)V

    goto :goto_1
.end method
