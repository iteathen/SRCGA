.class public Ljavafx/scene/chart/BarChart;
.super Ljavafx/scene/chart/XYChart;
.source "BarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/BarChart$StyleableProperties;
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

.field private static NEGATIVE_STYLE:Ljava/lang/String;

.field private static final VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


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

.field private barGap:Ljavafx/beans/property/DoubleProperty;

.field private bottomPos:D

.field private categoryAxis:Ljavafx/scene/chart/CategoryAxis;

.field private categoryGap:Ljavafx/beans/property/DoubleProperty;

.field private dataRemoveTimeline:Ljavafx/animation/Timeline;

.field private legend:Lcom/sun/javafx/charts/Legend;

.field private final orientation:Ljavafx/geometry/Orientation;

.field private pt:Ljavafx/animation/ParallelTransition;

.field private seriesCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;>;"
        }
    .end annotation
.end field

.field private valueAxis:Ljavafx/scene/chart/ValueAxis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "negative"

    sput-object v0, Ljavafx/scene/chart/BarChart;->NEGATIVE_STYLE:Ljava/lang/String;

    .line 639
    const-string v0, "vertical"

    .line 640
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/chart/BarChart;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 643
    const-string v0, "horizontal"

    .line 644
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/chart/BarChart;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 643
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
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/BarChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;Ljavafx/collections/ObservableList;)V

    .line 143
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
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
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

    .line 70
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->seriesCategoryMap:Ljava/util/Map;

    .line 71
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/charts/Legend;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/sun/javafx/charts/Legend;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->legend:Lcom/sun/javafx/charts/Legend;

    .line 76
    move-object v4, v0

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Ljavafx/scene/chart/BarChart;->bottomPos:D

    .line 80
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

    .line 85
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/BarChart$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/chart/BarChart$1;-><init>(Ljavafx/scene/chart/BarChart;D)V

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->barGap:Ljavafx/beans/property/DoubleProperty;

    .line 108
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/BarChart$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/chart/BarChart$2;-><init>(Ljavafx/scene/chart/BarChart;D)V

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    .line 155
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/BarChart;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "bar-chart"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 156
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/BarChart;->setLegend(Ljavafx/scene/Node;)V

    .line 157
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

    .line 159
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "Axis type incorrect, one of X,Y should be CategoryAxis and the other NumberAxis"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/chart/CategoryAxis;

    if-eqz v4, :cond_3

    .line 162
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljavafx/scene/chart/CategoryAxis;

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    .line 163
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Ljavafx/scene/chart/ValueAxis;

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    .line 164
    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    .line 171
    :goto_0
    move-object v4, v0

    sget-object v5, Ljavafx/scene/chart/BarChart;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v5, v6}, Ljavafx/scene/chart/BarChart;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 172
    move-object v4, v0

    sget-object v5, Ljavafx/scene/chart/BarChart;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v4, v5, v6}, Ljavafx/scene/chart/BarChart;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 173
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/BarChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 174
    return-void

    .line 166
    :cond_3
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Ljavafx/scene/chart/CategoryAxis;

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    .line 167
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljavafx/scene/chart/ValueAxis;

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    .line 168
    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    goto :goto_0

    .line 171
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 172
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

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
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

    invoke-direct {v6, v7, v8}, Ljavafx/scene/chart/BarChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;)V

    .line 187
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/BarChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 188
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/chart/BarChart;->setCategoryGap(D)V

    .line 189
    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/chart/BarChart;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/BarChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/BarChart;->barGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/BarChart;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/chart/BarChart;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/BarChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/BarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/BarChart;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/BarChart;->lambda$dataItemRemoved$560(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/BarChart;->lambda$seriesRemoved$561(Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
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

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/BarChart;->lambda$seriesRemoved$562(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/BarChart;->lambda$createDataRemoveTimeline$563(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/BarChart;->lambda$createDataRemoveTimeline$564(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private animateDataAdd(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;)V
    .locals 22
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
    .line 434
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object/from16 v2, p1

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v3, p2

    .local v3, "bar":Ljavafx/scene/Node;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_2

    .line 435
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .line 436
    .local v4, "barVal":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 437
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    sget-object v7, Ljavafx/scene/chart/BarChart;->NEGATIVE_STYLE:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 439
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/chart/BarChart;->bottomPos:D

    neg-double v8, v8

    :goto_0
    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 440
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/BarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 441
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 442
    move-object v6, v1

    const/4 v7, 0x2

    new-array v7, v7, [Ljavafx/animation/KeyFrame;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    const/4 v9, 0x0

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    sget-object v12, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v13, 0x1

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

    .line 443
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v2

    .line 444
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    const/4 v9, 0x1

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    const-wide v12, 0x4085e00000000000L    # 700.0

    .line 445
    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    const/4 v13, 0x1

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

    .line 446
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v17 .. v20}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    .line 442
    invoke-virtual {v6, v7}, Ljavafx/scene/chart/BarChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 463
    :goto_1
    return-void

    .line 439
    :cond_1
    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/chart/BarChart;->bottomPos:D

    goto/16 :goto_0

    .line 449
    .end local v4    # "barVal":D
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .line 450
    .restart local v4    # "barVal":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    .line 451
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    sget-object v7, Ljavafx/scene/chart/BarChart;->NEGATIVE_STYLE:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 453
    :cond_3
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/chart/BarChart;->bottomPos:D

    neg-double v8, v8

    :goto_2
    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 454
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/BarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 455
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 456
    move-object v6, v1

    const/4 v7, 0x2

    new-array v7, v7, [Ljavafx/animation/KeyFrame;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    const/4 v9, 0x0

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    sget-object v12, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v13, 0x1

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

    .line 457
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v2

    .line 458
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    const/4 v9, 0x1

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    const-wide v12, 0x4085e00000000000L    # 700.0

    .line 459
    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    const/4 v13, 0x1

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

    .line 460
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v17 .. v20}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    .line 456
    invoke-virtual {v6, v7}, Ljavafx/scene/chart/BarChart;->animate([Ljavafx/animation/KeyFrame;)V

    goto/16 :goto_1

    .line 453
    :cond_4
    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/chart/BarChart;->bottomPos:D

    goto/16 :goto_2
.end method

.method private createBar(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;
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
    .line 555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
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

    .line 556
    .local v5, "bar":Ljavafx/scene/Node;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 557
    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v5, v6

    .line 558
    move-object v6, v5

    sget-object v7, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 559
    move-object v6, v5

    const-string v7, "Bar"

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->setAccessibleRoleDescription(Ljava/lang/String;)V

    .line 560
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    invoke-static {}, Ljavafx/application/Platform;->accessibilityActiveProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 561
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setNode(Ljavafx/scene/Node;)V

    .line 563
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

    const-string v10, "chart-bar"

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

    .line 564
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
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
    .line 466
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
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

    .line 467
    .local v5, "t":Ljavafx/animation/Timeline;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_0

    .line 471
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

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

    .line 472
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/chart/BarChart;->bottomPos:D

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 473
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

    move-object/from16 v18, v2

    .line 474
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

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

    .line 475
    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    move-object v13, v1

    move-object v14, v4

    move-object v15, v2

    invoke-static {v13, v14, v15}, Ljavafx/scene/chart/BarChart$$Lambda$4;->lambdaFactory$(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;

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

    move-object/from16 v19, v2

    .line 479
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v18 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v17, v15, v16

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    .line 473
    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v6

    .line 493
    :goto_0
    move-object v6, v5

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    return-object v1

    .line 483
    .restart local v1    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

    move-object v7, v2

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 484
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/BarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/Axis;->toRealValue(D)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 485
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

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v18

    move-object/from16 v19, v2

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

    const-wide v12, 0x4085e00000000000L    # 700.0

    .line 486
    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    move-object v13, v1

    move-object v14, v4

    move-object v15, v2

    invoke-static {v13, v14, v15}, Ljavafx/scene/chart/BarChart$$Lambda$5;->lambdaFactory$(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;

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

    move-object/from16 v19, v2

    .line 490
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v18 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v17, v15, v16

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v10, v8, v9

    .line 485
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
    .line 626
    # getter for: Ljavafx/scene/chart/BarChart$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/BarChart$StyleableProperties;->access$400()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getDataItem(Ljavafx/scene/chart/XYChart$Series;IILjava/lang/String;)Ljavafx/scene/chart/XYChart$Data;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;II",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move v2, p2

    .local v2, "seriesIndex":I
    move v3, p3

    .local v3, "itemIndex":I
    move-object v4, p4

    .local v4, "category":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/BarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    move-object v5, v6

    .line 569
    .local v5, "catmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/chart/XYChart$Data;

    :goto_0
    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$createDataRemoveTimeline$563(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 7

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v3, p3

    .local v3, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/BarChart;->processDataRemove(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 477
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 478
    return-void
.end method

.method private synthetic lambda$createDataRemoveTimeline$564(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V
    .locals 7

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v3, p3

    .local v3, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/BarChart;->processDataRemove(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 488
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 489
    return-void
.end method

.method private synthetic lambda$dataItemRemoved$560(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 7

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v3, p3

    .local v3, "event":Ljavafx/event/ActionEvent;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart$Data;->setSeries(Ljavafx/scene/chart/XYChart$Series;)V

    .line 239
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/chart/BarChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 240
    return-void
.end method

.method private synthetic lambda$seriesRemoved$561(Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/ActionEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/BarChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    .line 306
    return-void
.end method

.method private synthetic lambda$seriesRemoved$562(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "d":Ljavafx/scene/chart/XYChart$Data;
    move-object v3, p3

    .local v3, "bar":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljavafx/scene/chart/BarChart;->processDataRemove(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 323
    move-object v5, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 324
    return-void
.end method

.method private processDataRemove(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v4

    move-object v3, v4

    .line 428
    .local v3, "bar":Ljavafx/scene/Node;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/BarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 429
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/BarChart;->updateMap(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 430
    return-void
.end method

.method private restoreDataValues(Ljavafx/scene/chart/XYChart$Data;)V
    .locals 5

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    move-object v2, v3

    .line 510
    .local v2, "value":Ljava/lang/Double;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 512
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v4, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-virtual {v3, v4}, Ljavafx/geometry/Orientation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 514
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 517
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateDefaultColorIndex(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/BarChart;->seriesColorMap:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v2, v6

    .line 546
    .local v2, "clearIndex":I
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v6

    .line 547
    .local v4, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    move-object v5, v6

    .line 548
    .local v5, "bar":Ljavafx/scene/Node;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 549
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljavafx/scene/chart/BarChart;->DEFAULT_COLOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 551
    :cond_0
    goto :goto_0

    .line 552
    .end local v4    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v5    # "bar":Ljavafx/scene/Node;
    :cond_1
    return-void
.end method

.method private updateMap(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v6, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v5, v6, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 417
    :goto_0
    move-object v3, v5

    .line 418
    .local v3, "category":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    move-object v4, v5

    .line 419
    .local v4, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 420
    move-object v5, v4

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 421
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 423
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->seriesCategoryMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    invoke-virtual {v5}, Ljavafx/scene/chart/CategoryAxis;->isAutoRanging()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    invoke-virtual {v5}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 424
    :cond_1
    return-void

    .line 416
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_2
    move-object v5, v2

    .line 417
    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final barGapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/BarChart;->barGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    return-object v0
.end method

.method public final categoryGapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/BarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    return-object v0
.end method

.method dataBeingRemovedIsAdded(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V
    .locals 6
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
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/BarChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    if-eqz v3, :cond_0

    .line 498
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/BarChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 499
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/BarChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v3}, Ljavafx/animation/Timeline;->stop()V

    .line 501
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/BarChart;->processDataRemove(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 502
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setSeries(Ljavafx/scene/chart/XYChart$Series;)V

    .line 503
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/BarChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 504
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/chart/BarChart;->restoreDataValues(Ljavafx/scene/chart/XYChart$Data;)V

    .line 505
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 506
    return-void
.end method

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
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move v2, p2

    .local v2, "itemIndex":I
    move-object/from16 v3, p3

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v8, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v7, v8, :cond_2

    .line 196
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 200
    .local v4, "category":Ljava/lang/String;
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object v5, v7

    .line 202
    .local v5, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v7, v5

    if-nez v7, :cond_0

    .line 203
    new-instance v7, Ljava/util/HashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v5, v7

    .line 204
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v8, v1

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 207
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    invoke-virtual {v7}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 209
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    invoke-virtual {v7}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v2

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 218
    :cond_1
    :goto_1
    move-object v7, v5

    move-object v8, v4

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 219
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/BarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move-object v10, v3

    move v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/BarChart;->createBar(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 220
    .local v6, "bar":Ljavafx/scene/Node;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->shouldAnimate()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 221
    move-object v7, v0

    move-object v8, v3

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Ljavafx/scene/chart/BarChart;->animateDataAdd(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;)V

    .line 225
    :goto_2
    return-void

    .line 198
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    .end local v6    # "bar":Ljavafx/scene/Node;
    :cond_2
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .restart local v4    # "category":Ljava/lang/String;
    goto :goto_0

    .line 210
    .restart local v5    # "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_3
    move-object v7, v5

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 212
    move-object v7, v5

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v6, v7

    .line 213
    .local v6, "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 214
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/BarChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 215
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->requestChartLayout()V

    .line 216
    move-object v7, v5

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 223
    .local v6, "bar":Ljavafx/scene/Node;
    :cond_4
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

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
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v7, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_1

    .line 253
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v2, v6

    .line 254
    .local v2, "barVal":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .line 259
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

    .line 261
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    sget-object v7, Ljavafx/scene/chart/BarChart;->NEGATIVE_STYLE:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 268
    :cond_0
    :goto_1
    return-void

    .line 256
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

    .line 257
    .restart local v2    # "barVal":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .restart local v4    # "currentVal":D
    goto :goto_0

    .line 262
    :cond_2
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 266
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    sget-object v7, Ljavafx/scene/chart/BarChart;->NEGATIVE_STYLE:Ljava/lang/String;

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
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v4

    move-object v3, v4

    .line 230
    .local v3, "bar":Ljavafx/scene/Node;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 231
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 234
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/BarChart;->shouldAnimate()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 236
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/chart/BarChart;->createDataRemoveTimeline(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/animation/Timeline;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/chart/BarChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    .line 237
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BarChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Ljavafx/scene/chart/BarChart$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 241
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BarChart;->dataRemoveTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->play()V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_1
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/BarChart;->processDataRemove(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 244
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/chart/BarChart;->removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    goto :goto_0
.end method

.method public final getBarGap()D
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/BarChart;->barGap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    return-wide v0
.end method

.method public final getCategoryGap()D
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/BarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
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
    .line 635
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    invoke-static {}, Ljavafx/scene/chart/BarChart;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    return-object v0
.end method

.method protected layoutPlotChildren()V
    .locals 41

    .prologue
    .line 341
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/chart/BarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/CategoryAxis;->getCategorySpacing()D

    move-result-wide v30

    move-wide/from16 v4, v30

    .line 343
    .local v4, "catSpace":D
    move-wide/from16 v30, v4

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/chart/BarChart;->getCategoryGap()D

    move-result-wide v32

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/chart/BarChart;->getBarGap()D

    move-result-wide v34

    add-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v6, v30

    .line 344
    .local v6, "avilableBarSpace":D
    move-wide/from16 v30, v6

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/chart/BarChart;->getSeriesSize()I

    move-result v32

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/chart/BarChart;->getBarGap()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-wide/from16 v8, v30

    .line 345
    .local v8, "barWidth":D
    move-wide/from16 v30, v4

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/chart/BarChart;->getCategoryGap()D

    move-result-wide v32

    sub-double v30, v30, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v10, v30

    .line 346
    .local v10, "barOffset":D
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/chart/BarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_2

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/chart/BarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/scene/chart/BarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v31, v0

    .line 347
    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v30

    :goto_0
    move-wide/from16 v12, v30

    .line 349
    .local v12, "zeroPos":D
    move-wide/from16 v30, v8

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v8, v30

    .line 351
    :cond_0
    const/16 v30, 0x0

    move/from16 v14, v30

    .line 352
    .local v14, "catIndex":I
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/chart/BarChart;->categoryAxis:Ljavafx/scene/chart/CategoryAxis;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/CategoryAxis;->getCategories()Ljavafx/collections/ObservableList;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    move-object/from16 v15, v30

    :goto_1
    move-object/from16 v30, v15

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_8

    move-object/from16 v30, v15

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v16, v30

    .line 353
    .local v16, "category":Ljava/lang/String;
    const/16 v30, 0x0

    move/from16 v17, v30

    .line 354
    .local v17, "index":I
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/BarChart;->getDisplayedSeriesIterator()Ljava/util/Iterator;

    move-result-object v30

    move-object/from16 v18, v30

    .local v18, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :cond_1
    :goto_2
    move-object/from16 v30, v18

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 355
    move-object/from16 v30, v18

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljavafx/scene/chart/XYChart$Series;

    move-object/from16 v19, v30

    .line 356
    .local v19, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object/from16 v30, v3

    move-object/from16 v31, v19

    move/from16 v32, v17

    move/from16 v33, v14

    move-object/from16 v34, v16

    invoke-direct/range {v30 .. v34}, Ljavafx/scene/chart/BarChart;->getDataItem(Ljavafx/scene/chart/XYChart$Series;IILjava/lang/String;)Ljavafx/scene/chart/XYChart$Data;

    move-result-object v30

    move-object/from16 v20, v30

    .line 357
    .local v20, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v30, v20

    if-eqz v30, :cond_5

    .line 358
    move-object/from16 v30, v20

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v30

    move-object/from16 v21, v30

    .line 361
    .local v21, "bar":Ljavafx/scene/Node;
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    move-object/from16 v30, v0

    sget-object v31, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 362
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/BarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v30

    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v30

    move-wide/from16 v22, v30

    .line 363
    .local v22, "categoryPos":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/BarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v30

    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v30

    move-wide/from16 v24, v30

    .line 368
    .local v24, "valPos":D
    :goto_3
    move-wide/from16 v30, v22

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->isNaN(D)Z

    move-result v30

    if-nez v30, :cond_1

    move-wide/from16 v30, v24

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->isNaN(D)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 369
    goto :goto_2

    .line 347
    .end local v12    # "zeroPos":D
    .end local v14    # "catIndex":I
    .end local v16    # "category":Ljava/lang/String;
    .end local v17    # "index":I
    .end local v18    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    .end local v19    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v20    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v21    # "bar":Ljavafx/scene/Node;
    .end local v22    # "categoryPos":D
    .end local v24    # "valPos":D
    :cond_2
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/chart/BarChart;->valueAxis:Ljavafx/scene/chart/ValueAxis;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/ValueAxis;->getZeroPosition()D

    move-result-wide v30

    goto/16 :goto_0

    .line 365
    .restart local v12    # "zeroPos":D
    .restart local v14    # "catIndex":I
    .restart local v16    # "category":Ljava/lang/String;
    .restart local v17    # "index":I
    .restart local v18    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    .restart local v19    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .restart local v20    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .restart local v21    # "bar":Ljavafx/scene/Node;
    :cond_3
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/BarChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v30

    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v30

    move-wide/from16 v22, v30

    .line 366
    .restart local v22    # "categoryPos":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/BarChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v30

    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v30

    move-wide/from16 v24, v30

    .restart local v24    # "valPos":D
    goto :goto_3

    .line 371
    :cond_4
    move-wide/from16 v30, v24

    move-wide/from16 v32, v12

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    move-wide/from16 v26, v30

    .line 372
    .local v26, "bottom":D
    move-wide/from16 v30, v24

    move-wide/from16 v32, v12

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    move-wide/from16 v28, v30

    .line 373
    .local v28, "top":D
    move-object/from16 v30, v3

    move-wide/from16 v31, v26

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Ljavafx/scene/chart/BarChart;->bottomPos:D

    .line 374
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    move-object/from16 v30, v0

    sget-object v31, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 375
    move-object/from16 v30, v21

    move-wide/from16 v31, v22

    move-wide/from16 v33, v10

    add-double v31, v31, v33

    move-wide/from16 v33, v8

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Ljavafx/scene/chart/BarChart;->getBarGap()D

    move-result-wide v35

    add-double v33, v33, v35

    move/from16 v35, v17

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v35, v0

    mul-double v33, v33, v35

    add-double v31, v31, v33

    move-wide/from16 v33, v26

    move-wide/from16 v35, v8

    move-wide/from16 v37, v28

    move-wide/from16 v39, v26

    sub-double v37, v37, v39

    invoke-virtual/range {v30 .. v38}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 383
    :goto_4
    add-int/lit8 v17, v17, 0x1

    .line 385
    .end local v21    # "bar":Ljavafx/scene/Node;
    .end local v22    # "categoryPos":D
    .end local v24    # "valPos":D
    .end local v26    # "bottom":D
    .end local v28    # "top":D
    :cond_5
    goto/16 :goto_2

    .line 379
    .restart local v21    # "bar":Ljavafx/scene/Node;
    .restart local v22    # "categoryPos":D
    .restart local v24    # "valPos":D
    .restart local v26    # "bottom":D
    .restart local v28    # "top":D
    :cond_6
    move-object/from16 v30, v21

    move-wide/from16 v31, v26

    move-wide/from16 v33, v22

    move-wide/from16 v35, v10

    add-double v33, v33, v35

    move-wide/from16 v35, v8

    move-object/from16 v37, v3

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/chart/BarChart;->getBarGap()D

    move-result-wide v37

    add-double v35, v35, v37

    move/from16 v37, v17

    move/from16 v0, v37

    int-to-double v0, v0

    move-wide/from16 v37, v0

    mul-double v35, v35, v37

    add-double v33, v33, v35

    move-wide/from16 v35, v28

    move-wide/from16 v37, v26

    sub-double v35, v35, v37

    move-wide/from16 v37, v8

    invoke-virtual/range {v30 .. v38}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    goto :goto_4

    .line 386
    .end local v19    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v20    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v21    # "bar":Ljavafx/scene/Node;
    .end local v22    # "categoryPos":D
    .end local v24    # "valPos":D
    .end local v26    # "bottom":D
    .end local v28    # "top":D
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 387
    goto/16 :goto_1

    .line 388
    .end local v16    # "category":Ljava/lang/String;
    .end local v17    # "index":I
    .end local v18    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :cond_8
    return-void
.end method

.method protected seriesAdded(Ljavafx/scene/chart/XYChart$Series;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I)V"
        }
    .end annotation

    .prologue
    .line 273
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move/from16 v2, p2

    .local v2, "seriesIndex":I
    new-instance v10, Ljava/util/HashMap;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v3, v10

    .line 274
    .local v3, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    const/4 v10, 0x0

    move v4, v10

    .local v4, "j":I
    :goto_0
    move v10, v4

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 275
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v10

    move v11, v4

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/chart/XYChart$Data;

    move-object v5, v10

    .line 276
    .local v5, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move-object v13, v5

    move v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/chart/BarChart;->createBar(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v10

    move-object v6, v10

    .line 278
    .local v6, "bar":Ljavafx/scene/Node;
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v11, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_0

    .line 279
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    .line 283
    .local v7, "category":Ljava/lang/String;
    :goto_1
    move-object v10, v3

    move-object v11, v7

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 284
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/chart/BarChart;->shouldAnimate()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 285
    move-object v10, v0

    move-object v11, v5

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Ljavafx/scene/chart/BarChart;->animateDataAdd(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;)V

    .line 274
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    .end local v7    # "category":Ljava/lang/String;
    :cond_0
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    .restart local v7    # "category":Ljava/lang/String;
    goto :goto_1

    .line 288
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/chart/BarChart;->orientation:Ljavafx/geometry/Orientation;

    sget-object v11, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_3

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 289
    :goto_3
    move-wide v8, v10

    .line 290
    .local v8, "barVal":D
    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 291
    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v10

    sget-object v11, Ljavafx/scene/chart/BarChart;->NEGATIVE_STYLE:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 293
    :cond_2
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/chart/BarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v11, v6

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_2

    .line 288
    .end local v8    # "barVal":D
    :cond_3
    move-object v10, v5

    .line 289
    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    goto :goto_3

    .line 296
    .end local v5    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v6    # "bar":Ljavafx/scene/Node;
    .end local v7    # "category":Ljava/lang/String;
    :cond_4
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_5

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/chart/BarChart;->seriesCategoryMap:Ljava/util/Map;

    move-object v11, v1

    move-object v12, v3

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 297
    :cond_5
    return-void
.end method

.method seriesBeingRemovedIsAdded(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v5}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 524
    .local v2, "lastSeries":Z
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    if-eqz v5, :cond_4

    .line 525
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v5}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 526
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v5}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

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

    check-cast v5, Ljavafx/animation/Animation;

    move-object v4, v5

    .line 527
    .local v4, "a":Ljavafx/animation/Animation;
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/animation/Animation;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 528
    goto :goto_1

    .line 523
    .end local v2    # "lastSeries":Z
    .end local v4    # "a":Ljavafx/animation/Animation;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 530
    .restart local v2    # "lastSeries":Z
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v5

    .line 531
    .local v4, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Ljavafx/scene/chart/BarChart;->processDataRemove(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 532
    move v5, v2

    if-nez v5, :cond_2

    .line 533
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Ljavafx/scene/chart/BarChart;->restoreDataValues(Ljavafx/scene/chart/XYChart$Data;)V

    .line 535
    :cond_2
    goto :goto_2

    .line 536
    .end local v4    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 537
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/animation/ParallelTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 538
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v5}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 539
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v5}, Ljavafx/animation/ParallelTransition;->stop()V

    .line 540
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/BarChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    .line 542
    :cond_4
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
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/scene/chart/BarChart;->updateDefaultColorIndex(Ljavafx/scene/chart/XYChart$Series;)V

    .line 302
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->shouldAnimate()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 303
    move-object v7, v0

    new-instance v8, Ljavafx/animation/ParallelTransition;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljavafx/animation/ParallelTransition;-><init>()V

    iput-object v8, v7, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    .line 304
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Ljavafx/scene/chart/BarChart$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/animation/ParallelTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 308
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getSeriesSize()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    const/4 v7, 0x0

    :goto_0
    move v2, v7

    .line 309
    .local v2, "lastSeries":Z
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->XYValueMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 310
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v7

    .line 311
    .local v4, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 313
    .local v5, "bar":Ljavafx/scene/Node;
    move v7, v2

    if-nez v7, :cond_1

    .line 314
    move-object v7, v0

    move-object v8, v4

    move-object v9, v5

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/chart/BarChart;->createDataRemoveTimeline(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/animation/Timeline;

    move-result-object v7

    move-object v6, v7

    .line 315
    .local v6, "t":Ljavafx/animation/Timeline;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v7}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 316
    .line 327
    .end local v6    # "t":Ljavafx/animation/Timeline;
    :goto_2
    goto :goto_1

    .line 308
    .end local v2    # "lastSeries":Z
    .end local v4    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v5    # "bar":Ljavafx/scene/Node;
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 318
    .restart local v2    # "lastSeries":Z
    .restart local v4    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .restart local v5    # "bar":Ljavafx/scene/Node;
    :cond_1
    new-instance v7, Ljavafx/animation/FadeTransition;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-wide v9, 0x4085e00000000000L    # 700.0

    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v6, v7

    .line 319
    .local v6, "ft":Ljavafx/animation/FadeTransition;
    move-object v7, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 320
    move-object v7, v6

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 321
    move-object v7, v6

    move-object v8, v0

    move-object v9, v1

    move-object v10, v4

    move-object v11, v5

    invoke-static {v8, v9, v10, v11}, Ljavafx/scene/chart/BarChart$$Lambda$3;->lambdaFactory$(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/Node;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/animation/FadeTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 325
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v7}, Ljavafx/animation/ParallelTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    .line 328
    .end local v4    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v5    # "bar":Ljavafx/scene/Node;
    .end local v6    # "ft":Ljavafx/animation/FadeTransition;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/BarChart;->pt:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v7}, Ljavafx/animation/ParallelTransition;->play()V

    .line 329
    .line 337
    .end local v2    # "lastSeries":Z
    :goto_3
    return-void

    .line 330
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :goto_4
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v3, v7

    .line 331
    .local v3, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v4, v7

    .line 332
    .local v4, "bar":Ljavafx/scene/Node;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/BarChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 333
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Ljavafx/scene/chart/BarChart;->updateMap(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 334
    goto :goto_4

    .line 335
    .end local v3    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v4    # "bar":Ljavafx/scene/Node;
    :cond_4
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/BarChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    goto :goto_3
.end method

.method public final setBarGap(D)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/BarChart;->barGap:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setCategoryGap(D)V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/BarChart;->categoryGap:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method protected updateLegend()V
    .locals 11

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 395
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/BarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 396
    const/4 v4, 0x0

    move v1, v4

    .local v1, "seriesIndex":I
    :goto_0
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/BarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 397
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/BarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v4

    .line 398
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

    .line 399
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

    const-string v8, "chart-bar"

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

    const-string v8, "bar-legend-symbol"

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

    .line 401
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "seriesIndex":I
    .end local v2    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v3    # "legenditem":Lcom/sun/javafx/charts/Legend$LegendItem;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 405
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/BarChart;->getLegend()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_1

    .line 406
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChart;->legend:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/BarChart;->setLegend(Ljavafx/scene/Node;)V

    .line 411
    :cond_1
    :goto_1
    return-void

    .line 409
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/BarChart;->setLegend(Ljavafx/scene/Node;)V

    goto :goto_1
.end method
