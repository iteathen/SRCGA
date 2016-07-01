.class Ljavafx/scene/chart/XYChart$Series$2;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
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
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/chart/XYChart",
        "<TX;TY;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/XYChart$Series;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart$Series;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$2;, "Ljavafx/scene/chart/XYChart$Series$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Series$2;->this$0:Ljavafx/scene/chart/XYChart$Series;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 1513
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$2;, "Ljavafx/scene/chart/XYChart$Series$2;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/XYChart$Series$2;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1514
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series$2;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v1}, Ljavafx/scene/chart/XYChart$Series;->access$900(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1518
    :goto_0
    return-void

    .line 1516
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series$2;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-static {v1}, Ljavafx/scene/chart/XYChart$Series;->access$900(Ljavafx/scene/chart/XYChart$Series;)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Series$2;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Series;->getData()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_0
.end method
