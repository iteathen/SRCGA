.class public Lcom/sun/javafx/scene/control/skin/AccordionSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "AccordionSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/Accordion;",
        "Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field private clipRect:Ljavafx/scene/shape/Rectangle;

.field private expandedPane:Ljavafx/scene/control/TitledPane;

.field private firstTitledPane:Ljavafx/scene/control/TitledPane;

.field private forceRelayout:Z

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/control/TitledPane;",
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private previousHeight:D

.field private previousPane:Ljavafx/scene/control/TitledPane;

.field private relayout:Z


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Accordion;)V
    .locals 11

    .prologue
    .line 58
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-object v2, p1

    .local v2, "accordion":Ljavafx/scene/control/Accordion;
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;-><init>(Ljavafx/scene/control/Accordion;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 49
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->forceRelayout:Z

    .line 52
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->relayout:Z

    .line 55
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousHeight:D

    .line 227
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    .line 228
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    .line 229
    move-object v3, v1

    new-instance v4, Ljava/util/HashMap;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->listeners:Ljava/util/Map;

    .line 59
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/AccordionSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/AccordionSkin;Ljavafx/scene/control/Accordion;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 78
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->firstTitledPane:Ljavafx/scene/control/TitledPane;

    .line 80
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->firstTitledPane:Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "first-titled-pane"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 83
    :cond_0
    move-object v3, v1

    new-instance v4, Ljavafx/scene/shape/Rectangle;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Accordion;->getWidth()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/Accordion;->getHeight()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/shape/Rectangle;-><init>(DD)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    .line 84
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Accordion;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Accordion;->setClip(Ljavafx/scene/Node;)V

    .line 86
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->initTitledPaneListeners(Ljava/util/List;)V

    .line 87
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    .line 88
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Accordion;

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->requestLayout()V

    .line 90
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Accordion;

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    const-string v5, "WIDTH"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 91
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Accordion;

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    const-string v5, "HEIGHT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/AccordionSkin;Ljavafx/scene/control/Accordion;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->lambda$new$274(Ljavafx/scene/control/Accordion;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/AccordionSkin;Ljavafx/scene/control/TitledPane;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->lambda$expandedPropertyListener$275(Ljavafx/scene/control/TitledPane;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private expandedPropertyListener(Ljavafx/scene/control/TitledPane;)Ljavafx/beans/value/ChangeListener;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TitledPane;",
            ")",
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-object v1, p1

    .local v1, "tp":Ljavafx/scene/control/TitledPane;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/AccordionSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/AccordionSkin;Ljavafx/scene/control/TitledPane;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    return-object v0
.end method

.method private initTitledPaneListeners(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TitledPane;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TitledPane;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    move-object v3, v5

    .line 233
    .local v3, "tp":Ljavafx/scene/control/TitledPane;
    move-object v5, v3

    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/Accordion;

    invoke-virtual {v7}, Ljavafx/scene/control/Accordion;->getExpandedPane()Ljavafx/scene/control/TitledPane;

    move-result-object v7

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 234
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    .line 237
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPropertyListener(Ljavafx/scene/control/TitledPane;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    move-object v4, v5

    .line 238
    .local v4, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<Ljava/lang/Boolean;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 239
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->listeners:Ljava/util/Map;

    move-object v6, v3

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 240
    goto :goto_0

    .line 233
    .end local v4    # "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<Ljava/lang/Boolean;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 241
    .end local v3    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_2
    return-void
.end method

.method private synthetic lambda$expandedPropertyListener$275(Ljavafx/scene/control/TitledPane;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-object v1, p1

    .local v1, "tp":Ljavafx/scene/control/TitledPane;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "wasExpanded":Ljava/lang/Boolean;
    move-object v4, p4

    .local v4, "expanded":Ljava/lang/Boolean;
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    .line 255
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Accordion;

    move-object v5, v6

    .line 256
    .local v5, "accordion":Ljavafx/scene/control/Accordion;
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    if-eqz v6, :cond_0

    .line 258
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 260
    :cond_0
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 261
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/Accordion;->setExpandedPane(Ljavafx/scene/control/TitledPane;)V

    .line 263
    :cond_1
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/Accordion;->getExpandedPane()Ljavafx/scene/control/TitledPane;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    .line 266
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/control/Accordion;->setExpandedPane(Ljavafx/scene/control/TitledPane;)V

    goto :goto_0
.end method

.method private synthetic lambda$new$274(Ljavafx/scene/control/Accordion;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-object v1, p1

    .local v1, "accordion":Ljavafx/scene/control/Accordion;
    move-object v2, p2

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->firstTitledPane:Ljavafx/scene/control/TitledPane;

    if-eqz v3, :cond_0

    .line 61
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->firstTitledPane:Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "first-titled-pane"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 63
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->firstTitledPane:Ljavafx/scene/control/TitledPane;

    .line 65
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->firstTitledPane:Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "first-titled-pane"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 68
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    .line 69
    :goto_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->removeTitledPaneListeners(Ljava/util/List;)V

    .line 71
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->initTitledPaneListeners(Ljava/util/List;)V

    goto :goto_0

    .line 75
    :cond_2
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->forceRelayout:Z

    .line 76
    return-void
.end method

.method private removeTitledPaneListeners(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TitledPane;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TitledPane;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Ljavafx/scene/control/TitledPane;

    move-object v3, v4

    .line 245
    .local v3, "tp":Ljavafx/scene/control/TitledPane;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->listeners:Ljava/util/Map;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->listeners:Ljava/util/Map;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 247
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->listeners:Ljava/util/Map;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 249
    :cond_0
    goto :goto_0

    .line 250
    .end local v3    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_1
    return-void
.end method


# virtual methods
.method protected computeMinHeight(DDDDD)D
    .locals 25

    .prologue
    .line 107
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    const-wide/16 v20, 0x0

    move-wide/from16 v13, v20

    .line 109
    .local v13, "h":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 110
    move-wide/from16 v20, v13

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v22, v0

    move-wide/from16 v23, v3

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/control/TitledPane;->minHeight(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v13, v20

    .line 113
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 114
    move-wide/from16 v20, v13

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v22, v0

    move-wide/from16 v23, v3

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/control/TitledPane;->minHeight(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v13, v20

    .line 117
    :cond_1
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v15, v20

    :goto_0
    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v16, v20

    .line 118
    .local v16, "child":Ljavafx/scene/Node;
    move-object/from16 v20, v16

    check-cast v20, Ljavafx/scene/control/TitledPane;

    move-object/from16 v17, v20

    .line 119
    .local v17, "pane":Ljavafx/scene/control/TitledPane;
    move-object/from16 v20, v17

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v20, v17

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 120
    move-object/from16 v20, v16

    check-cast v20, Ljavafx/scene/control/TitledPane;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TitledPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v20

    move-object/from16 v18, v20

    .line 121
    .local v18, "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object/from16 v20, v18

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 122
    move-object/from16 v20, v18

    check-cast v20, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v19, v20

    .line 123
    .local v19, "childSkin":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide/from16 v20, v13

    move-object/from16 v22, v19

    move-wide/from16 v23, v3

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTitleRegionSize(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v13, v20

    .line 128
    .end local v18    # "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    .end local v19    # "childSkin":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    :cond_2
    :goto_1
    goto :goto_0

    .line 125
    .restart local v18    # "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    :cond_3
    move-wide/from16 v20, v13

    move-object/from16 v22, v17

    move-wide/from16 v23, v3

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/control/TitledPane;->minHeight(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v13, v20

    goto :goto_1

    .line 130
    .end local v16    # "child":Ljavafx/scene/Node;
    .end local v17    # "pane":Ljavafx/scene/control/TitledPane;
    .end local v18    # "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    :cond_4
    move-wide/from16 v20, v13

    move-wide/from16 v22, v5

    add-double v20, v20, v22

    move-wide/from16 v22, v9

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    return-wide v2
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 25

    .prologue
    .line 134
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    const-wide/16 v20, 0x0

    move-wide/from16 v13, v20

    .line 136
    .local v13, "h":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 137
    move-wide/from16 v20, v13

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v22, v0

    move-wide/from16 v23, v3

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/control/TitledPane;->prefHeight(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v13, v20

    .line 140
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 141
    move-wide/from16 v20, v13

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v22, v0

    move-wide/from16 v23, v3

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/control/TitledPane;->prefHeight(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v13, v20

    .line 144
    :cond_1
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v15, v20

    :goto_0
    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v16, v20

    .line 145
    .local v16, "child":Ljavafx/scene/Node;
    move-object/from16 v20, v16

    check-cast v20, Ljavafx/scene/control/TitledPane;

    move-object/from16 v17, v20

    .line 146
    .local v17, "pane":Ljavafx/scene/control/TitledPane;
    move-object/from16 v20, v17

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v20, v17

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 147
    move-object/from16 v20, v16

    check-cast v20, Ljavafx/scene/control/TitledPane;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TitledPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v20

    move-object/from16 v18, v20

    .line 148
    .local v18, "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object/from16 v20, v18

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 149
    move-object/from16 v20, v18

    check-cast v20, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v19, v20

    .line 150
    .local v19, "childSkin":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide/from16 v20, v13

    move-object/from16 v22, v19

    move-wide/from16 v23, v3

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTitleRegionSize(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v13, v20

    .line 155
    .end local v18    # "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    .end local v19    # "childSkin":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    :cond_2
    :goto_1
    goto :goto_0

    .line 152
    .restart local v18    # "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    :cond_3
    move-wide/from16 v20, v13

    move-object/from16 v22, v17

    move-wide/from16 v23, v3

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/control/TitledPane;->prefHeight(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v13, v20

    goto :goto_1

    .line 157
    .end local v16    # "child":Ljavafx/scene/Node;
    .end local v17    # "pane":Ljavafx/scene/control/TitledPane;
    .end local v18    # "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    :cond_4
    move-wide/from16 v20, v13

    move-wide/from16 v22, v5

    add-double v20, v20, v22

    move-wide/from16 v22, v9

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    return-wide v2
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 96
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-object v2, p1

    .local v2, "property":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 97
    const-string v3, "WIDTH"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Accordion;

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v3, "HEIGHT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Accordion;

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 101
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->relayout:Z

    goto :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 33

    .prologue
    .line 162
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/AccordionSkin;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->forceRelayout:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->relayout:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousHeight:D

    move-wide/from16 v27, v0

    move-wide/from16 v29, v10

    cmpl-double v27, v27, v29

    if-eqz v27, :cond_2

    :cond_0
    const/16 v27, 0x1

    :goto_0
    move/from16 v12, v27

    .line 163
    .local v12, "rebuild":Z
    move-object/from16 v27, v3

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->forceRelayout:Z

    .line 164
    move-object/from16 v27, v3

    move-wide/from16 v28, v10

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousHeight:D

    .line 167
    const-wide/16 v27, 0x0

    move-wide/from16 v13, v27

    .line 168
    .local v13, "collapsedPanesHeight":D
    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v27

    check-cast v27, Ljavafx/scene/control/Accordion;

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v15, v27

    :goto_1
    move-object/from16 v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    move-object/from16 v27, v15

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljavafx/scene/control/TitledPane;

    move-object/from16 v16, v27

    .line 169
    .local v16, "tp":Ljavafx/scene/control/TitledPane;
    move-object/from16 v27, v16

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 170
    move-object/from16 v27, v16

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/TitledPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v27

    check-cast v27, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object/from16 v17, v27

    .line 171
    .local v17, "childSkin":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide/from16 v27, v13

    move-object/from16 v29, v3

    move-object/from16 v30, v17

    move-wide/from16 v31, v8

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTitleRegionSize(D)D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->snapSize(D)D

    move-result-wide v29

    add-double v27, v27, v29

    move-wide/from16 v13, v27

    .line 173
    .end local v17    # "childSkin":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    :cond_1
    goto :goto_1

    .line 162
    .end local v12    # "rebuild":Z
    .end local v13    # "collapsedPanesHeight":D
    .end local v16    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_2
    const/16 v27, 0x0

    goto :goto_0

    .line 174
    .restart local v12    # "rebuild":Z
    .restart local v13    # "collapsedPanesHeight":D
    :cond_3
    move-wide/from16 v27, v10

    move-wide/from16 v29, v13

    sub-double v27, v27, v29

    move-wide/from16 v15, v27

    .line 176
    .local v15, "maxTitledPaneHeight":D
    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v27

    check-cast v27, Ljavafx/scene/control/Accordion;

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v17, v27

    :goto_2
    move-object/from16 v27, v17

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    move-object/from16 v27, v17

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljavafx/scene/control/TitledPane;

    move-object/from16 v18, v27

    .line 177
    .local v18, "tp":Ljavafx/scene/control/TitledPane;
    move-object/from16 v27, v18

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/TitledPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v27

    move-object/from16 v19, v27

    .line 179
    .local v19, "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object/from16 v27, v19

    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 180
    move-object/from16 v27, v19

    check-cast v27, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-wide/from16 v28, v15

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->setMaxTitledPaneHeightForAccordion(D)V

    .line 181
    move-object/from16 v27, v3

    move-object/from16 v28, v19

    check-cast v28, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTitledPaneHeightForAccordion()D

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->snapSize(D)D

    move-result-wide v27

    move-wide/from16 v20, v27

    .line 185
    .local v20, "ph":D
    :goto_3
    move-object/from16 v27, v18

    move-wide/from16 v28, v8

    move-wide/from16 v30, v20

    invoke-virtual/range {v27 .. v31}, Ljavafx/scene/control/TitledPane;->resize(DD)V

    .line 187
    const/16 v27, 0x1

    move/from16 v22, v27

    .line 188
    .local v22, "needsRelocate":Z
    move/from16 v27, v12

    if-nez v27, :cond_4

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 189
    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v27

    check-cast v27, Ljavafx/scene/control/Accordion;

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v27

    move-object/from16 v23, v27

    .line 190
    .local v23, "panes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TitledPane;>;"
    move-object/from16 v27, v23

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->previousPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v27

    move/from16 v24, v27

    .line 191
    .local v24, "previousPaneIndex":I
    move-object/from16 v27, v23

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/AccordionSkin;->expandedPane:Ljavafx/scene/control/TitledPane;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v27

    move/from16 v25, v27

    .line 192
    .local v25, "expandedPaneIndex":I
    move-object/from16 v27, v23

    move-object/from16 v28, v18

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v27

    move/from16 v26, v27

    .line 194
    .local v26, "currentPaneIndex":I
    move/from16 v27, v24

    move/from16 v28, v25

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 197
    move/from16 v27, v26

    move/from16 v28, v25

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_4

    .line 198
    move-object/from16 v27, v18

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    invoke-virtual/range {v27 .. v31}, Ljavafx/scene/control/TitledPane;->relocate(DD)V

    .line 199
    move-wide/from16 v27, v6

    move-wide/from16 v29, v20

    add-double v27, v27, v29

    move-wide/from16 v6, v27

    .line 200
    const/16 v27, 0x0

    move/from16 v22, v27

    .line 220
    .end local v23    # "panes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TitledPane;>;"
    .end local v24    # "previousPaneIndex":I
    .end local v25    # "expandedPaneIndex":I
    .end local v26    # "currentPaneIndex":I
    :cond_4
    :goto_4
    move/from16 v27, v22

    if-eqz v27, :cond_5

    .line 221
    move-object/from16 v27, v18

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    invoke-virtual/range {v27 .. v31}, Ljavafx/scene/control/TitledPane;->relocate(DD)V

    .line 222
    move-wide/from16 v27, v6

    move-wide/from16 v29, v20

    add-double v27, v27, v29

    move-wide/from16 v6, v27

    .line 224
    :cond_5
    goto/16 :goto_2

    .line 183
    .end local v20    # "ph":D
    .end local v22    # "needsRelocate":Z
    :cond_6
    move-object/from16 v27, v18

    move-wide/from16 v28, v8

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/control/TitledPane;->prefHeight(D)D

    move-result-wide v27

    move-wide/from16 v20, v27

    .restart local v20    # "ph":D
    goto/16 :goto_3

    .line 202
    .restart local v22    # "needsRelocate":Z
    .restart local v23    # "panes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TitledPane;>;"
    .restart local v24    # "previousPaneIndex":I
    .restart local v25    # "expandedPaneIndex":I
    .restart local v26    # "currentPaneIndex":I
    :cond_7
    move/from16 v27, v24

    move/from16 v28, v25

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_8

    .line 205
    move/from16 v27, v26

    move/from16 v28, v24

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_4

    .line 206
    move-object/from16 v27, v18

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    invoke-virtual/range {v27 .. v31}, Ljavafx/scene/control/TitledPane;->relocate(DD)V

    .line 207
    move-wide/from16 v27, v6

    move-wide/from16 v29, v20

    add-double v27, v27, v29

    move-wide/from16 v6, v27

    .line 208
    const/16 v27, 0x0

    move/from16 v22, v27

    goto :goto_4

    .line 214
    :cond_8
    move-object/from16 v27, v18

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    invoke-virtual/range {v27 .. v31}, Ljavafx/scene/control/TitledPane;->relocate(DD)V

    .line 215
    move-wide/from16 v27, v6

    move-wide/from16 v29, v20

    add-double v27, v27, v29

    move-wide/from16 v6, v27

    .line 216
    const/16 v27, 0x0

    move/from16 v22, v27

    goto :goto_4

    .line 225
    .end local v18    # "tp":Ljavafx/scene/control/TitledPane;
    .end local v19    # "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    .end local v20    # "ph":D
    .end local v22    # "needsRelocate":Z
    .end local v23    # "panes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TitledPane;>;"
    .end local v24    # "previousPaneIndex":I
    .end local v25    # "expandedPaneIndex":I
    .end local v26    # "currentPaneIndex":I
    :cond_9
    return-void
.end method
