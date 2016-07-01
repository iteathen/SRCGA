.class public final Ljavafx/scene/chart/XYChart$Series;
.super Ljava/lang/Object;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/XYChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Series"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/chart/XYChart",
            "<TX;TY;>;>;"
        }
    .end annotation
.end field

.field private final data:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;>;"
        }
    .end annotation
.end field

.field private final dataChangeListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;"
        }
    .end annotation
.end field

.field defaultColorStyleClass:Ljava/lang/String;

.field private displayedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;"
        }
    .end annotation
.end field

.field private final name:Ljavafx/beans/property/StringProperty;

.field private node:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field setToRemove:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1609
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/chart/XYChart$Series;-><init>(Ljavafx/collections/ObservableList;)V

    .line 1610
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/collections/ObservableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/chart/XYChart$Series;-><init>(Ljavafx/collections/ObservableList;)V

    .line 1630
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Series;->setName(Ljava/lang/String;)V

    .line 1631
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1617
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, p1

    .local v1, "data":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1441
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/chart/XYChart$Series;->setToRemove:Z

    .line 1443
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Series;->displayedData:Ljava/util/List;

    .line 1445
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/XYChart$Series$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/XYChart$Series$1;-><init>(Ljavafx/scene/chart/XYChart$Series;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Series;->dataChangeListener:Ljavafx/collections/ListChangeListener;

    .line 1510
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/XYChart$Series$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v0

    const-string v9, "chart"

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/chart/XYChart$Series$2;-><init>(Ljavafx/scene/chart/XYChart$Series;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Series;->chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1525
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/XYChart$Series$3;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/XYChart$Series$3;-><init>(Ljavafx/scene/chart/XYChart$Series;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Series;->name:Ljavafx/beans/property/StringProperty;

    .line 1550
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const-string v8, "node"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Series;->node:Ljavafx/beans/property/ObjectProperty;

    .line 1556
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/XYChart$Series$4;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/XYChart$Series$4;-><init>(Ljavafx/scene/chart/XYChart$Series;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Series;->data:Ljavafx/beans/property/ObjectProperty;

    .line 1618
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart$Series;->setData(Ljavafx/collections/ObservableList;)V

    .line 1619
    move-object v4, v1

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/XYChart$Data;

    move-object v3, v4

    .local v3, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart$Data;->setSeries(Ljavafx/scene/chart/XYChart$Series;)V

    goto :goto_0

    .line 1620
    .end local v3    # "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V
    .locals 4

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart$Series;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart$Series;->removeDataItemRef(Ljavafx/scene/chart/XYChart$Data;)V

    return-void
.end method

.method static synthetic access$2500(Ljavafx/scene/chart/XYChart$Series;)Ljavafx/collections/ListChangeListener;
    .locals 2

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart$Series;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->dataChangeListener:Ljavafx/collections/ListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart$Series;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart;)V
    .locals 4

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart$Series;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/XYChart;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart$Series;->setChart(Ljavafx/scene/chart/XYChart;)V

    return-void
.end method

.method static synthetic access$900(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/List;
    .locals 2

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart$Series;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->displayedData:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart$Series;
    return-object v0
.end method

.method private removeDataItemRef(Ljavafx/scene/chart/XYChart$Data;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 1650
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafx/scene/chart/XYChart$Data;->access$2202(Ljavafx/scene/chart/XYChart$Data;Z)Z

    move-result v2

    .line 1651
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Series;->displayedData:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1652
    return-void
.end method

.method private setChart(Ljavafx/scene/chart/XYChart;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 1521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Series;->chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final chartProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/chart/XYChart",
            "<TX;TY;>;>;"
        }
    .end annotation

    .prologue
    .line 1522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method

.method public final dataProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1601
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->data:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method

.method public final getChart()Ljavafx/scene/chart/XYChart;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/chart/XYChart",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 1520
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/chart/XYChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method

.method public final getData()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;"
        }
    .end annotation

    .prologue
    .line 1599
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->data:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method

.method getDataSize()I
    .locals 2

    .prologue
    .line 1663
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->displayedData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return v0
.end method

.method getItem(I)Ljavafx/scene/chart/XYChart$Data;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 1659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Series;->displayedData:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/chart/XYChart$Data;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method

.method getItemIndex(Ljavafx/scene/chart/XYChart$Data;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;)I"
        }
    .end annotation

    .prologue
    .line 1655
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Series;->displayedData:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->name:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1551
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method

.method public final nameProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 1543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->name:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method

.method public final nodeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method

.method public final setData(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1600
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Data<TX;TY;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Series;->data:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Series;->name:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 1552
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Series;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1640
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Series["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Series;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    return-object v0
.end method
