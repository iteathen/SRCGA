.class Ljavafx/scene/chart/XYChart$Data$3;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/XYChart$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/XYChart$Data;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart$Data;)V
    .locals 4

    .prologue
    .line 1298
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$3;, "Ljavafx/scene/chart/XYChart$Data$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$Data$3;->this$0:Ljavafx/scene/chart/XYChart$Data;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$3;, "Ljavafx/scene/chart/XYChart$Data$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data$3;->this$0:Ljavafx/scene/chart/XYChart$Data;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data$3;, "Ljavafx/scene/chart/XYChart$Data$3;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$3;, "Ljavafx/scene/chart/XYChart$Data$3;"
    const-string v1, "extraValue"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data$3;, "Ljavafx/scene/chart/XYChart$Data$3;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 1301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$3;, "Ljavafx/scene/chart/XYChart$Data$3;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data$3;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1302
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data$3;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-static {v2}, Ljavafx/scene/chart/XYChart$Data;->access$1800(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/scene/chart/XYChart$Series;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1303
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data$3;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-static {v2}, Ljavafx/scene/chart/XYChart$Data;->access$1800(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/scene/chart/XYChart$Series;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v2

    move-object v1, v2

    .line 1304
    .local v1, "chart":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart$Data$3;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-static {v2, v3}, Ljavafx/scene/chart/XYChart;->access$2100(Ljavafx/scene/chart/XYChart;Ljavafx/scene/chart/XYChart$Data;)V

    .line 1306
    .end local v1    # "chart":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    :cond_0
    return-void
.end method
