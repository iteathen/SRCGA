.class Ljavafx/scene/chart/StackedBarChart$2;
.super Ljavafx/css/StyleableDoubleProperty;
.source "StackedBarChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/StackedBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/StackedBarChart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/StackedBarChart;D)V
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart$2;, "Ljavafx/scene/chart/StackedBarChart$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/StackedBarChart;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/StackedBarChart$2;->this$0:Ljavafx/scene/chart/StackedBarChart;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart$2;, "Ljavafx/scene/chart/StackedBarChart$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedBarChart$2;->this$0:Ljavafx/scene/chart/StackedBarChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChart$2;, "Ljavafx/scene/chart/StackedBarChart$2;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/StackedBarChart",
            "<**>;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart$2;, "Ljavafx/scene/chart/StackedBarChart$2;"
    # getter for: Ljavafx/scene/chart/StackedBarChart$StyleableProperties;->CATEGORY_GAP:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/StackedBarChart$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChart$2;, "Ljavafx/scene/chart/StackedBarChart$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart$2;, "Ljavafx/scene/chart/StackedBarChart$2;"
    const-string v1, "categoryGap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedBarChart$2;, "Ljavafx/scene/chart/StackedBarChart$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/StackedBarChart$2;, "Ljavafx/scene/chart/StackedBarChart$2;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/StackedBarChart$2;->get()D

    move-result-wide v2

    .line 102
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/chart/StackedBarChart$2;->this$0:Ljavafx/scene/chart/StackedBarChart;

    invoke-virtual {v2}, Ljavafx/scene/chart/StackedBarChart;->requestChartLayout()V

    .line 103
    return-void
.end method
