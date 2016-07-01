.class public Lcom/sun/javafx/scene/control/skin/TooltipSkin;
.super Ljava/lang/Object;
.source "TooltipSkin.java"

# interfaces
.implements Ljavafx/scene/control/Skin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/scene/control/Skin",
        "<",
        "Ljavafx/scene/control/Tooltip;",
        ">;"
    }
.end annotation


# instance fields
.field private tipLabel:Ljavafx/scene/control/Label;

.field private tooltip:Ljavafx/scene/control/Tooltip;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Tooltip;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TooltipSkin;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/control/Tooltip;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    .line 47
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Label;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    .line 48
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->contentDisplayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->contentDisplayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 50
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 51
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->graphicTextGapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->graphicTextGapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 52
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 53
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->textOverrunProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->textOverrunProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 54
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 55
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->wrapTextProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->wrapTextProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 57
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 58
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->maxWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->maxWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 59
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->minHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->minHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->maxHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->maxHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 66
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v2

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setStyle(Ljava/lang/String;)V

    .line 68
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setId(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TooltipSkin;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    .line 81
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    .line 82
    return-void
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TooltipSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tipLabel:Ljavafx/scene/control/Label;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TooltipSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Ljavafx/scene/control/Skinnable;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TooltipSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->getSkinnable()Ljavafx/scene/control/Tooltip;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TooltipSkin;
    return-object v0
.end method

.method public getSkinnable()Ljavafx/scene/control/Tooltip;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TooltipSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TooltipSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TooltipSkin;
    return-object v0
.end method
