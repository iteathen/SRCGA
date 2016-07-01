.class Lcom/sun/javafx/charts/Legend$LegendItem$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend$LegendItem;
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
.field final synthetic this$0:Lcom/sun/javafx/charts/Legend$LegendItem;


# direct methods
.method constructor <init>(Lcom/sun/javafx/charts/Legend$LegendItem;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/charts/Legend$LegendItem$2;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$LegendItem$2;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$LegendItem$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem$2;
    const-string v1, "symbol"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$LegendItem$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 8

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem$2;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/charts/Legend$LegendItem$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    move-object v1, v2

    .line 168
    .local v1, "symbol":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "chart-legend-item-symbol"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 169
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/charts/Legend$LegendItem$2;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    invoke-static {v2}, Lcom/sun/javafx/charts/Legend$LegendItem;->access$100(Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setGraphic(Ljavafx/scene/Node;)V

    .line 170
    return-void
.end method
