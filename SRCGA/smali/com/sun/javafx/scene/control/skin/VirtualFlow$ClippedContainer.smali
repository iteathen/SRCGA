.class Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
.super Ljavafx/scene/layout/Region;
.source "VirtualFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/VirtualFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClippedContainer"
.end annotation


# instance fields
.field private final clipRect:Ljavafx/scene/shape/Rectangle;

.field private node:Ljavafx/scene/Node;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/scene/control/skin/VirtualFlow",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2681
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
    move-object v1, p1

    .local v1, "flow":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Region;-><init>()V

    .line 2682
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2683
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "VirtualFlow can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2686
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "clipped-container"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2689
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/Rectangle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->clipRect:Ljavafx/scene/shape/Rectangle;

    .line 2690
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->clipRect:Ljavafx/scene/shape/Rectangle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Rectangle;->setSmooth(Z)V

    .line 2691
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->clipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->setClip(Ljavafx/scene/Node;)V

    .line 2694
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/layout/Region;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 2697
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/layout/Region;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 2700
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->lambda$new$97(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->lambda$new$98(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$97(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 2695
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
    move-object v2, p1

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 2696
    return-void
.end method

.method private synthetic lambda$new$98(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 2698
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
    move-object v2, p1

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 2699
    return-void
.end method


# virtual methods
.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 2661
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->node:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
    return-object v0
.end method

.method public setClipX(D)V
    .locals 7

    .prologue
    .line 2670
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
    move-wide v1, p1

    .local v1, "clipX":D
    move-object v3, v0

    move-wide v4, v1

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->setLayoutX(D)V

    .line 2671
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setLayoutX(D)V

    .line 2672
    return-void
.end method

.method public setClipY(D)V
    .locals 7

    .prologue
    .line 2675
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
    move-wide v1, p1

    .local v1, "clipY":D
    move-object v3, v0

    move-wide v4, v1

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->setLayoutY(D)V

    .line 2676
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setLayoutY(D)V

    .line 2677
    return-void
.end method

.method public setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 2663
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->node:Ljavafx/scene/Node;

    .line 2665
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 2666
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->node:Ljavafx/scene/Node;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2667
    return-void
.end method
