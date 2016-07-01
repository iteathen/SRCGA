.class public Ljavafx/scene/chart/ScatterChartBuilder;
.super Ljavafx/scene/chart/XYChartBuilder;
.source "ScatterChartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/chart/ScatterChartBuilder",
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


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/XYChartBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/chart/ScatterChartBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/chart/ScatterChartBuilder",
            "<TX;TY;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/chart/ScatterChartBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/chart/ScatterChartBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/ScatterChartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TX;>;)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TX;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/ScatterChartBuilder;->XAxis:Ljavafx/scene/chart/Axis;

    .line 53
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/XYChartBuilder;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/ScatterChartBuilder;->XAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/ScatterChartBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/ScatterChartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TY;>;)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TY;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/ScatterChartBuilder;->YAxis:Ljavafx/scene/chart/Axis;

    .line 63
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/XYChartBuilder;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/ScatterChartBuilder;->YAxis(Ljavafx/scene/chart/Axis;)Ljavafx/scene/chart/ScatterChartBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/ScatterChartBuilder;->build()Ljavafx/scene/chart/ScatterChart;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/chart/ScatterChart;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/chart/ScatterChart",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    new-instance v2, Ljavafx/scene/chart/ScatterChart;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/ScatterChartBuilder;->XAxis:Ljavafx/scene/chart/Axis;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/ScatterChartBuilder;->YAxis:Ljavafx/scene/chart/Axis;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/ScatterChart;-><init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/chart/Axis;)V

    move-object v1, v2

    .line 71
    .local v1, "x":Ljavafx/scene/chart/ScatterChart;, "Ljavafx/scene/chart/ScatterChart<TX;TY;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/ScatterChartBuilder;->applyTo(Ljavafx/scene/chart/XYChart;)V

    .line 72
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/ScatterChartBuilder;->build()Ljavafx/scene/chart/ScatterChart;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ScatterChartBuilder;, "Ljavafx/scene/chart/ScatterChartBuilder<TX;TY;TB;>;"
    return-object v0
.end method
