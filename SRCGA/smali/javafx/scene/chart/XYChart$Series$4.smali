.class Ljavafx/scene/chart/XYChart$Series$4;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/XYChart$Series;
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
        "Ljavafx/scene/chart/XYChart$Data",
        "<TX;TY;>;>;>;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/chart/XYChart$Series;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 4

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$4;, "Ljavafx/scene/chart/XYChart$Series$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$Series$4;->this$0:Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method

.method static synthetic access$2600(Ljavafx/scene/chart/XYChart$Series$4;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart$Series$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series$4;->old:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart$Series$4;
    return-object v0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1591
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$4;, "Ljavafx/scene/chart/XYChart$Series$4;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series$4;->this$0:Ljavafx/scene/chart/XYChart$Series;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series$4;, "Ljavafx/scene/chart/XYChart$Series$4;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1596
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$4;, "Ljavafx/scene/chart/XYChart$Series$4;"
    const-string v1, "data"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series$4;, "Ljavafx/scene/chart/XYChart$Series$4;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 13

    .prologue
    .line 1559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$4;, "Ljavafx/scene/chart/XYChart$Series$4;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/XYChart$Series$4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v1, v4

    .line 1561
    .local v1, "current":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$Series$4;->old:Ljavafx/collections/ObservableList;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$Series$4;->old:Ljavafx/collections/ObservableList;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$Series$4;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v5}, Ljavafx/scene/chart/XYChart$Series;->access$2500(Ljavafx/scene/chart/XYChart$Series;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 1562
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/XYChart$Series$4;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v5}, Ljavafx/scene/chart/XYChart$Series;->access$2500(Ljavafx/scene/chart/XYChart$Series;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1564
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$Series$4;->old:Ljavafx/collections/ObservableList;

    if-nez v4, :cond_2

    move-object v4, v1

    if-eqz v4, :cond_7

    .line 1565
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$Series$4;->old:Ljavafx/collections/ObservableList;

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$Series$4;->old:Ljavafx/collections/ObservableList;

    :goto_0
    move-object v2, v4

    .line 1566
    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v4, v1

    if-eqz v4, :cond_6

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    :goto_1
    move v3, v4

    .line 1568
    .local v3, "toIndex":I
    move v4, v3

    if-gtz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1569
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$Series$4;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v4}, Ljavafx/scene/chart/XYChart$Series;->access$2500(Ljavafx/scene/chart/XYChart$Series;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    new-instance v5, Ljavafx/scene/chart/XYChart$Series$4$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    const/4 v8, 0x0

    move v9, v3

    move-object v10, v1

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/chart/XYChart$Series$4$1;-><init>(Ljavafx/scene/chart/XYChart$Series$4;IILjavafx/collections/ObservableList;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 1577
    .line 1586
    .end local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    .end local v3    # "toIndex":I
    :cond_4
    :goto_2
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Series$4;->old:Ljavafx/collections/ObservableList;

    .line 1587
    return-void

    .line 1565
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 1566
    .restart local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 1577
    .end local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$Series$4;->old:Ljavafx/collections/ObservableList;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$Series$4;->old:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1579
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$Series$4;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v4}, Ljavafx/scene/chart/XYChart$Series;->access$2500(Ljavafx/scene/chart/XYChart$Series;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    new-instance v5, Ljavafx/scene/chart/XYChart$Series$4$2;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/chart/XYChart$Series$4$2;-><init>(Ljavafx/scene/chart/XYChart$Series$4;IILjavafx/collections/ObservableList;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_2
.end method
