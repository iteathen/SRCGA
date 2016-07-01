.class public Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;
.super Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;
.source "TreeTableRowSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TT;>;",
        "Ljavafx/scene/control/TreeTableRow",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior",
        "<TT;>;",
        "Ljavafx/scene/control/TreeTableCell",
        "<TT;*>;>;"
    }
.end annotation


# instance fields
.field private childrenDirty:Z

.field private disclosureNodeDirty:Z

.field private graphic:Ljavafx/scene/Node;

.field private indent:Ljavafx/beans/property/DoubleProperty;

.field private itemsProperty:Ljavafx/beans/property/SimpleObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/SimpleObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private treeItem:Ljavafx/scene/control/TreeItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeItem",
            "<*>;"
        }
    .end annotation
.end field

.field private treeItemListener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

.field private treeTableViewSkin:Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeTableRow;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableRow",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeTableRowBehavior;-><init>(Ljavafx/scene/control/TreeTableRow;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;-><init>(Ljavafx/scene/control/IndexedCell;Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;)V

    .line 71
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->disclosureNodeDirty:Z

    .line 76
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->childrenDirty:Z

    .line 108
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;)Ljavafx/util/Callback;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;-><init>(Ljavafx/util/Callback;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItemListener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    .line 128
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    .line 89
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->init(Ljavafx/scene/control/IndexedCell;)V

    .line 91
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateTreeItem()V

    .line 92
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateTableViewSkin()V

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->treeTableViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    const-string v4, "TREE_TABLE_VIEW"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 95
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->indexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v3

    const-string v4, "INDEX"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 96
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->treeItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    const-string v4, "TREE_ITEM"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 97
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->treeColumnProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "TREE_COLUMN"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->lambda$new$521(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 394
    # getter for: Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$StyleableProperties;->access$100()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$521(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    const-string v2, "GRAPHIC"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->disclosureNodeDirty:Z

    .line 111
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->requestLayout()V

    .line 113
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method private updateDisclosureNodeAndGraphic()V
    .locals 7

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableRow;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    :goto_0
    return-void

    .line 311
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v1, v5

    .line 312
    .local v1, "graphicProperty":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/Node;>;"
    move-object v5, v1

    if-nez v5, :cond_4

    const/4 v5, 0x0

    :goto_1
    move-object v2, v5

    .line 313
    .local v2, "newGraphic":Ljavafx/scene/Node;
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 315
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->graphic:Ljavafx/scene/Node;

    if-eq v5, v6, :cond_1

    .line 316
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->graphic:Ljavafx/scene/Node;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 319
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 320
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 321
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->graphic:Ljavafx/scene/Node;

    .line 326
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableRow;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 327
    .local v3, "disclosureNode":Ljavafx/scene/Node;
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 328
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    move v4, v5

    .line 329
    .local v4, "disclosureVisible":Z
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 331
    move v5, v4

    if-nez v5, :cond_6

    .line 332
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 342
    :goto_3
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 343
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->applyCss()V

    .line 346
    .end local v4    # "disclosureVisible":Z
    :cond_3
    goto :goto_0

    .line 312
    .end local v2    # "newGraphic":Ljavafx/scene/Node;
    .end local v3    # "disclosureNode":Ljavafx/scene/Node;
    :cond_4
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    goto :goto_1

    .line 328
    .restart local v2    # "newGraphic":Ljavafx/scene/Node;
    .restart local v3    # "disclosureNode":Ljavafx/scene/Node;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 333
    .restart local v4    # "disclosureVisible":Z
    :cond_6
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v5

    if-nez v5, :cond_7

    .line 334
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 335
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->toFront()V

    goto :goto_3

    .line 337
    :cond_7
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->toBack()V

    goto :goto_3
.end method

.method private updateTableViewSkin()V
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    move-object v1, v2

    .line 350
    .local v1, "tableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;

    if-eqz v2, :cond_0

    .line 351
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeTableViewSkin:Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;

    .line 353
    :cond_0
    return-void
.end method

.method private updateTreeItem()V
    .locals 4

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    if-eqz v1, :cond_0

    .line 298
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItemListener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->unregisterChangeListener(Ljavafx/beans/value/ObservableValue;)V

    .line 299
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItemListener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->unregisterChangeListener(Ljavafx/beans/value/ObservableValue;)V

    .line 301
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    .line 302
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    if-eqz v1, :cond_1

    .line 303
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItemListener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    const-string v3, "GRAPHIC"

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 305
    :cond_1
    return-void
.end method


# virtual methods
.method protected fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method protected bridge synthetic getCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/IndexedCell;
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/TreeTableCell;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method protected getCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/TreeTableCell;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase;",
            ")",
            "Ljavafx/scene/control/TreeTableCell",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "tcb":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/TreeTableColumn;

    move-object v2, v4

    .line 211
    .local v2, "tableColumn":Ljavafx/scene/control/TreeTableColumn;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableColumn;->getCellFactory()Ljavafx/util/Callback;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableCell;

    move-object v3, v4

    .line 213
    .local v3, "cell":Ljavafx/scene/control/TreeTableCell;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableCell;->updateTreeTableColumn(Ljavafx/scene/control/TreeTableColumn;)V

    .line 214
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableCell;->updateTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 216
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method protected getDisclosureNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method public final getIndent()D
    .locals 4

    .prologue
    .line 130
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected bridge synthetic getIndentationLevel(Ljavafx/scene/control/IndexedCell;)I
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getIndentationLevel(Ljavafx/scene/control/TreeTableRow;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return v0
.end method

.method protected getIndentationLevel(Ljavafx/scene/control/TreeTableRow;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableRow",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getTreeItemLevel(Ljavafx/scene/control/TreeItem;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return v0
.end method

.method protected getIndentationPerLevel()D
    .locals 3

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getIndent()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-wide v0
.end method

.method protected bridge synthetic getTableColumnBase(Ljavafx/scene/control/IndexedCell;)Ljavafx/scene/control/TableColumnBase;
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableCell;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getTableColumnBase(Ljavafx/scene/control/TreeTableCell;)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method protected getTableColumnBase(Ljavafx/scene/control/TreeTableCell;)Ljavafx/scene/control/TreeTableColumn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableCell;",
            ")",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/TreeTableCell;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method protected getTreeColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getTreeColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method protected getVirtualFlowOwner()Ljavafx/scene/control/Control;
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method protected getVisibleLeafColumns()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v0
.end method

.method protected graphicProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 3
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
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableRow;

    move-object v1, v2

    .line 274
    .local v1, "treeTableRow":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 277
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    :goto_0
    return-object v0

    .line 275
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 277
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 161
    const-string v2, "TREE_ABLE_VIEW"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateTableViewSkin()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v2, "INDEX"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateCells:Z

    goto :goto_0

    .line 165
    :cond_2
    const-string v2, "TREE_ITEM"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateTreeItem()V

    .line 167
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->isDirty:Z

    goto :goto_0

    .line 168
    :cond_3
    const-string v2, "TREE_COLUMN"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->isDirty:Z

    .line 173
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableRow;->requestLayout()V

    goto :goto_0
.end method

.method public final indentProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 132
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 133
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    .line 147
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return-object v1
.end method

.method protected isColumnPartiallyOrFullyVisible(Ljavafx/scene/control/TableColumnBase;)Z
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeTableViewSkin:Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeTableViewSkin:Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;->isColumnPartiallyOrFullyVisible(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v2

    goto :goto_0
.end method

.method protected isDisclosureNodeVisible()Z
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isIndentationRequired()Z
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return v0
.end method

.method protected isShowRoot()Z
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->isShowRoot()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    return v0
.end method

.method protected layoutChildren(DDDD)V
    .locals 21

    .prologue
    .line 196
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->disclosureNodeDirty:Z

    if-eqz v11, :cond_0

    .line 197
    move-object v11, v1

    invoke-direct {v11}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateDisclosureNodeAndGraphic()V

    .line 198
    move-object v11, v1

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->disclosureNodeDirty:Z

    .line 201
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v11

    move-object v10, v11

    .line 202
    .local v10, "disclosureNode":Ljavafx/scene/Node;
    move-object v11, v10

    if-eqz v11, :cond_1

    move-object v11, v10

    invoke-virtual {v11}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v11

    if-nez v11, :cond_1

    .line 203
    move-object v11, v1

    invoke-direct {v11}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateDisclosureNodeAndGraphic()V

    .line 206
    :cond_1
    move-object v11, v1

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-super/range {v11 .. v19}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->layoutChildren(DDDD)V

    .line 207
    return-void
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object/from16 v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableRow;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v10

    move-object v3, v10

    .line 409
    .local v3, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    sget-object v10, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 449
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    invoke-super {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    :goto_0
    return-object v0

    .line 413
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    :pswitch_0
    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v10

    .line 414
    .local v4, "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableRow;->getIndex()I

    move-result v10

    move v5, v10

    .line 415
    .local v5, "index":I
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TreeTablePosition;

    move-object v7, v10

    .line 416
    .local v7, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TT;*>;"
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v10

    move v11, v5

    if-ne v10, v11, :cond_1

    .line 417
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v10

    move-object v8, v10

    .line 418
    .local v8, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TT;*>;"
    move-object v10, v8

    if-nez v10, :cond_0

    .line 420
    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v10

    move-object v8, v10

    .line 422
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/Reference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TreeTableCell;

    move-object v9, v10

    .line 423
    .local v9, "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TT;*>;"
    move-object v10, v9

    if-eqz v10, :cond_1

    move-object v10, v4

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 425
    .end local v8    # "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TT;*>;"
    .end local v9    # "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TT;*>;"
    :cond_1
    move-object v10, v4

    invoke-static {v10}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v0, v10

    goto :goto_0

    .line 429
    .end local v4    # "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v5    # "index":I
    .end local v7    # "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TT;*>;"
    :cond_2
    :pswitch_1
    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v4, v10

    .line 430
    .local v4, "colIndex":I
    move-object v10, v3

    move v11, v4

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v10

    move-object v5, v10

    .line 431
    .local v5, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TT;*>;"
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 432
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/Reference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    .line 434
    :cond_3
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0

    .line 437
    .end local v4    # "colIndex":I
    .end local v5    # "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TT;*>;"
    :pswitch_2
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v10

    move-object v4, v10

    .line 438
    .local v4, "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TT;>;"
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getFocusedCell()Ljavafx/scene/control/TreeTablePosition;

    move-result-object v10

    move-object v5, v10

    .line 439
    .local v5, "focusedCell":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TT;*>;"
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v10

    move-object v6, v10

    .line 440
    .local v6, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TT;*>;"
    move-object v10, v6

    if-nez v10, :cond_4

    .line 442
    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumn(I)Ljavafx/scene/control/TreeTableColumn;

    move-result-object v10

    move-object v6, v10

    .line 444
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 445
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->cellsMap:Ljava/util/WeakHashMap;

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/Reference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    .line 447
    :cond_5
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setIndent(D)V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->indentProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method protected bridge synthetic updateCell(Ljavafx/scene/control/IndexedCell;Ljavafx/scene/control/IndexedCell;)V
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/TreeTableCell;

    move-object v5, v2

    check-cast v5, Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateCell(Ljavafx/scene/control/TreeTableCell;Ljavafx/scene/control/TreeTableRow;)V

    return-void
.end method

.method protected updateCell(Ljavafx/scene/control/TreeTableCell;Ljavafx/scene/control/TreeTableRow;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableCell",
            "<TT;*>;",
            "Ljavafx/scene/control/TreeTableRow",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/TreeTableCell;, "Ljavafx/scene/control/TreeTableCell<TT;*>;"
    move-object v2, p2

    .local v2, "row":Ljavafx/scene/control/TreeTableRow;, "Ljavafx/scene/control/TreeTableRow<TT;>;"
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableCell;->updateTreeTableRow(Ljavafx/scene/control/TreeTableRow;)V

    .line 262
    return-void
.end method

.method protected updateCells(Z)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move v1, p1

    .local v1, "resetChildren":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateCells(Z)V

    .line 222
    move v2, v1

    if-eqz v2, :cond_0

    .line 223
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->childrenDirty:Z

    .line 224
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateChildren()V

    .line 226
    :cond_0
    return-void
.end method

.method protected updateChildren()V
    .locals 3

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;, "Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateChildren()V

    .line 180
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->updateDisclosureNodeAndGraphic()V

    .line 182
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->childrenDirty:Z

    if-eqz v1, :cond_0

    .line 183
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->childrenDirty:Z

    .line 184
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->cells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableRowSkin;->cells:Ljava/util/List;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_0
.end method
