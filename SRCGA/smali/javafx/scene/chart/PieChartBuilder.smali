.class public Ljavafx/scene/chart/PieChartBuilder;
.super Ljavafx/scene/chart/ChartBuilder;
.source "PieChartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/chart/PieChartBuilder",
        "<TB;>;>",
        "Ljavafx/scene/chart/ChartBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private clockwise:Z

.field private data:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/PieChart$Data;",
            ">;"
        }
    .end annotation
.end field

.field private labelLineLength:D

.field private labelsVisible:Z

.field private startAngle:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/ChartBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/chart/PieChartBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/chart/PieChartBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/chart/PieChartBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/chart/PieChartBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/chart/PieChart;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/PieChart;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/chart/ChartBuilder;->applyTo(Ljavafx/scene/chart/Chart;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/PieChartBuilder;->clockwise:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/PieChart;->setClockwise(Z)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChartBuilder;->data:Ljavafx/collections/ObservableList;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/PieChart;->setData(Ljavafx/collections/ObservableList;)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/PieChartBuilder;->labelLineLength:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/PieChart;->setLabelLineLength(D)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/PieChartBuilder;->labelsVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/PieChart;->setLabelsVisible(Z)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/PieChartBuilder;->startAngle:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/PieChart;->setStartAngle(D)V

    .line 55
    :cond_4
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/PieChartBuilder;->build()Ljavafx/scene/chart/PieChart;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/chart/PieChart;
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/chart/PieChart;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/chart/PieChart;-><init>()V

    move-object v1, v2

    .line 117
    .local v1, "x":Ljavafx/scene/chart/PieChart;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/PieChartBuilder;->applyTo(Ljavafx/scene/chart/PieChart;)V

    .line 118
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/PieChartBuilder;->build()Ljavafx/scene/chart/PieChart;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    return-object v0
.end method

.method public clockwise(Z)Ljavafx/scene/chart/PieChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/PieChartBuilder;->clockwise:Z

    .line 64
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    .line 65
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    return-object v0
.end method

.method public data(Ljavafx/collections/ObservableList;)Ljavafx/scene/chart/PieChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/PieChart$Data;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/PieChart$Data;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/PieChartBuilder;->data:Ljavafx/collections/ObservableList;

    .line 75
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    .line 76
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    return-object v0
.end method

.method public labelLineLength(D)Ljavafx/scene/chart/PieChartBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/PieChartBuilder;->labelLineLength:D

    .line 86
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    .line 87
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    return-object v0
.end method

.method public labelsVisible(Z)Ljavafx/scene/chart/PieChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/PieChartBuilder;->labelsVisible:Z

    .line 97
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    .line 98
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    return-object v0
.end method

.method public startAngle(D)Ljavafx/scene/chart/PieChartBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/PieChartBuilder;->startAngle:D

    .line 108
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/chart/PieChartBuilder;->__set:I

    .line 109
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/PieChartBuilder;, "Ljavafx/scene/chart/PieChartBuilder<TB;>;"
    return-object v0
.end method
