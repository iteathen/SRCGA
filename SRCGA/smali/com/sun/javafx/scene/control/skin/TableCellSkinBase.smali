.class public abstract Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;
.super Lcom/sun/javafx/scene/control/skin/CellSkinBase;
.source "TableCellSkinBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/IndexedCell;",
        "B:",
        "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase",
        "<TC;>;>",
        "Lcom/sun/javafx/scene/control/skin/CellSkinBase",
        "<TC;TB;>;"
    }
.end annotation


# static fields
.field static final DEFER_TO_PARENT_PREF_WIDTH:Ljava/lang/String; = "deferToParentPrefWidth"


# instance fields
.field private columnWidthListener:Ljavafx/beans/InvalidationListener;

.field isDeferToParentForPrefWidth:Z

.field private weakColumnWidthListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/IndexedCell;Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TB;)V"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/IndexedCell;, "TC;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "TB;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;-><init>(Ljavafx/scene/control/Cell;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 65
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->isDeferToParentForPrefWidth:Z

    .line 112
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->columnWidthListener:Ljavafx/beans/InvalidationListener;

    .line 116
    move-object v3, v0

    new-instance v4, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->columnWidthListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v5, v6}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->weakColumnWidthListener:Ljavafx/beans/WeakInvalidationListener;

    .line 82
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->lambda$new$496(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$496(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v2}, Ljavafx/scene/control/IndexedCell;->requestLayout()V

    .line 114
    return-void
.end method


# virtual methods
.method protected abstract columnVisibleProperty()Ljavafx/beans/property/BooleanProperty;
.end method

.method protected abstract columnWidthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 152
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase<TC;TB;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->isDeferToParentForPrefWidth:Z

    if-eqz v12, :cond_0

    .line 153
    move-object v12, v1

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computePrefWidth(DDDDD)D

    move-result-wide v12

    move-wide v1, v12

    .line 155
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase<TC;TB;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase<TC;TB;>;"
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->columnWidthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->get()D

    move-result-wide v12

    move-wide v1, v12

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase<TC;TB;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->columnWidthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    move-object v1, v2

    .line 136
    .local v1, "columnWidthProperty":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 137
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->weakColumnWidthListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 140
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->dispose()V

    .line 141
    return-void
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 129
    const-string v2, "VISIBLE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/IndexedCell;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->columnVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/IndexedCell;->setVisible(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method protected init(Ljavafx/scene/control/IndexedCell;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/IndexedCell;, "TC;"
    new-instance v4, Ljavafx/scene/shape/Rectangle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljavafx/scene/shape/Rectangle;-><init>()V

    move-object v2, v4

    .line 87
    .local v2, "clip":Ljavafx/scene/shape/Rectangle;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/shape/Rectangle;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/IndexedCell;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 88
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/shape/Rectangle;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/IndexedCell;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 89
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/IndexedCell;->setClip(Ljavafx/scene/Node;)V

    .line 92
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->columnWidthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    move-object v3, v4

    .line 93
    .local v3, "columnWidthProperty":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 94
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->weakColumnWidthListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 97
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/IndexedCell;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    const-string v6, "VISIBLE"

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 99
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    const-string v5, "deferToParentPrefWidth"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->isDeferToParentForPrefWidth:Z

    .line 102
    :cond_1
    return-void
.end method

.method protected layoutChildren(DDDD)V
    .locals 21

    .prologue
    .line 148
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase<TC;TB;>;"
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/IndexedCell;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/IndexedCell;->getPadding()Ljavafx/geometry/Insets;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v18

    sub-double v16, v16, v18

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->layoutLabelInArea(DDDD)V

    .line 149
    return-void
.end method
