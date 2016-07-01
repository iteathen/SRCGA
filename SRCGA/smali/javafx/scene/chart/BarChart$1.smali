.class Ljavafx/scene/chart/BarChart$1;
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
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart$1;, "Ljavafx/scene/chart/BarChart$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/BarChart;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/BarChart$1;->this$0:Ljavafx/scene/chart/BarChart;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart$1;, "Ljavafx/scene/chart/BarChart$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/BarChart$1;->this$0:Ljavafx/scene/chart/BarChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart$1;, "Ljavafx/scene/chart/BarChart$1;"
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
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart$1;, "Ljavafx/scene/chart/BarChart$1;"
    # getter for: Ljavafx/scene/chart/BarChart$StyleableProperties;->BAR_GAP:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/BarChart$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart$1;, "Ljavafx/scene/chart/BarChart$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/BarChart$1;, "Ljavafx/scene/chart/BarChart$1;"
    const-string v1, "barGap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/BarChart$1;, "Ljavafx/scene/chart/BarChart$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 87
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/BarChart$1;, "Ljavafx/scene/chart/BarChart$1;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/BarChart$1;->get()D

    move-result-wide v2

    .line 88
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/chart/BarChart$1;->this$0:Ljavafx/scene/chart/BarChart;

    invoke-virtual {v2}, Ljavafx/scene/chart/BarChart;->requestChartLayout()V

    .line 89
    return-void
.end method
