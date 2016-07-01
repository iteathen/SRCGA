.class Ljavafx/scene/chart/XYChart$Data$2;
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
        "<TY;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/XYChart$Data;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart$Data;)V
    .locals 4

    .prologue
    .line 1247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$2;, "Ljavafx/scene/chart/XYChart$Data$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$Data$2;->this$0:Ljavafx/scene/chart/XYChart$Data;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$2;, "Ljavafx/scene/chart/XYChart$Data$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data$2;->this$0:Ljavafx/scene/chart/XYChart$Data;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data$2;, "Ljavafx/scene/chart/XYChart$Data$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$2;, "Ljavafx/scene/chart/XYChart$Data$2;"
    const-string v1, "YValue"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data$2;, "Ljavafx/scene/chart/XYChart$Data$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 1250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$2;, "Ljavafx/scene/chart/XYChart$Data$2;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data$2;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1251
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data$2;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-static {v2}, Ljavafx/scene/chart/XYChart$Data;->access$1800(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/scene/chart/XYChart$Series;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1252
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data$2;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-static {v2}, Ljavafx/scene/chart/XYChart$Data;->access$1800(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/scene/chart/XYChart$Series;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v2

    move-object v1, v2

    .line 1253
    .local v1, "chart":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart$Data$2;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-static {v2, v3}, Ljavafx/scene/chart/XYChart;->access$2000(Ljavafx/scene/chart/XYChart;Ljavafx/scene/chart/XYChart$Data;)V

    .line 1254
    .line 1259
    .end local v1    # "chart":Ljavafx/scene/chart/XYChart;, "Ljavafx/scene/chart/XYChart<TX;TY;>;"
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data$2;->this$0:Ljavafx/scene/chart/XYChart$Data;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart$Data$2;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    goto :goto_0
.end method
