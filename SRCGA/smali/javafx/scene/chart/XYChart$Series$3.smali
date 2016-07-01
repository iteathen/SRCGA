.class Ljavafx/scene/chart/XYChart$Series$3;
.super Ljavafx/beans/property/StringPropertyBase;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/XYChart$Series;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/XYChart$Series;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 4

    .prologue
    .line 1525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$3;, "Ljavafx/scene/chart/XYChart$Series$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart$Series;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$Series$3;->this$0:Ljavafx/scene/chart/XYChart$Series;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1533
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$3;, "Ljavafx/scene/chart/XYChart$Series$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series$3;->this$0:Ljavafx/scene/chart/XYChart$Series;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series$3;, "Ljavafx/scene/chart/XYChart$Series$3;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1538
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$3;, "Ljavafx/scene/chart/XYChart$Series$3;"
    const-string v1, "name"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Series$3;, "Ljavafx/scene/chart/XYChart$Series$3;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 1527
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Series$3;, "Ljavafx/scene/chart/XYChart$Series$3;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/XYChart$Series$3;->get()Ljava/lang/String;

    move-result-object v1

    .line 1528
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series$3;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v1}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Series$3;->this$0:Ljavafx/scene/chart/XYChart$Series;

    invoke-virtual {v1}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/chart/XYChart;->access$2400(Ljavafx/scene/chart/XYChart;)V

    .line 1529
    :cond_0
    return-void
.end method
