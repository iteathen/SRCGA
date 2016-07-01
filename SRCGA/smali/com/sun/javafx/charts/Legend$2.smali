.class Lcom/sun/javafx/charts/Legend$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/collections/ObservableList",
        "<",
        "Lcom/sun/javafx/charts/Legend$LegendItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field oldItems:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/charts/Legend;


# direct methods
.method constructor <init>(Lcom/sun/javafx/charts/Legend;)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/charts/Legend;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 85
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/charts/Legend$2;->oldItems:Ljavafx/collections/ObservableList;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$2;
    const-string v1, "items"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$2;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/charts/Legend$2;->oldItems:Ljavafx/collections/ObservableList;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/charts/Legend$2;->oldItems:Ljavafx/collections/ObservableList;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-static {v5}, Lcom/sun/javafx/charts/Legend;->access$000(Lcom/sun/javafx/charts/Legend;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 88
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 89
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend$2;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v1, v4

    .line 90
    .local v1, "newItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Lcom/sun/javafx/charts/Legend$LegendItem;>;"
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 91
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-static {v5}, Lcom/sun/javafx/charts/Legend;->access$000(Lcom/sun/javafx/charts/Legend;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 92
    move-object v4, v1

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v3, v4

    .local v3, "item":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/charts/Legend$LegendItem;->access$100(Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 94
    .end local v3    # "item":Lcom/sun/javafx/charts/Legend$LegendItem;
    :cond_1
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/charts/Legend$2;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    iput-object v5, v4, Lcom/sun/javafx/charts/Legend$2;->oldItems:Ljavafx/collections/ObservableList;

    .line 95
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/charts/Legend$2;->this$0:Lcom/sun/javafx/charts/Legend;

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->requestLayout()V

    .line 96
    return-void
.end method
