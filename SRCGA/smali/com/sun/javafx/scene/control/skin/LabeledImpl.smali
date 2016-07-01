.class public Lcom/sun/javafx/scene/control/skin/LabeledImpl;
.super Ljavafx/scene/control/Label;
.source "LabeledImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/LabeledImpl$StyleableProperties;,
        Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;
    }
.end annotation


# instance fields
.field private final shuttler:Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Labeled;)V
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledImpl;
    move-object v1, p1

    .local v1, "labeled":Ljavafx/scene/control/Labeled;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Label;-><init>()V

    .line 51
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;-><init>(Lcom/sun/javafx/scene/control/skin/LabeledImpl;Ljavafx/scene/control/Labeled;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->shuttler:Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;Lcom/sun/javafx/scene/control/skin/LabeledImpl;Ljavafx/scene/control/Labeled;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/control/skin/LabeledImpl;
    move-object v2, p2

    .local v2, "x2":Ljavafx/scene/control/Labeled;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->initialize(Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;Lcom/sun/javafx/scene/control/skin/LabeledImpl;Ljavafx/scene/control/Labeled;)V

    return-void
.end method

.method private static initialize(Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;Lcom/sun/javafx/scene/control/skin/LabeledImpl;Ljavafx/scene/control/Labeled;)V
    .locals 13

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "shuttler":Lcom/sun/javafx/scene/control/skin/LabeledImpl$Shuttler;
    move-object v1, p1

    .local v1, "labeledImpl":Lcom/sun/javafx/scene/control/skin/LabeledImpl;
    move-object v2, p2

    .local v2, "labeled":Ljavafx/scene/control/Labeled;
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->setText(Ljava/lang/String;)V

    .line 58
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/Labeled;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 60
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->setGraphic(Ljavafx/scene/Node;)V

    .line 61
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/Labeled;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 63
    sget-object v10, Lcom/sun/javafx/scene/control/skin/LabeledImpl$StyleableProperties;->STYLEABLES_TO_MIRROR:Ljava/util/List;

    move-object v3, v10

    .line 65
    .local v3, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    const/4 v10, 0x0

    move v4, v10

    .local v4, "n":I
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v5, v10

    .local v5, "nMax":I
    :goto_0
    move v10, v4

    move v11, v5

    if-ge v10, v11, :cond_3

    .line 67
    move-object v10, v3

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/css/CssMetaData;

    move-object v6, v10

    .line 72
    .local v6, "styleable":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljava/lang/Object;>;"
    const-string v10, "-fx-skin"

    move-object v11, v6

    invoke-virtual {v11}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    :cond_1
    move-object v10, v6

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v10

    move-object v7, v10

    .line 75
    .local v7, "fromVal":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<*>;"
    move-object v10, v7

    instance-of v10, v10, Ljavafx/beans/Observable;

    if-eqz v10, :cond_0

    .line 77
    move-object v10, v7

    check-cast v10, Ljavafx/beans/Observable;

    move-object v11, v0

    invoke-interface {v10, v11}, Ljavafx/beans/Observable;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 79
    move-object v10, v7

    invoke-interface {v10}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v10

    move-object v8, v10

    .line 80
    .local v8, "origin":Ljavafx/css/StyleOrigin;
    move-object v10, v8

    if-nez v10, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    move-object v10, v6

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v10

    move-object v9, v10

    .line 82
    .local v9, "styleableProperty":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<Ljava/lang/Object;>;"
    move-object v10, v9

    move-object v11, v8

    move-object v12, v7

    invoke-interface {v12}, Ljavafx/css/StyleableProperty;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    .end local v6    # "styleable":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljava/lang/Object;>;"
    .end local v7    # "fromVal":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<*>;"
    .end local v8    # "origin":Ljavafx/css/StyleOrigin;
    .end local v9    # "styleableProperty":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<Ljava/lang/Object;>;"
    :cond_3
    return-void
.end method
