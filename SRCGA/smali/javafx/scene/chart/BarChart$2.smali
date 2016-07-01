.class Ljavafx/scene/chart/BarChart$2;
.super Ljavafx/css/StyleableDoubleProperty;
.source "BarChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/BarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/BarChart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/BarChart;D)V
    .locals 8

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart$2;, "Ljavafx/scene/chart/BarChart$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/BarChart;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/BarChart$2;->this$0:Ljavafx/scene/chart/BarChart;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart$2;, "Ljavafx/scene/chart/BarChart$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/BarChart$2;->this$0:Ljavafx/scene/chart/BarChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart$2;, "Ljavafx/scene/chart/BarChart$2;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/BarChart",
            "<**>;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart$2;, "Ljavafx/scene/chart/BarChart$2;"
    # getter for: Ljavafx/scene/chart/BarChart$StyleableProperties;->CATEGORY_GAP:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/BarChart$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart$2;, "Ljavafx/scene/chart/BarChart$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart$2;, "Ljavafx/scene/chart/BarChart$2;"
    const-string v1, "categoryGap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart$2;, "Ljavafx/scene/chart/BarChart$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 110
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/BarChart$2;, "Ljavafx/scene/chart/BarChart$2;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/BarChart$2;->get()D

    move-result-wide v2

    .line 111
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/chart/BarChart$2;->this$0:Ljavafx/scene/chart/BarChart;

    invoke-virtual {v2}, Ljavafx/scene/chart/BarChart;->requestChartLayout()V

    .line 112
    return-void
.end method
