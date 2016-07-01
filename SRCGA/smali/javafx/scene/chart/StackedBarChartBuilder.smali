.class public Ljavafx/scene/chart/StackedBarChartBuilder;
.super Ljavafx/scene/chart/XYChartBuilder;
.source "StackedBarChartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/chart/StackedBarChartBuilder",
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

.field private __set:Z

.field private categoryGap:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/XYChartBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/chart/StackedBarChartBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/chart/StackedBarChartBuilder",
            "<TX;TY;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/chart/StackedBarChartBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/chart/StackedBarChartBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/StackedBarChartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TX;>;)TB;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/StackedBarChartBuilder;->XAxis:Ljavafx/scene/chart/Axis;

    .line 70
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/XYChartBuilder;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/StackedBarChartBuilder;->XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/StackedBarChartBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/StackedBarChartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TY;>;)TB;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/StackedBarChartBuilder;->YAxis:Ljavafx/scene/chart/Axis;

    .line 80
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/XYChartBuilder;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/StackedBarChartBuilder;->YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/StackedBarChartBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/chart/StackedBarChart;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/StackedBarChart",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Ljavafx/scene/chart/XYChartBuilder;->applyTo(Ljavafx/scene/chart/XYChart;)V

    .line 49
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/chart/StackedBarChartBuilder;->__set:Z

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/chart/StackedBarChartBuilder;->categoryGap:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/StackedBarChart;->setCategoryGap(D)V

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/StackedBarChartBuilder;->build()Ljavafx/scene/chart/StackedBarChart;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/chart/StackedBarChart;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/chart/StackedBarChart",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    new-instance v2, Ljavafx/scene/chart/StackedBarChart;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/StackedBarChartBuilder;->XAxis:Ljavafx/scene/chart/Axis;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedBarChartBuilder;->YAxis:Ljavafx/scene/chart/Axis;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/StackedBarChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;)V

    move-object v1, v2

    .line 88
    .local v1, "x":Ljavafx/scene/chart/StackedBarChart;, "Ljavafx/scene/chart/StackedBarChart<TX;TY;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/StackedBarChartBuilder;->applyTo(Ljavafx/scene/chart/StackedBarChart;)V

    .line 89
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/StackedBarChartBuilder;->build()Ljavafx/scene/chart/StackedBarChart;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public categoryGap(D)Ljavafx/scene/chart/StackedBarChartBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/StackedBarChartBuilder;->categoryGap:D

    .line 59
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/chart/StackedBarChartBuilder;->__set:Z

    .line 60
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChartBuilder;, "Ljavafx/scene/chart/StackedBarChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method
