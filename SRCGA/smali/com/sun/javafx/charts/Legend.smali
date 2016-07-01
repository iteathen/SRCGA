.class public Lcom/sun/javafx/charts/Legend;
.super Ljavafx/scene/layout/TilePane;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/charts/Legend$LegendItem;
    }
.end annotation


# static fields
.field private static final GAP:I = 0x5


# instance fields
.field private items:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private itemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;"
        }
    .end annotation
.end field

.field private vertical:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend;
    move-object v1, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/layout/TilePane;-><init>(DD)V

    .line 54
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/charts/Legend$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/charts/Legend;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/charts/Legend;->itemsListener:Ljavafx/collections/ListChangeListener;

    .line 64
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/charts/Legend$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/charts/Legend$1;-><init>(Lcom/sun/javafx/charts/Legend;Z)V

    iput-object v2, v1, Lcom/sun/javafx/charts/Legend;->vertical:Ljavafx/beans/property/BooleanProperty;

    .line 84
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/charts/Legend$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/charts/Legend$2;-><init>(Lcom/sun/javafx/charts/Legend;)V

    iput-object v2, v1, Lcom/sun/javafx/charts/Legend;->items:Ljavafx/beans/property/ObjectProperty;

    .line 118
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/charts/Legend;->setTileAlignment(Ljavafx/geometry/Pos;)V

    .line 119
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/charts/Legend;->setItems(Ljavafx/collections/ObservableList;)V

    .line 120
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/charts/Legend;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "chart-legend"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/charts/Legend;)Ljavafx/collections/ListChangeListener;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/charts/Legend;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend;->itemsListener:Ljavafx/collections/ListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/charts/Legend;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/charts/Legend;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/charts/Legend;->lambda$new$0(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 56
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v3, v4

    .local v3, "item":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/charts/Legend$LegendItem;->access$100(Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 57
    .end local v3    # "item":Lcom/sun/javafx/charts/Legend$LegendItem;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->requestLayout()V

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 7

    .prologue
    .line 134
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/charts/Legend;
    move-wide v2, p1

    .local v2, "forWidth":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v1

    move-wide v5, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/layout/TilePane;->computePrefHeight(D)D

    move-result-wide v4

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/charts/Legend;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/charts/Legend;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method protected computePrefWidth(D)D
    .locals 7

    .prologue
    .line 128
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/charts/Legend;
    move-wide v2, p1

    .local v2, "forHeight":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/charts/Legend;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v1

    move-wide v5, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/layout/TilePane;->computePrefWidth(D)D

    move-result-wide v4

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/charts/Legend;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/charts/Legend;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend;->items:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend;
    return-object v0
.end method

.method public final isVertical()Z
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend;->vertical:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend;
    return v0
.end method

.method public final itemsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend;->items:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend;
    return-object v0
.end method

.method public final setItems(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/charts/Legend$LegendItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend;
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Lcom/sun/javafx/charts/Legend$LegendItem;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/charts/Legend;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setVertical(Z)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/charts/Legend;->vertical:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final verticalProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend;->vertical:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend;
    return-object v0
.end method
