.class Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;
.super Ljava/lang/Object;
.source "LabeledImpl.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/LabeledImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shuttler"
.end annotation


# instance fields
.field private final labeled:Ljavafx/scene/control/Labeled;

.field private final labeledImpl:Lcom/sun/javafx/scene/control/skin/LabeledImpl;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/LabeledImpl;Ljavafx/scene/control/Labeled;)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;
    move-object v1, p1

    .local v1, "labeledImpl":Lcom/sun/javafx/scene/control/skin/LabeledImpl;
    move-object v2, p2

    .local v2, "labeled":Ljavafx/scene/control/Labeled;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeledImpl:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    .line 94
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeled:Ljavafx/scene/control/Labeled;

    .line 95
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->access$000(Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;Lcom/sun/javafx/scene/control/skin/LabeledImpl;Ljavafx/scene/control/Labeled;)V

    .line 97
    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 9

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v7}, Ljavafx/scene/control/Labeled;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 102
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeledImpl:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v7}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->setText(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v7}, Ljavafx/scene/control/Labeled;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 107
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v6}, Ljavafx/scene/control/Labeled;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    check-cast v6, Ljavafx/css/StyleableProperty;

    invoke-interface {v6}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v6

    move-object v2, v6

    .line 108
    .local v2, "origin":Ljavafx/css/StyleOrigin;
    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v2

    sget-object v7, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    if-ne v6, v7, :cond_3

    .line 109
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeledImpl:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeled:Ljavafx/scene/control/Labeled;

    invoke-virtual {v7}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->setGraphic(Ljavafx/scene/Node;)V

    .line 112
    :cond_3
    goto :goto_0

    .end local v2    # "origin":Ljavafx/css/StyleOrigin;
    :cond_4
    move-object v6, v1

    instance-of v6, v6, Ljavafx/css/StyleableProperty;

    if-eqz v6, :cond_0

    .line 113
    move-object v6, v1

    check-cast v6, Ljavafx/css/StyleableProperty;

    move-object v2, v6

    .line 115
    .local v2, "styleableProperty":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<*>;"
    move-object v6, v2

    invoke-interface {v6}, Ljavafx/css/StyleableProperty;->getCssMetaData()Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v3, v6

    .line 116
    .local v3, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljava/lang/Object;>;"
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 117
    move-object v6, v2

    invoke-interface {v6}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v6

    move-object v4, v6

    .line 118
    .local v4, "origin":Ljavafx/css/StyleOrigin;
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;->labeledImpl:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    invoke-virtual {v6, v7}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v5, v6

    .line 119
    .local v5, "targetProperty":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<Ljava/lang/Object;>;"
    move-object v6, v5

    move-object v7, v4

    move-object v8, v2

    invoke-interface {v8}, Ljavafx/css/StyleableProperty;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    goto :goto_0
.end method
