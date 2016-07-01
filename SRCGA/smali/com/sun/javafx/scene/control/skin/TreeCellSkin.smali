.class public Lcom/sun/javafx/scene/control/skin/TreeCellSkin;
.super Lcom/sun/javafx/scene/control/skin/CellSkinBase;
.source "TreeCellSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/TreeCellSkin$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/CellSkinBase",
        "<",
        "Ljavafx/scene/control/TreeCell",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final maxDisclosureWidthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<*>;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private disclosureNodeDirty:Z

.field private fixedCellSize:D

.field private fixedCellSizeEnabled:Z

.field private indent:Ljavafx/beans/property/DoubleProperty;

.field private treeItem:Ljavafx/scene/control/TreeItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeItem",
            "<*>;"
        }
    .end annotation
.end field

.field private treeItemListener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->maxDisclosureWidthMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TreeCell;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-object v2, p1

    .local v2, "control":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;-><init>(Ljavafx/scene/control/TreeCell;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;-><init>(Ljavafx/scene/control/Cell;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 75
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    .line 97
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->disclosureNodeDirty:Z

    .line 103
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeCellSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;-><init>(Ljavafx/util/Callback;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItemListener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    .line 113
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFixedCellSize()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSize:D

    .line 114
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSize:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSizeEnabled:Z

    .line 116
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->updateTreeItem()V

    .line 117
    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->updateDisclosureNodeRotation(Z)V

    .line 119
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->treeItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    const-string v5, "TREE_ITEM"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 120
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    const-string v5, "TEXT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 121
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "FIXED_CELL_SIZE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 122
    return-void

    .line 114
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TreeCellSkin;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->lambda$new$520(Ljava/lang/String;)Ljava/lang/Void;

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
    .line 365
    # getter for: Lcom/sun/javafx/scene/control/skin/TreeCellSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin$StyleableProperties;->access$100()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$520(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    const-string v2, "EXPANDED"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->updateDisclosureNodeRotation(Z)V

    .line 107
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    return-object v0
.end method

.method private updateDisclosureNode()V
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    :goto_0
    return-void

    .line 174
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v3

    move-object v1, v3

    .line 175
    .local v1, "disclosureNode":Ljavafx/scene/Node;
    move-object v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 178
    .local v2, "disclosureVisible":Z
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 180
    move v3, v2

    if-nez v3, :cond_4

    .line 181
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 191
    :goto_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 192
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->applyCss()V

    .line 194
    :cond_2
    goto :goto_0

    .line 177
    .end local v2    # "disclosureVisible":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 182
    .restart local v2    # "disclosureVisible":Z
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    if-nez v3, :cond_5

    .line 183
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 184
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->toFront()V

    goto :goto_2

    .line 186
    :cond_5
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->toBack()V

    goto :goto_2
.end method

.method private updateDisclosureNodeRotation(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 157
    .local p0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    return-void
.end method

.method private updateTreeItem()V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    if-eqz v1, :cond_0

    .line 161
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItemListener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->unregisterChangeListener(Ljavafx/beans/value/ObservableValue;)V

    .line 163
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    .line 164
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    if-eqz v1, :cond_1

    .line 165
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItemListener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    const-string v3, "EXPANDED"

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 168
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->updateDisclosureNodeRotation(Z)V

    .line 169
    return-void
.end method


# virtual methods
.method protected computeMaxHeight(DDDDD)D
    .locals 23

    .prologue
    .line 293
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSizeEnabled:Z

    if-eqz v12, :cond_0

    .line 294
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSize:D

    move-wide v1, v12

    .line 297
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    :cond_0
    move-object v12, v1

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computeMaxHeight(DDDDD)D

    move-result-wide v12

    move-wide v1, v12

    goto :goto_0
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 27

    .prologue
    .line 267
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v15, v1

    iget-boolean v15, v15, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSizeEnabled:Z

    if-eqz v15, :cond_0

    .line 268
    move-object v15, v1

    iget-wide v15, v15, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSize:D

    move-wide v1, v15

    .line 273
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    :goto_0
    return-wide v1

    .line 271
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    :cond_0
    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    invoke-super/range {v15 .. v25}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computeMinHeight(DDDDD)D

    move-result-wide v15

    move-wide v12, v15

    .line 272
    .local v12, "pref":D
    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v15}, Ljavafx/scene/control/TreeCell;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v15

    move-object v14, v15

    .line 273
    .local v14, "d":Ljavafx/scene/Node;
    move-object v15, v14

    if-nez v15, :cond_1

    move-wide v15, v12

    :goto_1
    move-wide v1, v15

    goto :goto_0

    :cond_1
    move-object v15, v14

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v15

    move-wide/from16 v17, v12

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    goto :goto_1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 31

    .prologue
    .line 277
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-wide/from16 v4, p1

    .local v4, "width":D
    move-wide/from16 v6, p3

    .local v6, "topInset":D
    move-wide/from16 v8, p5

    .local v8, "rightInset":D
    move-wide/from16 v10, p7

    .local v10, "bottomInset":D
    move-wide/from16 v12, p9

    .local v12, "leftInset":D
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSizeEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 278
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSize:D

    move-wide/from16 v20, v0

    move-wide/from16 v3, v20

    .line 289
    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    :goto_0
    return-wide v3

    .line 281
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    :cond_0
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/TreeCell;

    move-object/from16 v14, v20

    .line 283
    .local v14, "cell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object/from16 v20, v3

    move-wide/from16 v21, v4

    move-wide/from16 v23, v6

    move-wide/from16 v25, v8

    move-wide/from16 v27, v10

    move-wide/from16 v29, v12

    invoke-super/range {v20 .. v30}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computePrefHeight(DDDDD)D

    move-result-wide v20

    move-wide/from16 v15, v20

    .line 284
    .local v15, "pref":D
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TreeCell;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v20

    move-object/from16 v17, v20

    .line 285
    .local v17, "d":Ljavafx/scene/Node;
    move-object/from16 v20, v17

    if-nez v20, :cond_1

    move-wide/from16 v20, v15

    :goto_1
    move-wide/from16 v18, v20

    .line 289
    .local v18, "prefHeight":D
    move-object/from16 v20, v3

    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/control/TreeCell;->getMinHeight()D

    move-result-wide v21

    move-wide/from16 v23, v18

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(DD)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v3, v20

    goto :goto_0

    .line 285
    .end local v18    # "prefHeight":D
    :cond_1
    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v20

    move-wide/from16 v22, v15

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    goto :goto_1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 35

    .prologue
    .line 301
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    move-object/from16 v24, v2

    move-wide/from16 v25, v3

    move-wide/from16 v27, v5

    move-wide/from16 v29, v7

    move-wide/from16 v31, v9

    move-wide/from16 v33, v11

    invoke-super/range {v24 .. v34}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computePrefWidth(DDDDD)D

    move-result-wide v24

    move-wide/from16 v13, v24

    .line 303
    .local v13, "labelWidth":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->snappedLeftInset()D

    move-result-wide v24

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->snappedRightInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v15, v24

    .line 305
    .local v15, "pw":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/TreeCell;

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v24

    move-object/from16 v17, v24

    .line 306
    .local v17, "tree":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object/from16 v24, v17

    if-nez v24, :cond_0

    move-wide/from16 v24, v15

    move-wide/from16 v2, v24

    .line 324
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    :goto_0
    return-wide v2

    .line 308
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    :cond_0
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    move-wide/from16 v24, v15

    move-wide/from16 v2, v24

    goto :goto_0

    .line 310
    :cond_1
    move-wide/from16 v24, v13

    move-wide/from16 v15, v24

    .line 313
    move-object/from16 v24, v17

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeView;->getTreeItemLevel(Ljavafx/scene/control/TreeItem;)I

    move-result v24

    move/from16 v18, v24

    .line 314
    .local v18, "level":I
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeView;->isShowRoot()Z

    move-result v24

    if-nez v24, :cond_2

    add-int/lit8 v18, v18, -0x1

    .line 315
    :cond_2
    move-wide/from16 v24, v15

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getIndent()D

    move-result-wide v26

    move/from16 v28, v18

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v15, v24

    .line 318
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/TreeCell;

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeCell;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v19, v24

    .line 319
    .local v19, "disclosureNode":Ljavafx/scene/Node;
    move-object/from16 v24, v19

    if-nez v24, :cond_3

    const-wide/16 v24, 0x0

    :goto_1
    move-wide/from16 v20, v24

    .line 320
    .local v20, "disclosureNodePrefWidth":D
    sget-object v24, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->maxDisclosureWidthMap:Ljava/util/Map;

    move-object/from16 v25, v17

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    sget-object v24, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->maxDisclosureWidthMap:Ljava/util/Map;

    move-object/from16 v25, v17

    .line 321
    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    :goto_2
    move-wide/from16 v22, v24

    .line 322
    .local v22, "defaultDisclosureWidth":D
    move-wide/from16 v24, v15

    move-wide/from16 v26, v22

    move-wide/from16 v28, v20

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v15, v24

    .line 324
    move-wide/from16 v24, v15

    move-wide/from16 v2, v24

    goto/16 :goto_0

    .line 319
    .end local v20    # "disclosureNodePrefWidth":D
    .end local v22    # "defaultDisclosureWidth":D
    :cond_3
    move-object/from16 v24, v19

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v24

    goto :goto_1

    .line 321
    .restart local v20    # "disclosureNodePrefWidth":D
    :cond_4
    const-wide/16 v24, 0x0

    goto :goto_2
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
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    return-object v0
.end method

.method public final getIndent()D
    .locals 4

    .prologue
    .line 77
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 125
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 126
    const-string v3, "TREE_ITEM"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->updateTreeItem()V

    .line 128
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->disclosureNodeDirty:Z

    .line 129
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->requestLayout()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v3, "TEXT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->requestLayout()V

    goto :goto_0

    .line 132
    :cond_2
    const-string v3, "FIXED_CELL_SIZE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeCell;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFixedCellSize()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSize:D

    .line 134
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSize:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->fixedCellSizeEnabled:Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final indentProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 79
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 80
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/TreeCellSkin;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    .line 94
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->indent:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    return-object v1
.end method

.method protected layoutChildren(DDDD)V
    .locals 39

    .prologue
    .line 207
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/TreeCell;

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v24

    move-object/from16 v12, v24

    .line 208
    .local v12, "tree":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object/from16 v24, v12

    if-nez v24, :cond_0

    .line 264
    :goto_0
    return-void

    .line 210
    :cond_0
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->disclosureNodeDirty:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 211
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->updateDisclosureNode()V

    .line 212
    move-object/from16 v24, v3

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->disclosureNodeDirty:Z

    .line 215
    :cond_1
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/TreeCell;

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeCell;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v13, v24

    .line 217
    .local v13, "disclosureNode":Ljavafx/scene/Node;
    move-object/from16 v24, v12

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/TreeView;->getTreeItemLevel(Ljavafx/scene/control/TreeItem;)I

    move-result v24

    move/from16 v14, v24

    .line 218
    .local v14, "level":I
    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeView;->isShowRoot()Z

    move-result v24

    if-nez v24, :cond_2

    add-int/lit8 v14, v14, -0x1

    .line 219
    :cond_2
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getIndent()D

    move-result-wide v24

    move/from16 v26, v14

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v15, v24

    .line 221
    .local v15, "leftMargin":D
    move-wide/from16 v24, v4

    move-wide/from16 v26, v15

    add-double v24, v24, v26

    move-wide/from16 v4, v24

    .line 224
    move-object/from16 v24, v13

    if-eqz v24, :cond_8

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v24

    if-nez v24, :cond_8

    const/16 v24, 0x1

    :goto_1
    move/from16 v17, v24

    .line 226
    .local v17, "disclosureVisible":Z
    sget-object v24, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->maxDisclosureWidthMap:Ljava/util/Map;

    move-object/from16 v25, v12

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    sget-object v24, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->maxDisclosureWidthMap:Ljava/util/Map;

    move-object/from16 v25, v12

    .line 227
    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    :goto_2
    move-wide/from16 v18, v24

    .line 228
    .local v18, "defaultDisclosureWidth":D
    move-wide/from16 v24, v18

    move-wide/from16 v20, v24

    .line 230
    .local v20, "disclosureWidth":D
    move/from16 v24, v17

    if-eqz v24, :cond_6

    .line 231
    move-object/from16 v24, v13

    if-eqz v24, :cond_3

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v24

    if-nez v24, :cond_4

    .line 232
    :cond_3
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->updateChildren()V

    .line 235
    :cond_4
    move-object/from16 v24, v13

    if-eqz v24, :cond_6

    .line 236
    move-object/from16 v24, v13

    move-wide/from16 v25, v10

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 237
    move-wide/from16 v24, v20

    move-wide/from16 v26, v18

    cmpl-double v24, v24, v26

    if-lez v24, :cond_5

    .line 238
    sget-object v24, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->maxDisclosureWidthMap:Ljava/util/Map;

    move-object/from16 v25, v12

    move-wide/from16 v26, v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 241
    :cond_5
    move-object/from16 v24, v13

    move-wide/from16 v25, v20

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 243
    .local v22, "ph":D
    move-object/from16 v24, v13

    move-wide/from16 v25, v20

    move-wide/from16 v27, v22

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/Node;->resize(DD)V

    .line 244
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    move-wide/from16 v30, v20

    move-wide/from16 v32, v22

    const-wide/16 v34, 0x0

    sget-object v36, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v37, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v24 .. v37}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 252
    .end local v22    # "ph":D
    :cond_6
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v24

    if-nez v24, :cond_a

    const/16 v24, 0x0

    :goto_3
    move/from16 v22, v24

    .line 253
    .local v22, "padding":I
    move-wide/from16 v24, v4

    move-wide/from16 v26, v20

    move/from16 v28, v22

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v4, v24

    .line 254
    move-wide/from16 v24, v8

    move-wide/from16 v26, v15

    move-wide/from16 v28, v20

    add-double v26, v26, v28

    move/from16 v28, v22

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v8, v24

    .line 258
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/TreeCell;

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TreeCell;->getGraphic()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v23, v24

    .line 259
    .local v23, "graphic":Ljavafx/scene/Node;
    move-object/from16 v24, v23

    if-eqz v24, :cond_7

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v25, v23

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 260
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v25, v23

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 263
    :cond_7
    move-object/from16 v24, v3

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move-wide/from16 v29, v8

    move-wide/from16 v31, v10

    invoke-virtual/range {v24 .. v32}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->layoutLabelInArea(DDDD)V

    .line 264
    goto/16 :goto_0

    .line 224
    .end local v17    # "disclosureVisible":Z
    .end local v18    # "defaultDisclosureWidth":D
    .end local v20    # "disclosureWidth":D
    .end local v22    # "padding":I
    .end local v23    # "graphic":Ljavafx/scene/Node;
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 227
    .restart local v17    # "disclosureVisible":Z
    :cond_9
    const-wide/high16 v24, 0x4032000000000000L    # 18.0

    goto/16 :goto_2

    .line 252
    .restart local v18    # "defaultDisclosureWidth":D
    .restart local v20    # "disclosureWidth":D
    :cond_a
    const/16 v24, 0x3

    goto :goto_3
.end method

.method public final setIndent(D)V
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->indentProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method protected updateChildren()V
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->updateChildren()V

    .line 198
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->updateDisclosureNode()V

    .line 199
    return-void
.end method
