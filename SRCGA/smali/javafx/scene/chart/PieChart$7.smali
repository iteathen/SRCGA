.class Ljavafx/scene/chart/PieChart$7;
.super Ljava/lang/Object;
.source "PieChart.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/chart/PieChart;->lambda$createDataRemoveTimeline$576(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/Node;Ljavafx/event/ActionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/event/ActionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/PieChart;

.field final synthetic val$item:Ljavafx/scene/chart/PieChart$Data;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/PieChart;Ljavafx/scene/chart/PieChart$Data;)V
    .locals 5

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$7;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/PieChart;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/PieChart$7;->this$0:Ljavafx/scene/chart/PieChart;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/chart/PieChart$7;->val$item:Ljavafx/scene/chart/PieChart$Data;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 499
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/PieChart$7;
    move-object v2, p1

    .local v2, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$7;->this$0:Ljavafx/scene/chart/PieChart;

    invoke-virtual {v3}, Ljavafx/scene/chart/PieChart;->getChartChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$7;->val$item:Ljavafx/scene/chart/PieChart$Data;

    invoke-static {v4}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 501
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$7;->val$item:Ljavafx/scene/chart/PieChart$Data;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/chart/PieChart$Data;->access$1600(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart;)V

    .line 502
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$7;->this$0:Ljavafx/scene/chart/PieChart;

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$7;->val$item:Ljavafx/scene/chart/PieChart$Data;

    invoke-static {v3, v4}, Ljavafx/scene/chart/PieChart;->access$2400(Ljavafx/scene/chart/PieChart;Ljavafx/scene/chart/PieChart$Data;)V

    .line 503
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$7;->val$item:Ljavafx/scene/chart/PieChart$Data;

    invoke-static {v3}, Ljavafx/scene/chart/PieChart$Data;->access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/text/Text;->setOpacity(D)V

    .line 504
    return-void
.end method

.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$7;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/event/ActionEvent;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/PieChart$7;->handle(Ljavafx/event/ActionEvent;)V

    return-void
.end method
