.class Ljavafx/scene/chart/XYChart$Data$4$1;
.super Ljavafx/beans/binding/StringBinding;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/chart/XYChart$Data$4;->invalidated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/chart/XYChart$Data$4;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart$Data$4;)V
    .locals 8

    .prologue
    .line 1335
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$4$1;, "Ljavafx/scene/chart/XYChart$Data$4$1;"
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/chart/XYChart$Data$4;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$Data$4$1;->this$1:Ljavafx/scene/chart/XYChart$Data$4;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 1336
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/XYChart$Data$4$1;->this$1:Ljavafx/scene/chart/XYChart$Data$4;

    iget-object v6, v6, Ljavafx/scene/chart/XYChart$Data$4;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->currentXProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/XYChart$Data$4$1;->this$1:Ljavafx/scene/chart/XYChart$Data$4;

    iget-object v6, v6, Ljavafx/scene/chart/XYChart$Data$4;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual {v6}, Ljavafx/scene/chart/XYChart$Data;->currentYProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/XYChart$Data$4$1;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$4$1;, "Ljavafx/scene/chart/XYChart$Data$4$1;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data$4$1;->this$1:Ljavafx/scene/chart/XYChart$Data$4;

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data$4;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-static {v2}, Ljavafx/scene/chart/XYChart$Data;->access$1800(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/scene/chart/XYChart$Series;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data$4$1;->this$1:Ljavafx/scene/chart/XYChart$Data$4;

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data$4;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-static {v2}, Ljavafx/scene/chart/XYChart$Data;->access$1800(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/scene/chart/XYChart$Series;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Series;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 1339
    .local v1, "seriesName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " X Axis is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart$Data$4$1;->this$1:Ljavafx/scene/chart/XYChart$Data$4;

    iget-object v3, v3, Ljavafx/scene/chart/XYChart$Data$4;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart$Data;->getCurrentX()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Y Axis is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart$Data$4$1;->this$1:Ljavafx/scene/chart/XYChart$Data$4;

    iget-object v3, v3, Ljavafx/scene/chart/XYChart$Data$4;->this$0:Ljavafx/scene/chart/XYChart$Data;

    invoke-virtual {v3}, Ljavafx/scene/chart/XYChart$Data;->getCurrentY()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data$4$1;, "Ljavafx/scene/chart/XYChart$Data$4$1;"
    return-object v0

    .line 1338
    .end local v1    # "seriesName":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/scene/chart/XYChart$Data$4$1;, "Ljavafx/scene/chart/XYChart$Data$4$1;"
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
