.class Ljavafx/scene/chart/Chart$4;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Chart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/scene/Node;

.field final synthetic this$0:Ljavafx/scene/chart/Chart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Chart;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Chart;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/Chart$4;->this$0:Ljavafx/scene/chart/Chart;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 161
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/chart/Chart$4;->old:Ljavafx/scene/Node;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart$4;->this$0:Ljavafx/scene/chart/Chart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$4;
    const-string v1, "legend"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$4;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/Chart$4;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    move-object v1, v2

    .line 164
    .local v1, "newLegend":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart$4;->old:Ljavafx/scene/Node;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart$4;->this$0:Ljavafx/scene/chart/Chart;

    invoke-static {v2}, Ljavafx/scene/chart/Chart;->access$200(Ljavafx/scene/chart/Chart;)Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Chart$4;->old:Ljavafx/scene/Node;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 165
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 166
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Chart$4;->this$0:Ljavafx/scene/chart/Chart;

    invoke-static {v2}, Ljavafx/scene/chart/Chart;->access$300(Ljavafx/scene/chart/Chart;)Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 167
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Chart$4;->this$0:Ljavafx/scene/chart/Chart;

    invoke-virtual {v3}, Ljavafx/scene/chart/Chart;->isLegendVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 169
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/Chart$4;->old:Ljavafx/scene/Node;

    .line 170
    return-void
.end method
