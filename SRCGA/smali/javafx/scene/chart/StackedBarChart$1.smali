.class Ljavafx/scene/chart/StackedBarChart$1;
.super Ljava/lang/Object;
.source "StackedBarChart.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/StackedBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/StackedBarChart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/StackedBarChart;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart$1;, "Ljavafx/scene/chart/StackedBarChart$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/StackedBarChart;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/StackedBarChart$1;->this$0:Ljavafx/scene/chart/StackedBarChart;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedBarChart$1;, "Ljavafx/scene/chart/StackedBarChart$1;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljava/lang/String;>;"
    :goto_0
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 79
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v9

    :goto_1
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v3, v9

    .line 80
    .local v3, "cat":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/StackedBarChart$1;->this$0:Ljavafx/scene/chart/StackedBarChart;

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedBarChart;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_2
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Series;

    move-object v5, v9

    .line 81
    .local v5, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_3
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/chart/XYChart$Data;

    move-object v7, v9

    .line 82
    .local v7, "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/chart/StackedBarChart$1;->this$0:Ljavafx/scene/chart/StackedBarChart;

    invoke-static {v10}, Ljavafx/scene/chart/StackedBarChart;->access$000(Ljavafx/scene/chart/StackedBarChart;)Ljavafx/geometry/Orientation;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/chart/StackedBarChart$1;->this$0:Ljavafx/scene/chart/StackedBarChart;

    invoke-static {v11}, Ljavafx/scene/chart/StackedBarChart;->access$000(Ljavafx/scene/chart/StackedBarChart;)Ljavafx/geometry/Orientation;

    move-result-object v11

    sget-object v11, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_1

    move-object v10, v7

    .line 83
    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v10

    .line 82
    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 84
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/StackedBarChart$1;->this$0:Ljavafx/scene/chart/StackedBarChart;

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedBarChart;->getAnimated()Z

    move-result v9

    move v8, v9

    .line 85
    .local v8, "animatedOn":Z
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/StackedBarChart$1;->this$0:Ljavafx/scene/chart/StackedBarChart;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/chart/StackedBarChart;->setAnimated(Z)V

    .line 86
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/StackedBarChart$1;->this$0:Ljavafx/scene/chart/StackedBarChart;

    move-object v10, v7

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/chart/StackedBarChart;->dataItemRemoved(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V

    .line 87
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/StackedBarChart$1;->this$0:Ljavafx/scene/chart/StackedBarChart;

    move v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/chart/StackedBarChart;->setAnimated(Z)V

    .line 89
    .end local v8    # "animatedOn":Z
    :cond_0
    goto :goto_3

    .line 83
    :cond_1
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v10

    goto :goto_4

    .line 90
    .end local v7    # "data":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_2
    goto :goto_2

    .line 91
    .end local v5    # "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/StackedBarChart$1;->this$0:Ljavafx/scene/chart/StackedBarChart;

    invoke-virtual {v9}, Ljavafx/scene/chart/StackedBarChart;->requestChartLayout()V

    .line 92
    goto/16 :goto_1

    .end local v3    # "cat":Ljava/lang/String;
    :cond_4
    goto/16 :goto_0

    .line 94
    :cond_5
    return-void
.end method
