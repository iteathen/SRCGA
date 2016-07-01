.class public Lcom/sun/javafx/charts/Legend$LegendItem;
.super Ljava/lang/Object;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegendItem"
.end annotation


# instance fields
.field private label:Ljavafx/scene/control/Label;

.field private symbol:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljavafx/beans/property/StringProperty;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 141
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Label;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    .line 144
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/charts/Legend$LegendItem$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/charts/Legend$LegendItem$1;-><init>(Lcom/sun/javafx/charts/Legend$LegendItem;)V

    iput-object v3, v2, Lcom/sun/javafx/charts/Legend$LegendItem;->text:Ljavafx/beans/property/StringProperty;

    .line 165
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/charts/Legend$LegendItem$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/Region;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljavafx/scene/layout/Region;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/charts/Legend$LegendItem$2;-><init>(Lcom/sun/javafx/charts/Legend$LegendItem;Ljavafx/scene/Node;)V

    iput-object v3, v2, Lcom/sun/javafx/charts/Legend$LegendItem;->symbol:Ljavafx/beans/property/ObjectProperty;

    .line 187
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/charts/Legend$LegendItem;->setText(Ljava/lang/String;)V

    .line 188
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "chart-legend-item"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    sget-object v3, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    sget-object v3, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setContentDisplay(Ljavafx/scene/control/ContentDisplay;)V

    .line 191
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setGraphic(Ljavafx/scene/Node;)V

    .line 192
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/charts/Legend$LegendItem;->getSymbol()Ljavafx/scene/Node;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-string v6, "chart-legend-item-symbol"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "symbol":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/charts/Legend$LegendItem;-><init>(Ljava/lang/String;)V

    .line 197
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/charts/Legend$LegendItem;->setSymbol(Ljavafx/scene/Node;)V

    .line 198
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$LegendItem;->label:Ljavafx/scene/control/Label;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/charts/Legend$LegendItem;
    return-object v0
.end method


# virtual methods
.method public final getSymbol()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$LegendItem;->symbol:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$LegendItem;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    return-object v0
.end method

.method public final setSymbol(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/charts/Legend$LegendItem;->symbol:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/charts/Legend$LegendItem;->text:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final symbolProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$LegendItem;->symbol:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    return-object v0
.end method

.method public final textProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$LegendItem;->text:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$LegendItem;
    return-object v0
.end method
