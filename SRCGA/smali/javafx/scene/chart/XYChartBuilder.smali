.class public abstract Ljavafx/scene/chart/XYChartBuilder;
.super Ljavafx/scene/chart/ChartBuilder;
.source "XYChartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/chart/XYChartBuilder",
        "<TX;TY;TB;>;>",
        "Ljavafx/scene/chart/ChartBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private XAxis:Ljavafx/scene/chart/Axis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/chart/Axis",
            "<TX;>;"
        }
    .end annotation
.end field

.field private YAxis:Ljavafx/scene/chart/Axis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/chart/Axis",
            "<TY;>;"
        }
    .end annotation
.end field

.field private __set:I

.field private alternativeColumnFillVisible:Z

.field private alternativeRowFillVisible:Z

.field private data:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;"
        }
    .end annotation
.end field

.field private horizontalGridLinesVisible:Z

.field private horizontalZeroLineVisible:Z

.field private verticalGridLinesVisible:Z

.field private verticalZeroLineVisible:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/ChartBuilder;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/XYChartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TX;>;)TB;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChartBuilder;->XAxis:Ljavafx/scene/chart/Axis;

    .line 138
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/XYChartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TY;>;)TB;"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChartBuilder;->YAxis:Ljavafx/scene/chart/Axis;

    .line 148
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public alternativeColumnFillVisible(Z)Ljavafx/scene/chart/XYChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/XYChartBuilder;->alternativeColumnFillVisible:Z

    .line 61
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    .line 62
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public alternativeRowFillVisible(Z)Ljavafx/scene/chart/XYChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/XYChartBuilder;->alternativeRowFillVisible:Z

    .line 72
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/chart/XYChart;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/chart/ChartBuilder;->applyTo(Ljavafx/scene/chart/Chart;)V

    .line 44
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    move v2, v3

    .line 45
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/XYChartBuilder;->alternativeColumnFillVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart;->setAlternativeColumnFillVisible(Z)V

    .line 46
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/XYChartBuilder;->alternativeRowFillVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart;->setAlternativeRowFillVisible(Z)V

    .line 47
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChartBuilder;->data:Ljavafx/collections/ObservableList;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 48
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/XYChartBuilder;->horizontalGridLinesVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart;->setHorizontalGridLinesVisible(Z)V

    .line 49
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/XYChartBuilder;->horizontalZeroLineVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart;->setHorizontalZeroLineVisible(Z)V

    .line 50
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/XYChartBuilder;->verticalGridLinesVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart;->setVerticalGridLinesVisible(Z)V

    .line 51
    :cond_5
    move v3, v2

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/XYChartBuilder;->verticalZeroLineVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart;->setVerticalZeroLineVisible(Z)V

    .line 52
    :cond_6
    return-void
.end method

.method public data(Ljavafx/collections/ObservableList;)Ljavafx/scene/chart/XYChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChartBuilder;->data:Ljavafx/collections/ObservableList;

    .line 83
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    .line 84
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public horizontalGridLinesVisible(Z)Ljavafx/scene/chart/XYChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/XYChartBuilder;->horizontalGridLinesVisible:Z

    .line 94
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    .line 95
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public horizontalZeroLineVisible(Z)Ljavafx/scene/chart/XYChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/XYChartBuilder;->horizontalZeroLineVisible:Z

    .line 105
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    .line 106
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public verticalGridLinesVisible(Z)Ljavafx/scene/chart/XYChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/XYChartBuilder;->verticalGridLinesVisible:Z

    .line 116
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    const/16 v4, 0x20

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    .line 117
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public verticalZeroLineVisible(Z)Ljavafx/scene/chart/XYChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/XYChartBuilder;->verticalZeroLineVisible:Z

    .line 127
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    const/16 v4, 0x40

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Ljavafx/scene/chart/XYChartBuilder;->__set:I

    .line 128
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChartBuilder;, "Ljavafx/scene/chart/XYChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method
