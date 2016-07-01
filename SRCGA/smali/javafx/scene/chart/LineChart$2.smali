.class Ljavafx/scene/chart/LineChart$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "LineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/LineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/chart/LineChart$SortingPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/LineChart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/LineChart;Ljavafx/scene/chart/LineChart$SortingPolicy;)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$2;, "Ljavafx/scene/chart/LineChart$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/LineChart;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/chart/LineChart$SortingPolicy;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/LineChart$2;->this$0:Ljavafx/scene/chart/LineChart;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$2;, "Ljavafx/scene/chart/LineChart$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/LineChart$2;->this$0:Ljavafx/scene/chart/LineChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart$2;, "Ljavafx/scene/chart/LineChart$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$2;, "Ljavafx/scene/chart/LineChart$2;"
    const-string v1, "axisSortingPolicy"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/LineChart$2;, "Ljavafx/scene/chart/LineChart$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$2;, "Ljavafx/scene/chart/LineChart$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/LineChart$2;->this$0:Ljavafx/scene/chart/LineChart;

    invoke-virtual {v1}, Ljavafx/scene/chart/LineChart;->requestChartLayout()V

    .line 150
    return-void
.end method
