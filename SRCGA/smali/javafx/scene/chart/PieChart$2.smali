.class Ljavafx/scene/chart/PieChart$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/PieChart;
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
        "Ljavafx/scene/chart/PieChart$Data;",
        ">;>;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/chart/PieChart$Data;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/chart/PieChart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/PieChart;)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/PieChart;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/PieChart$2;->this$0:Ljavafx/scene/chart/PieChart;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/chart/PieChart$2;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$2;->old:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$2;
    return-object v0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$2;->this$0:Ljavafx/scene/chart/PieChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$2;
    const-string v1, "data"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 13

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$2;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/PieChart$2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v1, v4

    .line 196
    .local v1, "current":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/PieChart$Data;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$2;->old:Ljavafx/collections/ObservableList;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$2;->old:Ljavafx/collections/ObservableList;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/PieChart$2;->this$0:Ljavafx/scene/chart/PieChart;

    invoke-static {v5}, Ljavafx/scene/chart/PieChart;->access$000(Ljavafx/scene/chart/PieChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 197
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/PieChart$2;->this$0:Ljavafx/scene/chart/PieChart;

    invoke-static {v5}, Ljavafx/scene/chart/PieChart;->access$000(Ljavafx/scene/chart/PieChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 199
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$2;->old:Ljavafx/collections/ObservableList;

    if-nez v4, :cond_2

    move-object v4, v1

    if-eqz v4, :cond_7

    .line 200
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$2;->old:Ljavafx/collections/ObservableList;

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$2;->old:Ljavafx/collections/ObservableList;

    :goto_0
    move-object v2, v4

    .line 201
    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/PieChart$Data;>;"
    move-object v4, v1

    if-eqz v4, :cond_6

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    :goto_1
    move v3, v4

    .line 203
    .local v3, "toIndex":I
    move v4, v3

    if-gtz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 204
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$2;->this$0:Ljavafx/scene/chart/PieChart;

    invoke-static {v4}, Ljavafx/scene/chart/PieChart;->access$000(Ljavafx/scene/chart/PieChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    new-instance v5, Ljavafx/scene/chart/PieChart$2$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    const/4 v8, 0x0

    move v9, v3

    move-object v10, v1

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/chart/PieChart$2$1;-><init>(Ljavafx/scene/chart/PieChart$2;IILjavafx/collections/ObservableList;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 212
    .line 222
    .end local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/PieChart$Data;>;"
    .end local v3    # "toIndex":I
    :cond_4
    :goto_2
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$2;->old:Ljavafx/collections/ObservableList;

    .line 223
    return-void

    .line 200
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 201
    .restart local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/PieChart$Data;>;"
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 212
    .end local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/chart/PieChart$Data;>;"
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$2;->old:Ljavafx/collections/ObservableList;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$2;->old:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 214
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$2;->this$0:Ljavafx/scene/chart/PieChart;

    invoke-static {v4}, Ljavafx/scene/chart/PieChart;->access$000(Ljavafx/scene/chart/PieChart;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    new-instance v5, Ljavafx/scene/chart/PieChart$2$2;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/chart/PieChart$2$2;-><init>(Ljavafx/scene/chart/PieChart$2;IILjavafx/collections/ObservableList;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_2
.end method
