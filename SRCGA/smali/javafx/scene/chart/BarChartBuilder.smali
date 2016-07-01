.class public Ljavafx/scene/chart/BarChartBuilder;
.super Ljavafx/scene/chart/XYChartBuilder;
.source "BarChartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/chart/BarChartBuilder",
        "<TX;TY;TB;>;>",
        "Ljavafx/scene/chart/XYChartBuilder",
        "<TX;TY;TB;>;"
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

.field private barGap:D

.field private categoryGap:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/XYChartBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/chart/BarChartBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/chart/BarChartBuilder",
            "<TX;TY;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/chart/BarChartBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/chart/BarChartBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/BarChartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TX;>;)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/BarChartBuilder;->XAxis:Ljavafx/scene/chart/Axis;

    .line 83
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/XYChartBuilder;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/BarChartBuilder;->XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/BarChartBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/BarChartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TY;>;)TB;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/BarChartBuilder;->YAxis:Ljavafx/scene/chart/Axis;

    .line 93
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/XYChartBuilder;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/BarChartBuilder;->YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/BarChartBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/chart/BarChart;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/BarChart",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/chart/XYChartBuilder;->applyTo(Ljavafx/scene/chart/XYChart;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/chart/BarChartBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/BarChartBuilder;->barGap:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/BarChart;->setBarGap(D)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/BarChartBuilder;->categoryGap:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/BarChart;->setCategoryGap(D)V

    .line 52
    :cond_1
    return-void
.end method

.method public barGap(D)Ljavafx/scene/chart/BarChartBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/BarChartBuilder;->barGap:D

    .line 61
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/BarChartBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/chart/BarChartBuilder;->__set:I

    .line 62
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/BarChartBuilder;->build()Ljavafx/scene/chart/BarChart;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/chart/BarChart;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/chart/BarChart",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    new-instance v2, Ljavafx/scene/chart/BarChart;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/BarChartBuilder;->XAxis:Ljavafx/scene/chart/Axis;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/BarChartBuilder;->YAxis:Ljavafx/scene/chart/Axis;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/BarChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;)V

    move-object v1, v2

    .line 101
    .local v1, "x":Ljavafx/scene/chart/BarChart;, "Ljavafx/scene/chart/BarChart<TX;TY;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/BarChartBuilder;->applyTo(Ljavafx/scene/chart/BarChart;)V

    .line 102
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/BarChartBuilder;->build()Ljavafx/scene/chart/BarChart;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public categoryGap(D)Ljavafx/scene/chart/BarChartBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/BarChartBuilder;->categoryGap:D

    .line 72
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/BarChartBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/chart/BarChartBuilder;->__set:I

    .line 73
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/BarChartBuilder;, "Ljavafx/scene/chart/BarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method
