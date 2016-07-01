.class Ljavafx/scene/chart/PieChart$Data$1;
.super Ljavafx/beans/property/StringPropertyBase;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/PieChart$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/PieChart$Data;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/PieChart$Data;)V
    .locals 4

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/PieChart$Data;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/PieChart$Data$1;->this$0:Ljavafx/scene/chart/PieChart$Data;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data$1;->this$0:Ljavafx/scene/chart/PieChart$Data;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data$1;
    const-string v1, "name"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 863
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data$1;->this$0:Ljavafx/scene/chart/PieChart$Data;

    invoke-virtual {v1}, Ljavafx/scene/chart/PieChart$Data;->getChart()Ljavafx/scene/chart/PieChart;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data$1;->this$0:Ljavafx/scene/chart/PieChart$Data;

    invoke-virtual {v1}, Ljavafx/scene/chart/PieChart$Data;->getChart()Ljavafx/scene/chart/PieChart;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart$Data$1;->this$0:Ljavafx/scene/chart/PieChart$Data;

    invoke-static {v1, v2}, Ljavafx/scene/chart/PieChart;->access$1700(Ljavafx/scene/chart/PieChart;Ljavafx/scene/chart/PieChart$Data;)V

    .line 864
    :cond_0
    return-void
.end method
