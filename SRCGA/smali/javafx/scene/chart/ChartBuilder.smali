.class public abstract Ljavafx/scene/chart/ChartBuilder;
.super Ljavafx/scene/layout/RegionBuilder;
.source "ChartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/chart/ChartBuilder",
        "<TB;>;>",
        "Ljavafx/scene/layout/RegionBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private animated:Z

.field private legendSide:Ljavafx/geometry/Side;

.field private legendVisible:Z

.field private title:Ljava/lang/String;

.field private titleSide:Ljavafx/geometry/Side;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/RegionBuilder;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public animated(Z)Ljavafx/scene/chart/ChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/ChartBuilder;->animated:Z

    .line 59
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/ChartBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/chart/ChartBuilder;->__set:I

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/chart/Chart;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/Chart;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/layout/RegionBuilder;->applyTo(Ljavafx/scene/layout/Region;)V

    .line 44
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/chart/ChartBuilder;->__set:I

    move v2, v3

    .line 45
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/ChartBuilder;->animated:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Chart;->setAnimated(Z)V

    .line 46
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/ChartBuilder;->legendSide:Ljavafx/geometry/Side;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Chart;->setLegendSide(Ljavafx/geometry/Side;)V

    .line 47
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/ChartBuilder;->legendVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Chart;->setLegendVisible(Z)V

    .line 48
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/ChartBuilder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Chart;->setTitle(Ljava/lang/String;)V

    .line 49
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/ChartBuilder;->titleSide:Ljavafx/geometry/Side;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Chart;->setTitleSide(Ljavafx/geometry/Side;)V

    .line 50
    :cond_4
    return-void
.end method

.method public legendSide(Ljavafx/geometry/Side;)Ljavafx/scene/chart/ChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Side;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Side;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/ChartBuilder;->legendSide:Ljavafx/geometry/Side;

    .line 70
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/ChartBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/chart/ChartBuilder;->__set:I

    .line 71
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    return-object v0
.end method

.method public legendVisible(Z)Ljavafx/scene/chart/ChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/ChartBuilder;->legendVisible:Z

    .line 81
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/ChartBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/chart/ChartBuilder;->__set:I

    .line 82
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    return-object v0
.end method

.method public title(Ljava/lang/String;)Ljavafx/scene/chart/ChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/ChartBuilder;->title:Ljava/lang/String;

    .line 92
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/ChartBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/chart/ChartBuilder;->__set:I

    .line 93
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    return-object v0
.end method

.method public titleSide(Ljavafx/geometry/Side;)Ljavafx/scene/chart/ChartBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Side;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Side;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/ChartBuilder;->titleSide:Ljavafx/geometry/Side;

    .line 103
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/ChartBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/scene/chart/ChartBuilder;->__set:I

    .line 104
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ChartBuilder;, "Ljavafx/scene/chart/ChartBuilder<TB;>;"
    return-object v0
.end method
