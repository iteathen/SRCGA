.class public abstract Ljavafx/scene/chart/XYChart;
.super Ljavafx/scene/chart/Chart;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/XYChart$Series;,
        Ljavafx/scene/chart/XYChart$Data;,
        Ljavafx/scene/chart/XYChart$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/chart/Chart;"
    }
.end annotation


# static fields
.field static DEFAULT_COLOR:Ljava/lang/String;


# instance fields
.field private alternativeColumnFillVisible:Ljavafx/beans/property/BooleanProperty;

.field private alternativeRowFillVisible:Ljavafx/beans/property/BooleanProperty;

.field private final colorBits:Ljava/util/BitSet;

.field private data:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;>;"
        }
    .end annotation
.end field

.field private final displayedSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;"
        }
    .end annotation
.end field

.field private final horizontalGridLines:Ljavafx/scene/shape/Path;

.field private horizontalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

.field private final horizontalRowFill:Ljavafx/scene/shape/Path;

.field private final horizontalZeroLine:Ljavafx/scene/shape/Line;

.field private horizontalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

.field private final plotArea:Ljavafx/scene/Group;

.field private final plotAreaClip:Ljavafx/scene/shape/Rectangle;

.field private final plotBackground:Ljavafx/scene/layout/Region;

.field private final plotContent:Ljavafx/scene/Group;

.field private rangeValid:Z

.field private final seriesChanged:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;"
        }
    .end annotation
.end field

.field final seriesColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final verticalGridLines:Ljavafx/scene/shape/Path;

.field private verticalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

.field private final verticalRowFill:Ljavafx/scene/shape/Path;

.field private final verticalZeroLine:Ljavafx/scene/shape/Line;

.field private verticalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

.field private final xAxis:Ljavafx/scene/chart/Axis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/chart/Axis",
            "<TX;>;"
        }
    .end annotation
.end field

.field private final yAxis:Ljavafx/scene/chart/Axis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/chart/Axis",
            "<TY;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "default-color"

    sput-object v0, Ljavafx/scene/chart/XYChart;->DEFAULT_COLOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;)V
    .locals 9
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
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "xAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, p2

    .local v2, "yAxis":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/chart/Chart;-><init>()V

    .line 98
    move-object v3, v0

    new-instance v4, Ljava/util/BitSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->colorBits:Ljava/util/BitSet;

    .line 100
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->seriesColorMap:Ljava/util/Map;

    .line 101
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/chart/XYChart;->rangeValid:Z

    .line 102
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/Line;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/shape/Line;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->verticalZeroLine:Ljavafx/scene/shape/Line;

    .line 103
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/Line;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/shape/Line;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->horizontalZeroLine:Ljavafx/scene/shape/Line;

    .line 104
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/Path;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->verticalGridLines:Ljavafx/scene/shape/Path;

    .line 105
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/Path;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->horizontalGridLines:Ljavafx/scene/shape/Path;

    .line 106
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/Path;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->horizontalRowFill:Ljavafx/scene/shape/Path;

    .line 107
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/Path;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->verticalRowFill:Ljavafx/scene/shape/Path;

    .line 108
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/Region;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->plotBackground:Ljavafx/scene/layout/Region;

    .line 109
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/chart/XYChart$1;-><init>(Ljavafx/scene/chart/XYChart;)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->plotArea:Ljavafx/scene/Group;

    .line 112
    move-object v3, v0

    new-instance v4, Ljavafx/scene/Group;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/Group;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->plotContent:Ljavafx/scene/Group;

    .line 113
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/Rectangle;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->plotAreaClip:Ljavafx/scene/shape/Rectangle;

    .line 115
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->displayedSeries:Ljava/util/List;

    .line 118
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/chart/XYChart$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/XYChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->seriesChanged:Ljavafx/collections/ListChangeListener;

    .line 183
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/chart/XYChart$2;-><init>(Ljavafx/scene/chart/XYChart;)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->data:Ljavafx/beans/property/ObjectProperty;

    .line 242
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljavafx/scene/chart/XYChart$3;-><init>(Ljavafx/scene/chart/XYChart;Z)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->verticalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    .line 273
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$4;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljavafx/scene/chart/XYChart$4;-><init>(Ljavafx/scene/chart/XYChart;Z)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->horizontalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    .line 298
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$5;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/chart/XYChart$5;-><init>(Ljavafx/scene/chart/XYChart;Z)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->alternativeColumnFillVisible:Ljavafx/beans/property/BooleanProperty;

    .line 323
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$6;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljavafx/scene/chart/XYChart$6;-><init>(Ljavafx/scene/chart/XYChart;Z)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->alternativeRowFillVisible:Ljavafx/beans/property/BooleanProperty;

    .line 353
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$7;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljavafx/scene/chart/XYChart$7;-><init>(Ljavafx/scene/chart/XYChart;Z)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->verticalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    .line 383
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$8;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljavafx/scene/chart/XYChart$8;-><init>(Ljavafx/scene/chart/XYChart;Z)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->horizontalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    .line 430
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->xAxis:Ljavafx/scene/chart/Axis;

    .line 431
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/Axis;->getSide()Ljavafx/geometry/Side;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    sget-object v4, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Axis;->setSide(Ljavafx/geometry/Side;)V

    .line 432
    :cond_0
    move-object v3, v1

    sget-object v4, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Axis;->setEffectiveOrientation(Ljavafx/geometry/Orientation;)V

    .line 433
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/chart/XYChart;->yAxis:Ljavafx/scene/chart/Axis;

    .line 434
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/chart/Axis;->getSide()Ljavafx/geometry/Side;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    sget-object v4, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Axis;->setSide(Ljavafx/geometry/Side;)V

    .line 435
    :cond_1
    move-object v3, v2

    sget-object v4, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Axis;->setEffectiveOrientation(Ljavafx/geometry/Orientation;)V

    .line 437
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/Axis;->autoRangingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/chart/XYChart$$Lambda$2;->lambdaFactory$(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 440
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/chart/Axis;->autoRangingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/chart/XYChart$$Lambda$3;->lambdaFactory$(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 444
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->plotBackground:Ljavafx/scene/layout/Region;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->plotArea:Ljavafx/scene/Group;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 446
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->plotArea:Ljavafx/scene/Group;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Group;->setAutoSizeChildren(Z)V

    .line 447
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->plotContent:Ljavafx/scene/Group;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Group;->setAutoSizeChildren(Z)V

    .line 449
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->plotAreaClip:Ljavafx/scene/shape/Rectangle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Rectangle;->setSmooth(Z)V

    .line 450
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->plotArea:Ljavafx/scene/Group;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart;->plotAreaClip:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v3, v4}, Ljavafx/scene/Group;->setClip(Ljavafx/scene/Node;)V

    .line 452
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->plotArea:Ljavafx/scene/Group;

    invoke-virtual {v3}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x7

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->verticalRowFill:Ljavafx/scene/shape/Path;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->horizontalRowFill:Ljavafx/scene/shape/Path;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->verticalGridLines:Ljavafx/scene/shape/Path;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->horizontalGridLines:Ljavafx/scene/shape/Path;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->verticalZeroLine:Ljavafx/scene/shape/Line;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->horizontalZeroLine:Ljavafx/scene/shape/Line;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->plotContent:Ljavafx/scene/Group;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 458
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->plotContent:Ljavafx/scene/Group;

    invoke-virtual {v3}, Ljavafx/scene/Group;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "plot-content"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 459
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->plotBackground:Ljavafx/scene/layout/Region;

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "chart-plot-background"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 460
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->verticalRowFill:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "chart-alternative-column-fill"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 461
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->horizontalRowFill:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "chart-alternative-row-fill"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 462
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->verticalGridLines:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "chart-vertical-grid-lines"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 463
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->horizontalGridLines:Ljavafx/scene/shape/Path;

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "chart-horizontal-grid-lines"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 464
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->verticalZeroLine:Ljavafx/scene/shape/Line;

    invoke-virtual {v3}, Ljavafx/scene/shape/Line;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "chart-vertical-zero-line"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 465
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->horizontalZeroLine:Ljavafx/scene/shape/Line;

    invoke-virtual {v3}, Ljavafx/scene/shape/Line;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "chart-horizontal-zero-line"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 467
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->plotContent:Ljavafx/scene/Group;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Group;->setManaged(Z)V

    .line 468
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart;->plotArea:Ljavafx/scene/Group;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Group;->setManaged(Z)V

    .line 470
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart;->animatedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/chart/XYChart$$Lambda$4;->lambdaFactory$(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 474
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/chart/XYChart;)Ljavafx/collections/ListChangeListener;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->seriesChanged:Ljavafx/collections/ListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->horizontalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->horizontalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart;
    return-object v0
.end method

.method static synthetic access$1300(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->alternativeRowFillVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart;
    return-object v0
.end method

.method static synthetic access$1400(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->verticalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->verticalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->alternativeColumnFillVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart;
    return-object v0
.end method

.method static synthetic access$1900(Ljavafx/scene/chart/XYChart;Ljavafx/scene/chart/XYChart$Data;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart;->dataXValueChanged(Ljavafx/scene/chart/XYChart$Data;)V

    return-void
.end method

.method static synthetic access$2000(Ljavafx/scene/chart/XYChart;Ljavafx/scene/chart/XYChart$Data;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart;->dataYValueChanged(Ljavafx/scene/chart/XYChart$Data;)V

    return-void
.end method

.method static synthetic access$2100(Ljavafx/scene/chart/XYChart;Ljavafx/scene/chart/XYChart$Data;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart;->dataExtraValueChanged(Ljavafx/scene/chart/XYChart$Data;)V

    return-void
.end method

.method static synthetic access$2300(Ljavafx/scene/chart/XYChart;Ljavafx/scene/chart/XYChart$Series;Ljava/util/List;IIZ)V
    .locals 12

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "x2":Ljava/util/List;
    move v3, p3

    .local v3, "x3":I
    move/from16 v4, p4

    .local v4, "x4":I
    move/from16 v5, p5

    .local v5, "x5":Z
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/chart/XYChart;->dataItemsChanged(Ljavafx/scene/chart/XYChart$Series;Ljava/util/List;IIZ)V

    return-void
.end method

.method static synthetic access$2400(Ljavafx/scene/chart/XYChart;)V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/XYChart;->seriesNameChanged()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/XYChart;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart;->lambda$new$550(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/chart/XYChart;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/XYChart;->lambda$new$551(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/chart/XYChart;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/XYChart;->lambda$new$552(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/chart/XYChart;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/XYChart;->lambda$new$553(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/chart/XYChart;Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/XYChart;->lambda$createSeriesRemoveTimeLine$554(Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/collections/ObservableList;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Series;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/chart/XYChart;->lambda$null$549(Ljavafx/collections/ObservableList;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Series;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private dataExtraValueChanged(Ljavafx/scene/chart/XYChart$Data;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 536
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/chart/XYChart;->invalidateRange()V

    .line 537
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart;->dataItemChanged(Ljavafx/scene/chart/XYChart$Data;)V

    .line 538
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart;->shouldAnimate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v17

    const/4 v5, 0x0

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    sget-object v8, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v9, 0x1

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    .line 540
    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v6, v4, v5

    move-object/from16 v17, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v17

    const/4 v5, 0x1

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    const-wide v8, 0x4085e00000000000L    # 700.0

    .line 541
    invoke-static {v8, v9}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v6, v4, v5

    .line 539
    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 547
    :goto_0
    return-void

    .line 544
    :cond_1
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 545
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart;->requestChartLayout()V

    goto :goto_0
.end method

.method private dataItemsChanged(Ljavafx/scene/chart/XYChart$Series;Ljava/util/List;IIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v2, p2

    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move v3, p3

    .local v3, "addedFrom":I
    move/from16 v4, p4

    .local v4, "addedTo":I
    move/from16 v5, p5

    .local v5, "permutation":Z
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/chart/XYChart$Data;

    move-object v7, v8

    .line 497
    .local v7, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v8, v0

    move-object v9, v7

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/chart/XYChart;->dataItemRemoved(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V

    .line 498
    goto :goto_0

    .line 499
    .end local v7    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_0
    move v8, v3

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 500
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v6

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/chart/XYChart$Data;

    move-object v7, v8

    .line 501
    .restart local v7    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v8, v0

    move-object v9, v1

    move v10, v6

    move-object v11, v7

    invoke-virtual {v8, v9, v10, v11}, Ljavafx/scene/chart/XYChart;->dataItemAdded(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;)V

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 503
    .end local v7    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_1
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/chart/XYChart;->invalidateRange()V

    .line 504
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/chart/XYChart;->requestChartLayout()V

    .line 505
    return-void
.end method

.method private dataXValueChanged(Ljavafx/scene/chart/XYChart$Data;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 508
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/chart/XYChart;->invalidateRange()V

    .line 509
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart;->dataItemChanged(Ljavafx/scene/chart/XYChart$Data;)V

    .line 510
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart;->shouldAnimate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v17

    const/4 v5, 0x0

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    sget-object v8, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v9, 0x1

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    .line 512
    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v6, v4, v5

    move-object/from16 v17, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v17

    const/4 v5, 0x1

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    const-wide v8, 0x4085e00000000000L    # 700.0

    .line 513
    invoke-static {v8, v9}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v6, v4, v5

    .line 511
    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 519
    :goto_0
    return-void

    .line 516
    :cond_1
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 517
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart;->requestChartLayout()V

    goto :goto_0
.end method

.method private dataYValueChanged(Ljavafx/scene/chart/XYChart$Data;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 522
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object/from16 v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/chart/XYChart;->invalidateRange()V

    .line 523
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart;->dataItemChanged(Ljavafx/scene/chart/XYChart$Data;)V

    .line 524
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart;->shouldAnimate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v17

    const/4 v5, 0x0

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    sget-object v8, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v9, 0x1

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    .line 526
    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v6, v4, v5

    move-object/from16 v17, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v17

    const/4 v5, 0x1

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    const-wide v8, 0x4085e00000000000L    # 700.0

    .line 527
    invoke-static {v8, v9}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v6, v4, v5

    .line 525
    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart;->animate([Ljavafx/animation/KeyFrame;)V

    .line 533
    :goto_0
    return-void

    .line 530
    :cond_1
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 531
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart;->requestChartLayout()V

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
    .line 1171
    # getter for: Ljavafx/scene/chart/XYChart$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/XYChart$StyleableProperties;->access$1700()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private invalidateRange()V
    .locals 3

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/XYChart;->rangeValid:Z

    .line 622
    return-void
.end method

.method private synthetic lambda$createSeriesRemoveTimeLine$554(Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 952
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "nodes":Ljava/util/List;
    move-object v2, p2

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;
    move-object v3, p3

    .local v3, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    .line 953
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart;->removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V

    .line 954
    return-void
.end method

.method private synthetic lambda$new$550(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v2, v7

    .line 120
    .local v2, "series":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 122
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 123
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->displayedSeries:Ljava/util/List;

    move-object v8, v2

    invoke-static {v8}, Ljavafx/scene/chart/XYChart$$Lambda$6;->lambdaFactory$(Ljavafx/collections/ObservableList;)Ljava/util/Comparator;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 127
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart;->updateLegend()V

    .line 129
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/XYChart;->displayedSeries:Ljava/util/List;

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v7

    .line 130
    .local v3, "dupCheck":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v7

    .line 131
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Series;

    move-object v5, v7

    .line 132
    .local v5, "d":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v7, v3

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 133
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Duplicate series added"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 135
    :cond_2
    goto :goto_1

    .line 137
    .end local v5    # "d":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_2
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Series;

    move-object v5, v7

    .line 138
    .local v5, "s":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Ljavafx/scene/chart/XYChart$Series;->setToRemove:Z

    .line 139
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/XYChart;->seriesRemoved(Ljavafx/scene/chart/XYChart$Series;)V

    .line 140
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->seriesColorMap:Ljava/util/Map;

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v6, v7

    .line 141
    .local v6, "idx":I
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->colorBits:Ljava/util/BitSet;

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->clear(I)V

    .line 142
    goto :goto_2

    .line 144
    .end local v5    # "s":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v6    # "idx":I
    :cond_4
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    move v4, v7

    .local v4, "i":I
    :goto_3
    move v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v8

    if-ge v7, v8, :cond_6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v7

    if-nez v7, :cond_6

    .line 145
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v4

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Series;

    move-object v5, v7

    .line 147
    .restart local v5    # "s":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v7, v5

    move-object v8, v0

    invoke-static {v7, v8}, Ljavafx/scene/chart/XYChart$Series;->access$800(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart;)V

    .line 148
    move-object v7, v5

    iget-boolean v7, v7, Ljavafx/scene/chart/XYChart$Series;->setToRemove:Z

    if-eqz v7, :cond_5

    .line 149
    move-object v7, v5

    const/4 v8, 0x0

    iput-boolean v8, v7, Ljavafx/scene/chart/XYChart$Series;->setToRemove:Z

    .line 150
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/XYChart;->seriesBeingRemovedIsAdded(Ljavafx/scene/chart/XYChart$Series;)V

    .line 153
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->displayedSeries:Ljava/util/List;

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 155
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->colorBits:Ljava/util/BitSet;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v7

    move v6, v7

    .line 156
    .local v6, "nextClearBit":I
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->colorBits:Ljava/util/BitSet;

    move v8, v6

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/BitSet;->set(IZ)V

    .line 157
    move-object v7, v5

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljavafx/scene/chart/XYChart;->DEFAULT_COLOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    const/16 v10, 0x8

    rem-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Ljavafx/scene/chart/XYChart$Series;->defaultColorStyleClass:Ljava/lang/String;

    .line 158
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart;->seriesColorMap:Ljava/util/Map;

    move-object v8, v5

    move v9, v6

    const/16 v10, 0x8

    rem-int/lit8 v9, v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 160
    move-object v7, v0

    move-object v8, v5

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/XYChart;->seriesAdded(Ljavafx/scene/chart/XYChart$Series;I)V

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 162
    .end local v5    # "s":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v6    # "nextClearBit":I
    :cond_6
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v8

    if-ge v7, v8, :cond_7

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart;->updateLegend()V

    .line 163
    :cond_7
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/XYChart;->seriesChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 165
    goto/16 :goto_0

    .line 167
    .end local v3    # "dupCheck":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    .end local v4    # "i":I
    :cond_8
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/chart/XYChart;->invalidateRange()V

    .line 169
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart;->requestChartLayout()V

    .line 170
    return-void
.end method

.method private synthetic lambda$new$551(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart;->updateAxisRange()V

    .line 439
    return-void
.end method

.method private synthetic lambda$new$552(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart;->updateAxisRange()V

    .line 442
    return-void
.end method

.method private synthetic lambda$new$553(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/Axis;->setAnimated(Z)V

    .line 472
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/Axis;->setAnimated(Z)V

    .line 473
    :cond_1
    return-void
.end method

.method private static synthetic lambda$null$549(Ljavafx/collections/ObservableList;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Series;)I
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "series":Ljavafx/collections/ObservableList;
    move-object v1, p1

    .local v1, "o1":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "o2":Ljavafx/scene/chart/XYChart$Series;
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    move v0, v3

    .end local v0    # "series":Ljavafx/collections/ObservableList;
    return v0
.end method

.method private seriesNameChanged()V
    .locals 2

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/XYChart;->updateLegend()V

    .line 491
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/XYChart;->requestChartLayout()V

    .line 492
    return-void
.end method


# virtual methods
.method public final alternativeColumnFillVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->alternativeColumnFillVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method public final alternativeRowFillVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->alternativeRowFillVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method final createSeriesRemoveTimeLine(Ljavafx/scene/chart/XYChart$Series;J)[Ljavafx/animation/KeyFrame;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;J)[",
            "Ljavafx/animation/KeyFrame;"
        }
    .end annotation

    .prologue
    .line 935
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object/from16 v2, p1

    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-wide/from16 v3, p2

    .local v3, "fadeOutTime":J
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v9

    .line 936
    .local v5, "nodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v9, v5

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Series;->getNode()Ljavafx/scene/Node;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 937
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_0
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Data;

    move-object v7, v9

    .line 938
    .local v7, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 939
    move-object v9, v5

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 941
    :cond_0
    goto :goto_0

    .line 943
    .end local v7    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_1
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object v6, v9

    .line 944
    .local v6, "startValues":[Ljavafx/animation/KeyValue;
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    move-object v7, v9

    .line 945
    .local v7, "endValues":[Ljavafx/animation/KeyValue;
    const/4 v9, 0x0

    move v8, v9

    .local v8, "j":I
    :goto_1
    move v9, v8

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 946
    move-object v9, v6

    move v10, v8

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v5

    move v14, v8

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/Node;

    invoke-virtual {v13}, Ljavafx/scene/Node;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v11, v9, v10

    .line 947
    move-object v9, v7

    move v10, v8

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v5

    move v14, v8

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/Node;

    invoke-virtual {v13}, Ljavafx/scene/Node;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v11, v9, v10

    .line 945
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 949
    :cond_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljavafx/animation/KeyFrame;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    sget-object v14, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v12, v10, v11

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x1

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-wide v14, v3

    long-to-double v14, v14

    .line 951
    invoke-static {v14, v15}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v14

    move-object v15, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    invoke-static/range {v15 .. v17}, Ljavafx/scene/chart/XYChart$$Lambda$5;->lambdaFactory$(Ljavafx/scene/chart/XYChart;Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;

    move-result-object v15

    move-object/from16 v16, v7

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v12, v10, v11

    move-object v1, v9

    .end local v1    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v1
.end method

.method protected final currentDisplayedExtraValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->currentExtraValueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method protected final currentDisplayedXValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)",
            "Ljavafx/beans/property/ObjectProperty",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 979
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method protected final currentDisplayedYValueProperty(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/beans/property/ObjectProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)",
            "Ljavafx/beans/property/ObjectProperty",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 1003
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method dataBeingRemovedIsAdded(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V
    .locals 0
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
    .line 566
    .local p0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    .local p1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .local p2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-void
.end method

.method protected abstract dataItemAdded(Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation
.end method

.method protected abstract dataItemChanged(Ljavafx/scene/chart/XYChart$Data;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation
.end method

.method protected abstract dataItemRemoved(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation
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
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;>;"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->data:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
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
    .line 1180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    invoke-static {}, Ljavafx/scene/chart/XYChart;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method protected final getCurrentDisplayedExtraValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1010
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->getCurrentExtraValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method protected final getCurrentDisplayedXValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)TX;"
        }
    .end annotation

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method protected final getCurrentDisplayedYValue(Ljavafx/scene/chart/XYChart$Data;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)TY;"
        }
    .end annotation

    .prologue
    .line 987
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method public final getData()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->data:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method final getDataSize()I
    .locals 3

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 485
    .local v1, "data":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final getDisplayedDataIterator(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;"
        }
    .end annotation

    .prologue
    .line 1038
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/chart/XYChart$Series;->access$900(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method protected final getDisplayedSeriesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;"
        }
    .end annotation

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->displayedSeries:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method protected getPlotChildren()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->plotContent:Ljavafx/scene/Group;

    invoke-virtual {v1}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method getSeriesIndex(Ljavafx/scene/chart/XYChart$Series;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)I"
        }
    .end annotation

    .prologue
    .line 893
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart;->displayedSeries:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return v0
.end method

.method getSeriesSize()I
    .locals 2

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->displayedSeries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return v0
.end method

.method public final getVerticalGridLinesVisible()Z
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->verticalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return v0
.end method

.method public getXAxis()Ljavafx/scene/chart/Axis;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/chart/Axis",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->xAxis:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method public getYAxis()Ljavafx/scene/chart/Axis;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/chart/Axis",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->yAxis:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method public final horizontalGridLinesVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->horizontalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method public final horizontalZeroLineVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->horizontalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method public final isAlternativeColumnFillVisible()Z
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->alternativeColumnFillVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return v0
.end method

.method public final isAlternativeRowFillVisible()Z
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->alternativeRowFillVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return v0
.end method

.method public final isHorizontalGridLinesVisible()Z
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->horizontalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return v0
.end method

.method public final isHorizontalZeroLineVisible()Z
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->horizontalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return v0
.end method

.method public final isVerticalZeroLineVisible()Z
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->verticalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return v0
.end method

.method protected final layoutChartChildren(DDDD)V
    .locals 51

    .prologue
    .line 657
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-wide/from16 v3, p1

    .local v3, "top":D
    move-wide/from16 v5, p3

    .local v5, "left":D
    move-wide/from16 v7, p5

    .local v7, "width":D
    move-wide/from16 v9, p7

    .local v9, "height":D
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v38

    if-nez v38, :cond_0

    .line 884
    :goto_0
    return-void

    .line 658
    :cond_0
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-boolean v0, v0, Ljavafx/scene/chart/XYChart;->rangeValid:Z

    move/from16 v38, v0

    if-nez v38, :cond_1

    .line 659
    move-object/from16 v38, v2

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput-boolean v0, v1, Ljavafx/scene/chart/XYChart;->rangeValid:Z

    .line 660
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v38

    if-eqz v38, :cond_1

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->updateAxisRange()V

    .line 663
    :cond_1
    move-object/from16 v38, v2

    move-wide/from16 v39, v3

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/XYChart;->snapPosition(D)D

    move-result-wide v38

    move-wide/from16 v3, v38

    .line 664
    move-object/from16 v38, v2

    move-wide/from16 v39, v5

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/XYChart;->snapPosition(D)D

    move-result-wide v38

    move-wide/from16 v5, v38

    .line 666
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v38

    move-object/from16 v11, v38

    .line 667
    .local v11, "xa":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object/from16 v38, v11

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/Axis;->getTickMarks()Ljavafx/collections/ObservableList;

    move-result-object v38

    move-object/from16 v12, v38

    .line 668
    .local v12, "xaTickMarks":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/Axis$TickMark<TX;>;>;"
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v38

    move-object/from16 v13, v38

    .line 669
    .local v13, "ya":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object/from16 v38, v13

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/Axis;->getTickMarks()Ljavafx/collections/ObservableList;

    move-result-object v38

    move-object/from16 v14, v38

    .line 671
    .local v14, "yaTickMarks":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/Axis$TickMark<TY;>;>;"
    move-object/from16 v38, v11

    if-eqz v38, :cond_2

    move-object/from16 v38, v13

    if-nez v38, :cond_3

    :cond_2
    goto :goto_0

    .line 673
    :cond_3
    const-wide/16 v38, 0x0

    move-wide/from16 v15, v38

    .line 674
    .local v15, "xAxisWidth":D
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    move-wide/from16 v17, v38

    .line 675
    .local v17, "xAxisHeight":D
    const-wide/16 v38, 0x0

    move-wide/from16 v19, v38

    .line 676
    .local v19, "yAxisWidth":D
    const-wide/16 v38, 0x0

    move-wide/from16 v21, v38

    .line 677
    .local v21, "yAxisHeight":D
    const/16 v38, 0x0

    move/from16 v23, v38

    .local v23, "count":I
    :goto_1
    move/from16 v38, v23

    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_6

    .line 678
    move-object/from16 v38, v2

    move-wide/from16 v39, v9

    move-wide/from16 v41, v17

    sub-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/XYChart;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v21, v38

    .line 679
    move-wide/from16 v38, v21

    const-wide/16 v40, 0x0

    cmpg-double v38, v38, v40

    if-gez v38, :cond_4

    .line 680
    const-wide/16 v38, 0x0

    move-wide/from16 v21, v38

    .line 682
    :cond_4
    move-object/from16 v38, v13

    move-wide/from16 v39, v21

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/Axis;->prefWidth(D)D

    move-result-wide v38

    move-wide/from16 v19, v38

    .line 683
    move-object/from16 v38, v2

    move-wide/from16 v39, v7

    move-wide/from16 v41, v19

    sub-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/XYChart;->snapSize(D)D

    move-result-wide v38

    move-wide/from16 v15, v38

    .line 684
    move-wide/from16 v38, v15

    const-wide/16 v40, 0x0

    cmpg-double v38, v38, v40

    if-gez v38, :cond_5

    .line 685
    const-wide/16 v38, 0x0

    move-wide/from16 v15, v38

    .line 687
    :cond_5
    move-object/from16 v38, v11

    move-wide/from16 v39, v15

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/chart/Axis;->prefHeight(D)D

    move-result-wide v38

    move-wide/from16 v24, v38

    .line 688
    .local v24, "newXAxisHeight":D
    move-wide/from16 v38, v24

    move-wide/from16 v40, v17

    cmpl-double v38, v38, v40

    if-nez v38, :cond_b

    .line 692
    .end local v24    # "newXAxisHeight":D
    :cond_6
    move-wide/from16 v38, v15

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    move-wide/from16 v15, v38

    .line 693
    move-wide/from16 v38, v17

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    move-wide/from16 v17, v38

    .line 694
    move-wide/from16 v38, v19

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    move-wide/from16 v19, v38

    .line 695
    move-wide/from16 v38, v21

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    move-wide/from16 v21, v38

    .line 697
    const-wide/16 v38, 0x0

    move-wide/from16 v23, v38

    .line 698
    .local v23, "xAxisY":D
    sget-object v38, Ljavafx/scene/chart/XYChart$9;->$SwitchMap$javafx$geometry$Side:[I

    move-object/from16 v39, v11

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/Axis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Side;->ordinal()I

    move-result v39

    aget v38, v38, v39

    packed-switch v38, :pswitch_data_0

    .line 710
    :goto_2
    const-wide/16 v38, 0x0

    move-wide/from16 v25, v38

    .line 711
    .local v25, "yAxisX":D
    sget-object v38, Ljavafx/scene/chart/XYChart$9;->$SwitchMap$javafx$geometry$Side:[I

    move-object/from16 v39, v13

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/Axis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljavafx/geometry/Side;->ordinal()I

    move-result v39

    aget v38, v38, v39

    packed-switch v38, :pswitch_data_1

    .line 722
    :goto_3
    move-object/from16 v38, v11

    move-wide/from16 v39, v5

    move-wide/from16 v41, v23

    move-wide/from16 v43, v15

    move-wide/from16 v45, v17

    invoke-virtual/range {v38 .. v46}, Ljavafx/scene/chart/Axis;->resizeRelocate(DDDD)V

    .line 723
    move-object/from16 v38, v13

    move-wide/from16 v39, v25

    move-wide/from16 v41, v3

    move-wide/from16 v43, v19

    move-wide/from16 v45, v21

    invoke-virtual/range {v38 .. v46}, Ljavafx/scene/chart/Axis;->resizeRelocate(DDDD)V

    .line 726
    move-object/from16 v38, v11

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 727
    move-object/from16 v38, v11

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/Axis;->layout()V

    .line 728
    move-object/from16 v38, v13

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 729
    move-object/from16 v38, v13

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/Axis;->layout()V

    .line 731
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->layoutPlotChildren()V

    .line 733
    move-object/from16 v38, v11

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v38

    move-wide/from16 v27, v38

    .line 734
    .local v27, "xAxisZero":D
    move-object/from16 v38, v13

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/Axis;->getZeroPosition()D

    move-result-wide v38

    move-wide/from16 v29, v38

    .line 736
    .local v29, "yAxisZero":D
    move-wide/from16 v38, v27

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->isNaN(D)Z

    move-result v38

    if-nez v38, :cond_7

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->isVerticalZeroLineVisible()Z

    move-result v38

    if-nez v38, :cond_c

    .line 737
    :cond_7
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/shape/Line;->setVisible(Z)V

    .line 745
    :goto_4
    move-wide/from16 v38, v29

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->isNaN(D)Z

    move-result v38

    if-nez v38, :cond_8

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->isHorizontalZeroLineVisible()Z

    move-result v38

    if-nez v38, :cond_d

    .line 746
    :cond_8
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/shape/Line;->setVisible(Z)V

    .line 755
    :goto_5
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->plotBackground:Ljavafx/scene/layout/Region;

    move-object/from16 v38, v0

    move-wide/from16 v39, v5

    move-wide/from16 v41, v3

    move-wide/from16 v43, v15

    move-wide/from16 v45, v21

    invoke-virtual/range {v38 .. v46}, Ljavafx/scene/layout/Region;->resizeRelocate(DDDD)V

    .line 757
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->plotAreaClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v38, v0

    move-wide/from16 v39, v5

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 758
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->plotAreaClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v38, v0

    move-wide/from16 v39, v3

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 759
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->plotAreaClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v38, v0

    move-wide/from16 v39, v15

    const-wide/high16 v41, 0x3ff0000000000000L    # 1.0

    add-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 760
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->plotAreaClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v38, v0

    move-wide/from16 v39, v21

    const-wide/high16 v41, 0x3ff0000000000000L    # 1.0

    add-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 763
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->plotContent:Ljavafx/scene/Group;

    move-object/from16 v38, v0

    move-wide/from16 v39, v5

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/Group;->setLayoutX(D)V

    .line 764
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->plotContent:Ljavafx/scene/Group;

    move-object/from16 v38, v0

    move-wide/from16 v39, v3

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/Group;->setLayoutY(D)V

    .line 765
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->plotContent:Ljavafx/scene/Group;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/Group;->requestLayout()V

    .line 767
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalGridLines:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavafx/collections/ObservableList;->clear()V

    .line 768
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->getVerticalGridLinesVisible()Z

    move-result v38

    if-eqz v38, :cond_e

    .line 769
    const/16 v38, 0x0

    move/from16 v31, v38

    .local v31, "i":I
    :goto_6
    move/from16 v38, v31

    move-object/from16 v39, v12

    invoke-interface/range {v39 .. v39}, Ljavafx/collections/ObservableList;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_e

    .line 770
    move-object/from16 v38, v12

    move/from16 v39, v31

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v32, v38

    .line 771
    .local v32, "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TX;>;"
    move-object/from16 v38, v11

    move-object/from16 v39, v32

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v38

    move-wide/from16 v33, v38

    .line 772
    .local v33, "x":D
    move-wide/from16 v38, v33

    move-wide/from16 v40, v27

    cmpl-double v38, v38, v40

    if-nez v38, :cond_9

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->isVerticalZeroLineVisible()Z

    move-result v38

    if-nez v38, :cond_a

    :cond_9
    move-wide/from16 v38, v33

    const-wide/16 v40, 0x0

    cmpl-double v38, v38, v40

    if-lez v38, :cond_a

    move-wide/from16 v38, v33

    move-wide/from16 v40, v15

    cmpg-double v38, v38, v40

    if-gtz v38, :cond_a

    .line 773
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalGridLines:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    new-instance v39, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    move-wide/from16 v41, v5

    move-wide/from16 v43, v33

    add-double v41, v41, v43

    const-wide/high16 v43, 0x3fe0000000000000L    # 0.5

    add-double v41, v41, v43

    move-wide/from16 v43, v3

    invoke-direct/range {v40 .. v44}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v38

    .line 774
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalGridLines:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    new-instance v39, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    move-wide/from16 v41, v5

    move-wide/from16 v43, v33

    add-double v41, v41, v43

    const-wide/high16 v43, 0x3fe0000000000000L    # 0.5

    add-double v41, v41, v43

    move-wide/from16 v43, v3

    move-wide/from16 v45, v21

    add-double v43, v43, v45

    invoke-direct/range {v40 .. v44}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v38

    .line 769
    :cond_a
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_6

    .line 689
    .end local v25    # "yAxisX":D
    .end local v27    # "xAxisZero":D
    .end local v29    # "yAxisZero":D
    .end local v31    # "i":I
    .end local v32    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TX;>;"
    .end local v33    # "x":D
    .local v23, "count":I
    .restart local v24    # "newXAxisHeight":D
    :cond_b
    move-wide/from16 v38, v24

    move-wide/from16 v17, v38

    .line 677
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 700
    .end local v24    # "newXAxisHeight":D
    .local v23, "xAxisY":D
    :pswitch_0
    move-object/from16 v38, v11

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->setVisible(Z)V

    .line 701
    move-wide/from16 v38, v3

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    add-double v38, v38, v40

    move-wide/from16 v23, v38

    .line 702
    move-wide/from16 v38, v3

    move-wide/from16 v40, v17

    add-double v38, v38, v40

    move-wide/from16 v3, v38

    .line 703
    goto/16 :goto_2

    .line 705
    :pswitch_1
    move-object/from16 v38, v11

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->setVisible(Z)V

    .line 706
    move-wide/from16 v38, v3

    move-wide/from16 v40, v21

    add-double v38, v38, v40

    move-wide/from16 v23, v38

    goto/16 :goto_2

    .line 713
    .restart local v25    # "yAxisX":D
    :pswitch_2
    move-object/from16 v38, v13

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->setVisible(Z)V

    .line 714
    move-wide/from16 v38, v5

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    add-double v38, v38, v40

    move-wide/from16 v25, v38

    .line 715
    move-wide/from16 v38, v5

    move-wide/from16 v40, v19

    add-double v38, v38, v40

    move-wide/from16 v5, v38

    .line 716
    goto/16 :goto_3

    .line 718
    :pswitch_3
    move-object/from16 v38, v13

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->setVisible(Z)V

    .line 719
    move-wide/from16 v38, v5

    move-wide/from16 v40, v15

    add-double v38, v38, v40

    move-wide/from16 v25, v38

    goto/16 :goto_3

    .line 739
    .restart local v27    # "xAxisZero":D
    .restart local v29    # "yAxisZero":D
    :cond_c
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    move-wide/from16 v39, v5

    move-wide/from16 v41, v27

    add-double v39, v39, v41

    const-wide/high16 v41, 0x3fe0000000000000L    # 0.5

    add-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Line;->setStartX(D)V

    .line 740
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    move-wide/from16 v39, v3

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Line;->setStartY(D)V

    .line 741
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    move-wide/from16 v39, v5

    move-wide/from16 v41, v27

    add-double v39, v39, v41

    const-wide/high16 v41, 0x3fe0000000000000L    # 0.5

    add-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Line;->setEndX(D)V

    .line 742
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    move-wide/from16 v39, v3

    move-wide/from16 v41, v21

    add-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Line;->setEndY(D)V

    .line 743
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/shape/Line;->setVisible(Z)V

    goto/16 :goto_4

    .line 748
    :cond_d
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    move-wide/from16 v39, v5

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Line;->setStartX(D)V

    .line 749
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    move-wide/from16 v39, v3

    move-wide/from16 v41, v29

    add-double v39, v39, v41

    const-wide/high16 v41, 0x3fe0000000000000L    # 0.5

    add-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Line;->setStartY(D)V

    .line 750
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    move-wide/from16 v39, v5

    move-wide/from16 v41, v15

    add-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Line;->setEndX(D)V

    .line 751
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    move-wide/from16 v39, v3

    move-wide/from16 v41, v29

    add-double v39, v39, v41

    const-wide/high16 v41, 0x3fe0000000000000L    # 0.5

    add-double v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljavafx/scene/shape/Line;->setEndY(D)V

    .line 752
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalZeroLine:Ljavafx/scene/shape/Line;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/shape/Line;->setVisible(Z)V

    goto/16 :goto_5

    .line 779
    :cond_e
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalGridLines:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavafx/collections/ObservableList;->clear()V

    .line 780
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->isHorizontalGridLinesVisible()Z

    move-result v38

    if-eqz v38, :cond_11

    .line 781
    const/16 v38, 0x0

    move/from16 v31, v38

    .restart local v31    # "i":I
    :goto_7
    move/from16 v38, v31

    move-object/from16 v39, v14

    invoke-interface/range {v39 .. v39}, Ljavafx/collections/ObservableList;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_11

    .line 782
    move-object/from16 v38, v14

    move/from16 v39, v31

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljavafx/scene/chart/Axis$TickMark;

    move-object/from16 v32, v38

    .line 783
    .local v32, "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TY;>;"
    move-object/from16 v38, v13

    move-object/from16 v39, v32

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v38

    move-wide/from16 v33, v38

    .line 784
    .local v33, "y":D
    move-wide/from16 v38, v33

    move-wide/from16 v40, v29

    cmpl-double v38, v38, v40

    if-nez v38, :cond_f

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->isHorizontalZeroLineVisible()Z

    move-result v38

    if-nez v38, :cond_10

    :cond_f
    move-wide/from16 v38, v33

    const-wide/16 v40, 0x0

    cmpl-double v38, v38, v40

    if-ltz v38, :cond_10

    move-wide/from16 v38, v33

    move-wide/from16 v40, v21

    cmpg-double v38, v38, v40

    if-gez v38, :cond_10

    .line 785
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalGridLines:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    new-instance v39, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    move-wide/from16 v41, v5

    move-wide/from16 v43, v3

    move-wide/from16 v45, v33

    add-double v43, v43, v45

    const-wide/high16 v45, 0x3fe0000000000000L    # 0.5

    add-double v43, v43, v45

    invoke-direct/range {v40 .. v44}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v38

    .line 786
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalGridLines:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    new-instance v39, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    move-wide/from16 v41, v5

    move-wide/from16 v43, v15

    add-double v41, v41, v43

    move-wide/from16 v43, v3

    move-wide/from16 v45, v33

    add-double v43, v43, v45

    const-wide/high16 v45, 0x3fe0000000000000L    # 0.5

    add-double v43, v43, v45

    invoke-direct/range {v40 .. v44}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v38

    .line 781
    :cond_10
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_7

    .line 792
    .end local v31    # "i":I
    .end local v32    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TY;>;"
    .end local v33    # "y":D
    :cond_11
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalRowFill:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavafx/collections/ObservableList;->clear()V

    .line 793
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->isAlternativeColumnFillVisible()Z

    move-result v38

    if-eqz v38, :cond_18

    .line 795
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v50, v38

    move-object/from16 v38, v50

    move-object/from16 v39, v50

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v38

    .line 796
    .local v31, "tickPositionsPositive":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v50, v38

    move-object/from16 v38, v50

    move-object/from16 v39, v50

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v38

    .line 797
    .local v32, "tickPositionsNegative":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/16 v38, 0x0

    move/from16 v33, v38

    .local v33, "i":I
    :goto_8
    move/from16 v38, v33

    move-object/from16 v39, v12

    invoke-interface/range {v39 .. v39}, Ljavafx/collections/ObservableList;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_14

    .line 798
    move-object/from16 v38, v11

    move-object/from16 v39, v12

    move/from16 v40, v33

    invoke-interface/range {v39 .. v40}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljavafx/scene/chart/Axis$TickMark;

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v38

    move-wide/from16 v34, v38

    .line 799
    .local v34, "pos":D
    move-wide/from16 v38, v34

    move-wide/from16 v40, v27

    cmpl-double v38, v38, v40

    if-nez v38, :cond_12

    .line 800
    move-object/from16 v38, v31

    move-wide/from16 v39, v34

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v38

    .line 801
    move-object/from16 v38, v32

    move-wide/from16 v39, v34

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v38

    .line 797
    :goto_9
    add-int/lit8 v33, v33, 0x1

    goto :goto_8

    .line 802
    :cond_12
    move-wide/from16 v38, v34

    move-wide/from16 v40, v27

    cmpg-double v38, v38, v40

    if-gez v38, :cond_13

    .line 803
    move-object/from16 v38, v31

    move-wide/from16 v39, v34

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v38

    goto :goto_9

    .line 805
    :cond_13
    move-object/from16 v38, v32

    move-wide/from16 v39, v34

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v38

    goto :goto_9

    .line 808
    .end local v34    # "pos":D
    :cond_14
    move-object/from16 v38, v31

    invoke-static/range {v38 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 809
    move-object/from16 v38, v32

    invoke-static/range {v38 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 811
    const/16 v38, 0x1

    move/from16 v33, v38

    :goto_a
    move/from16 v38, v33

    move-object/from16 v39, v31

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_16

    .line 812
    move/from16 v38, v33

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    move-object/from16 v39, v31

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_15

    .line 813
    move-object/from16 v38, v31

    move/from16 v39, v33

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Double;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v38

    move-wide/from16 v34, v38

    .line 814
    .local v34, "x1":D
    move-object/from16 v38, v31

    move/from16 v39, v33

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Double;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v38

    move-wide/from16 v36, v38

    .line 815
    .local v36, "x2":D
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalRowFill:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    const/16 v39, 0x5

    move/from16 v0, v39

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v39, v0

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x0

    new-instance v42, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v34

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x1

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v34

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    move-wide/from16 v48, v21

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x2

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v36

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    move-wide/from16 v48, v21

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x3

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v36

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x4

    new-instance v42, Ljavafx/scene/shape/ClosePath;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    invoke-direct/range {v43 .. v43}, Ljavafx/scene/shape/ClosePath;-><init>()V

    aput-object v42, v40, v41

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v38

    .line 811
    .end local v34    # "x1":D
    .end local v36    # "x2":D
    :cond_15
    add-int/lit8 v33, v33, 0x2

    goto/16 :goto_a

    .line 824
    :cond_16
    const/16 v38, 0x0

    move/from16 v33, v38

    :goto_b
    move/from16 v38, v33

    move-object/from16 v39, v32

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_18

    .line 825
    move/from16 v38, v33

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    move-object/from16 v39, v32

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_17

    .line 826
    move-object/from16 v38, v32

    move/from16 v39, v33

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Double;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v38

    move-wide/from16 v34, v38

    .line 827
    .restart local v34    # "x1":D
    move-object/from16 v38, v32

    move/from16 v39, v33

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Double;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v38

    move-wide/from16 v36, v38

    .line 828
    .restart local v36    # "x2":D
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->verticalRowFill:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    const/16 v39, 0x5

    move/from16 v0, v39

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v39, v0

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x0

    new-instance v42, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v34

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x1

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v34

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    move-wide/from16 v48, v21

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x2

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v36

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    move-wide/from16 v48, v21

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x3

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v36

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x4

    new-instance v42, Ljavafx/scene/shape/ClosePath;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    invoke-direct/range {v43 .. v43}, Ljavafx/scene/shape/ClosePath;-><init>()V

    aput-object v42, v40, v41

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v38

    .line 824
    .end local v34    # "x1":D
    .end local v36    # "x2":D
    :cond_17
    add-int/lit8 v33, v33, 0x2

    goto/16 :goto_b

    .line 838
    .end local v31    # "tickPositionsPositive":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v32    # "tickPositionsNegative":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v33    # "i":I
    :cond_18
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalRowFill:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavafx/collections/ObservableList;->clear()V

    .line 839
    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/chart/XYChart;->isAlternativeRowFillVisible()Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 841
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v50, v38

    move-object/from16 v38, v50

    move-object/from16 v39, v50

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v38

    .line 842
    .restart local v31    # "tickPositionsPositive":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v50, v38

    move-object/from16 v38, v50

    move-object/from16 v39, v50

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v38

    .line 843
    .restart local v32    # "tickPositionsNegative":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/16 v38, 0x0

    move/from16 v33, v38

    .restart local v33    # "i":I
    :goto_c
    move/from16 v38, v33

    move-object/from16 v39, v14

    invoke-interface/range {v39 .. v39}, Ljavafx/collections/ObservableList;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1b

    .line 844
    move-object/from16 v38, v13

    move-object/from16 v39, v14

    move/from16 v40, v33

    invoke-interface/range {v39 .. v40}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljavafx/scene/chart/Axis$TickMark;

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/chart/Axis$TickMark;->getValue()Ljava/lang/Object;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljavafx/scene/chart/Axis;->getDisplayPosition(Ljava/lang/Object;)D

    move-result-wide v38

    move-wide/from16 v34, v38

    .line 845
    .local v34, "pos":D
    move-wide/from16 v38, v34

    move-wide/from16 v40, v29

    cmpl-double v38, v38, v40

    if-nez v38, :cond_19

    .line 846
    move-object/from16 v38, v31

    move-wide/from16 v39, v34

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v38

    .line 847
    move-object/from16 v38, v32

    move-wide/from16 v39, v34

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v38

    .line 843
    :goto_d
    add-int/lit8 v33, v33, 0x1

    goto :goto_c

    .line 848
    :cond_19
    move-wide/from16 v38, v34

    move-wide/from16 v40, v29

    cmpg-double v38, v38, v40

    if-gez v38, :cond_1a

    .line 849
    move-object/from16 v38, v31

    move-wide/from16 v39, v34

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v38

    goto :goto_d

    .line 851
    :cond_1a
    move-object/from16 v38, v32

    move-wide/from16 v39, v34

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v38

    goto :goto_d

    .line 854
    .end local v34    # "pos":D
    :cond_1b
    move-object/from16 v38, v31

    invoke-static/range {v38 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 855
    move-object/from16 v38, v32

    invoke-static/range {v38 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 857
    const/16 v38, 0x1

    move/from16 v33, v38

    :goto_e
    move/from16 v38, v33

    move-object/from16 v39, v31

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1d

    .line 858
    move/from16 v38, v33

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    move-object/from16 v39, v31

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1c

    .line 859
    move-object/from16 v38, v31

    move/from16 v39, v33

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Double;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v38

    move-wide/from16 v34, v38

    .line 860
    .local v34, "y1":D
    move-object/from16 v38, v31

    move/from16 v39, v33

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Double;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v38

    move-wide/from16 v36, v38

    .line 861
    .local v36, "y2":D
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalRowFill:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    const/16 v39, 0x5

    move/from16 v0, v39

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v39, v0

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x0

    new-instance v42, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v3

    move-wide/from16 v48, v34

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x1

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v15

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    move-wide/from16 v48, v34

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x2

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v15

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    move-wide/from16 v48, v36

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x3

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v3

    move-wide/from16 v48, v36

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x4

    new-instance v42, Ljavafx/scene/shape/ClosePath;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    invoke-direct/range {v43 .. v43}, Ljavafx/scene/shape/ClosePath;-><init>()V

    aput-object v42, v40, v41

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v38

    .line 857
    .end local v34    # "y1":D
    .end local v36    # "y2":D
    :cond_1c
    add-int/lit8 v33, v33, 0x2

    goto/16 :goto_e

    .line 870
    :cond_1d
    const/16 v38, 0x0

    move/from16 v33, v38

    :goto_f
    move/from16 v38, v33

    move-object/from16 v39, v32

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1f

    .line 871
    move/from16 v38, v33

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    move-object/from16 v39, v32

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1e

    .line 872
    move-object/from16 v38, v32

    move/from16 v39, v33

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Double;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v38

    move-wide/from16 v34, v38

    .line 873
    .restart local v34    # "y1":D
    move-object/from16 v38, v32

    move/from16 v39, v33

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Double;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v38

    move-wide/from16 v36, v38

    .line 874
    .restart local v36    # "y2":D
    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Ljavafx/scene/chart/XYChart;->horizontalRowFill:Ljavafx/scene/shape/Path;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v38

    const/16 v39, 0x5

    move/from16 v0, v39

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v39, v0

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x0

    new-instance v42, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v3

    move-wide/from16 v48, v34

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x1

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v15

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    move-wide/from16 v48, v34

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x2

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v15

    add-double v44, v44, v46

    move-wide/from16 v46, v3

    move-wide/from16 v48, v36

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x3

    new-instance v42, Ljavafx/scene/shape/LineTo;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    move-wide/from16 v44, v5

    move-wide/from16 v46, v3

    move-wide/from16 v48, v36

    add-double v46, v46, v48

    invoke-direct/range {v43 .. v47}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v42, v40, v41

    move-object/from16 v50, v39

    move-object/from16 v39, v50

    move-object/from16 v40, v50

    const/16 v41, 0x4

    new-instance v42, Ljavafx/scene/shape/ClosePath;

    move-object/from16 v50, v42

    move-object/from16 v42, v50

    move-object/from16 v43, v50

    invoke-direct/range {v43 .. v43}, Ljavafx/scene/shape/ClosePath;-><init>()V

    aput-object v42, v40, v41

    invoke-interface/range {v38 .. v39}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v38

    .line 870
    .end local v34    # "y1":D
    .end local v36    # "y2":D
    :cond_1e
    add-int/lit8 v33, v33, 0x2

    goto/16 :goto_f

    .line 884
    .end local v31    # "tickPositionsPositive":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v32    # "tickPositionsNegative":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v33    # "i":I
    :cond_1f
    goto/16 :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 711
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract layoutPlotChildren()V
.end method

.method protected final removeDataItemFromDisplay(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V
    .locals 5
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
    .line 1049
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/chart/XYChart$Series;->access$1000(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    .line 1050
    return-void
.end method

.method protected final removeSeriesFromDisplay(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/chart/XYChart$Series;->setToRemove:Z

    .line 912
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafx/scene/chart/XYChart$Series;->access$800(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart;)V

    .line 913
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart;->displayedSeries:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 914
    return-void
.end method

.method protected abstract seriesAdded(Ljavafx/scene/chart/XYChart$Series;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;I)V"
        }
    .end annotation
.end method

.method seriesBeingRemovedIsAdded(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    .local p1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-void
.end method

.method protected seriesChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 0
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
    .line 615
    .local p0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    .local p1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/chart/XYChart$Series;>;"
    return-void
.end method

.method protected abstract seriesRemoved(Ljavafx/scene/chart/XYChart$Series;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation
.end method

.method public final setAlternativeColumnFillVisible(Z)V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart;->alternativeColumnFillVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setAlternativeRowFillVisible(Z)V
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart;->alternativeRowFillVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected final setCurrentDisplayedExtraValue(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1018
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setCurrentExtraValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected final setCurrentDisplayedXValue(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;TX;)V"
        }
    .end annotation

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TX;"
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    return-void
.end method

.method protected final setCurrentDisplayedYValue(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;TY;)V"
        }
    .end annotation

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TY;"
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    return-void
.end method

.method public final setData(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;)V"
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart;->data:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHorizontalGridLinesVisible(Z)V
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart;->horizontalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setHorizontalZeroLineVisible(Z)V
    .locals 4

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart;->horizontalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setVerticalGridLinesVisible(Z)V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart;->verticalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setVerticalZeroLineVisible(Z)V
    .locals 4

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart;->verticalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method protected updateAxisRange()V
    .locals 12

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart;->getXAxis()Ljavafx/scene/chart/Axis;

    move-result-object v9

    move-object v1, v9

    .line 631
    .local v1, "xa":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart;->getYAxis()Ljavafx/scene/chart/Axis;

    move-result-object v9

    move-object v2, v9

    .line 632
    .local v2, "ya":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    const/4 v9, 0x0

    move-object v3, v9

    .line 633
    .local v3, "xData":Ljava/util/List;, "Ljava/util/List<TX;>;"
    const/4 v9, 0x0

    move-object v4, v9

    .line 634
    .local v4, "yData":Ljava/util/List;, "Ljava/util/List<TY;>;"
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v9

    .line 635
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v9

    .line 636
    :cond_1
    move-object v9, v3

    if-nez v9, :cond_2

    move-object v9, v4

    if-eqz v9, :cond_8

    .line 637
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_0
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Series;

    move-object v6, v9

    .line 638
    .local v6, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_1
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Data;

    move-object v8, v9

    .line 639
    .local v8, "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v9, v3

    if-eqz v9, :cond_3

    move-object v9, v3

    move-object v10, v8

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 640
    :cond_3
    move-object v9, v4

    if-eqz v9, :cond_4

    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 641
    :cond_4
    goto :goto_1

    .line 642
    .end local v8    # "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_5
    goto :goto_0

    .line 643
    .end local v6    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_6
    move-object v9, v3

    if-eqz v9, :cond_7

    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 644
    :cond_7
    move-object v9, v4

    if-eqz v9, :cond_8

    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 646
    :cond_8
    return-void
.end method

.method protected updateLegend()V
    .locals 0

    .prologue
    .line 552
    .local p0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-void
.end method

.method public final verticalGridLinesVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->verticalGridLinesVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method

.method public final verticalZeroLineVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart;->verticalZeroLineVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    return-object v0
.end method
