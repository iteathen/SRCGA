.class Ljavafx/scene/chart/XYChart$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/XYChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/collections/ObservableList",
        "<",
        "Ljavafx/scene/chart/XYChart$Series",
        "<TX;TY;>;>;>;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/chart/XYChart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$2;, "Ljavafx/scene/chart/XYChart$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$2;->this$0:Ljavafx/scene/chart/XYChart;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/chart/XYChart$2;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart$2;
    return-object v0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$2;, "Ljavafx/scene/chart/XYChart$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$2;->this$0:Ljavafx/scene/chart/XYChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$2;, "Ljavafx/scene/chart/XYChart$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$2;, "Ljavafx/scene/chart/XYChart$2;"
    const-string v1, "data"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$2;, "Ljavafx/scene/chart/XYChart$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 14

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$2;, "Ljavafx/scene/chart/XYChart$2;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    move-object v1, v5

    .line 187
    .local v1, "current":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    const/4 v5, -0x1

    move v2, v5

    .line 189
    .local v2, "saveAnimationState":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    if-eqz v5, :cond_0

    .line 190
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/XYChart$2;->this$0:Ljavafx/scene/chart/XYChart;

    invoke-static {v6}, Ljavafx/scene/chart/XYChart;->access$000(Ljavafx/scene/chart/XYChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 194
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 195
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart;->getAnimated()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 196
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/XYChart;->setAnimated(Z)V

    .line 199
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/XYChart$2;->this$0:Ljavafx/scene/chart/XYChart;

    invoke-static {v6}, Ljavafx/scene/chart/XYChart;->access$000(Ljavafx/scene/chart/XYChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 201
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    if-nez v5, :cond_2

    move-object v5, v1

    if-eqz v5, :cond_9

    .line 202
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    if-eqz v5, :cond_7

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    :goto_1
    move-object v3, v5

    .line 203
    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    move-object v5, v1

    if-eqz v5, :cond_8

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    :goto_2
    move v4, v5

    .line 205
    .local v4, "toIndex":I
    move v5, v4

    if-gtz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 206
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->this$0:Ljavafx/scene/chart/XYChart;

    invoke-static {v5}, Ljavafx/scene/chart/XYChart;->access$000(Ljavafx/scene/chart/XYChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    new-instance v6, Ljavafx/scene/chart/XYChart$2$1;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    const/4 v9, 0x0

    move v10, v4

    move-object v11, v1

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/scene/chart/XYChart$2$1;-><init>(Ljavafx/scene/chart/XYChart$2;IILjavafx/collections/ObservableList;Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 213
    .line 223
    .end local v3    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    .end local v4    # "toIndex":I
    :cond_4
    :goto_3
    move-object v5, v1

    if-eqz v5, :cond_5

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-lez v5, :cond_5

    move v5, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 224
    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v5}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v5

    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v5, v6}, Ljavafx/scene/chart/XYChart;->setAnimated(Z)V

    .line 226
    :cond_5
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    .line 227
    return-void

    .line 195
    :cond_6
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 202
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 203
    .restart local v3    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 213
    .end local v3    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->old:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 215
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$2;->this$0:Ljavafx/scene/chart/XYChart;

    invoke-static {v5}, Ljavafx/scene/chart/XYChart;->access$000(Ljavafx/scene/chart/XYChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    new-instance v6, Ljavafx/scene/chart/XYChart$2$2;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v1

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/chart/XYChart$2$2;-><init>(Ljavafx/scene/chart/XYChart$2;IILjavafx/collections/ObservableList;)V

    invoke-interface {v5, v6}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_3

    .line 224
    :cond_a
    const/4 v6, 0x0

    goto :goto_4
.end method
