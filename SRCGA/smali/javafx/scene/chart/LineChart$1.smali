.class Ljavafx/scene/chart/LineChart$1;
.super Ljavafx/css/StyleableBooleanProperty;
.source "LineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/LineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/LineChart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/LineChart;Z)V
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$1;, "Ljavafx/scene/chart/LineChart$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/LineChart;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/LineChart$1;->this$0:Ljavafx/scene/chart/LineChart;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$1;, "Ljavafx/scene/chart/LineChart$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/LineChart$1;->this$0:Ljavafx/scene/chart/LineChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart$1;, "Ljavafx/scene/chart/LineChart$1;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/LineChart",
            "<**>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$1;, "Ljavafx/scene/chart/LineChart$1;"
    # getter for: Ljavafx/scene/chart/LineChart$StyleableProperties;->CREATE_SYMBOLS:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/LineChart$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart$1;, "Ljavafx/scene/chart/LineChart$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$1;, "Ljavafx/scene/chart/LineChart$1;"
    const-string v1, "createSymbols"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart$1;, "Ljavafx/scene/chart/LineChart$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 11

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$1;, "Ljavafx/scene/chart/LineChart$1;"
    const/4 v6, 0x0

    move v1, v6

    .local v1, "seriesIndex":I
    :goto_0
    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/LineChart$1;->this$0:Ljavafx/scene/chart/LineChart;

    invoke-virtual {v7}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 99
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/LineChart$1;->this$0:Ljavafx/scene/chart/LineChart;

    invoke-virtual {v6}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v1

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v6

    .line 100
    .local v2, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "itemIndex":I
    :goto_1
    move v6, v3

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 101
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v6

    .line 102
    .local v4, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    move-object v5, v6

    .line 103
    .local v5, "symbol":Ljavafx/scene/Node;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/LineChart$1;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    if-nez v6, :cond_1

    .line 104
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/LineChart$1;->this$0:Ljavafx/scene/chart/LineChart;

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/chart/LineChart$1;->this$0:Ljavafx/scene/chart/LineChart;

    invoke-virtual {v8}, Ljavafx/scene/chart/LineChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v2

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    move-object v9, v4

    move v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/scene/chart/LineChart;->access$000(Ljavafx/scene/chart/LineChart;Ljavafx/scene/chart/XYChart$Series;ILjavafx/scene/chart/XYChart$Data;I)Ljavafx/scene/Node;

    move-result-object v6

    move-object v5, v6

    .line 105
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/LineChart$1;->this$0:Ljavafx/scene/chart/LineChart;

    invoke-virtual {v6}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v5

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 100
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/LineChart$1;->get()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v5

    if-eqz v6, :cond_0

    .line 107
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/LineChart$1;->this$0:Ljavafx/scene/chart/LineChart;

    invoke-virtual {v6}, Ljavafx/scene/chart/LineChart;->getPlotChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v5

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 108
    const/4 v6, 0x0

    move-object v5, v6

    .line 109
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/chart/XYChart$Data;->setNode(Ljavafx/scene/Node;)V

    goto :goto_2

    .line 98
    .end local v4    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    .end local v5    # "symbol":Ljavafx/scene/Node;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 113
    .end local v2    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    .end local v3    # "itemIndex":I
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/LineChart$1;->this$0:Ljavafx/scene/chart/LineChart;

    invoke-virtual {v6}, Ljavafx/scene/chart/LineChart;->requestChartLayout()V

    .line 114
    return-void
.end method
