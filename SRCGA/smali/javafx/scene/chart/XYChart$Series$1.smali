.class Ljavafx/scene/chart/XYChart$Series$1;
.super Ljava/lang/Object;
.source "XYChart.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


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
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<",
        "Ljavafx/scene/chart/XYChart$Data",
        "<TX;TY;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/XYChart$Series;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 4

    .prologue
    .line 1445
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$1;, "Ljavafx/scene/chart/XYChart$Series$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/ObservableList;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Data;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/chart/XYChart$Series$1;->lambda$onChanged$555(Ljavafx/collections/ObservableList;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Data;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private static synthetic lambda$onChanged$555(Ljavafx/collections/ObservableList;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Data;)I
    .locals 6

    .prologue
    .line 1453
    move-object v0, p0

    .local v0, "data":Ljavafx/collections/ObservableList;
    move-object v1, p1

    .local v1, "o1":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, p2

    .local v2, "o2":Ljavafx/scene/chart/XYChart$Data;
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    move v0, v3

    .end local v0    # "data":Ljavafx/collections/ObservableList;
    return v0
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1447
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$1;, "Ljavafx/scene/chart/XYChart$Series$1;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v2, v7

    .line 1448
    .local v2, "data":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v7}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v7

    move-object v3, v7

    .line 1449
    .local v3, "chart":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1450
    move-object v7, v3

    if-eqz v7, :cond_a

    .line 1452
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1453
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v7}, Ljavafx/scene/chart/XYChart$Series;->access$900(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/List;

    move-result-object v7

    move-object v8, v2

    invoke-static {v8}, Ljavafx/scene/chart/XYChart$Series$1$$Lambda$1;->lambdaFactory$(Ljavafx/collections/ObservableList;)Ljava/util/Comparator;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1454
    .line 1504
    :goto_1
    return-void

    .line 1457
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v9}, Ljavafx/scene/chart/XYChart$Series;->access$900(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v4, v7

    .line 1458
    .local v4, "dupCheck":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v7

    .line 1459
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v6, v7

    .line 1460
    .local v6, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v4

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1461
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "Duplicate data added"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1463
    :cond_1
    goto :goto_2

    .line 1466
    .end local v6    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_3
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v6, v7

    .line 1467
    .local v6, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v6

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljavafx/scene/chart/XYChart$Data;->access$2202(Ljavafx/scene/chart/XYChart$Data;Z)Z

    move-result v7

    .line 1468
    goto :goto_3

    .line 1470
    .end local v6    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v7

    if-lez v7, :cond_8

    .line 1471
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_4
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v6, v7

    .line 1472
    .local v6, "itemPtr":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v6

    invoke-static {v7}, Ljavafx/scene/chart/XYChart$Data;->access$2200(Ljavafx/scene/chart/XYChart$Data;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1473
    move-object v7, v3

    if-eqz v7, :cond_4

    move-object v7, v3

    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/chart/XYChart;->dataBeingRemovedIsAdded(Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Series;)V

    .line 1474
    :cond_4
    move-object v7, v6

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljavafx/scene/chart/XYChart$Data;->access$2202(Ljavafx/scene/chart/XYChart$Data;Z)Z

    move-result v7

    .line 1476
    :cond_5
    goto :goto_4

    .line 1478
    .end local v6    # "itemPtr":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_6
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_5
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v6, v7

    .line 1479
    .local v6, "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/XYChart$Data;->setSeries(Ljavafx/scene/chart/XYChart$Series;)V

    .line 1480
    goto :goto_5

    .line 1481
    .end local v6    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_7
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    if-nez v7, :cond_9

    .line 1482
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v7}, Ljavafx/scene/chart/XYChart$Series;->access$900(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v7

    .line 1488
    :cond_8
    :goto_6
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    move-object v9, v1

    .line 1489
    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v11

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v12

    .line 1488
    invoke-static/range {v7 .. v12}, Ljavafx/scene/chart/XYChart;->access$2300(Ljavafx/scene/chart/XYChart;Ljavafx/scene/chart/XYChart$Series;Ljava/util/List;IIZ)V

    .line 1490
    goto/16 :goto_0

    .line 1484
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v7}, Ljavafx/scene/chart/XYChart$Series;->access$900(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/List;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v8}, Ljavafx/scene/chart/XYChart$Series;->access$900(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/List;

    move-result-object v8

    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v7

    goto :goto_6

    .line 1491
    .end local v4    # "dupCheck":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_a
    new-instance v7, Ljava/util/HashSet;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v4, v7

    .line 1492
    .restart local v4    # "dupCheck":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v7, v2

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_7
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v6, v7

    .line 1493
    .restart local v6    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v4

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1494
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "Duplicate data added"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1496
    :cond_b
    goto :goto_7

    .line 1498
    .end local v6    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_c
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_8
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/chart/XYChart$Data;

    move-object v6, v7

    .line 1499
    .restart local v6    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/chart/XYChart$Series$1;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v7, v8}, Ljavafx/scene/chart/XYChart$Data;->setSeries(Ljavafx/scene/chart/XYChart$Series;)V

    .line 1500
    goto :goto_8

    .line 1502
    .end local v6    # "d":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_d
    goto/16 :goto_0

    .line 1504
    .end local v4    # "dupCheck":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    :cond_e
    goto/16 :goto_1
.end method
