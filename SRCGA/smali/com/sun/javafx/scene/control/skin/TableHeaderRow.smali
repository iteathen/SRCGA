.class public Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
.super Ljavafx/scene/layout/StackPane;
.source "TableHeaderRow.java"


# static fields
.field private static final MENU_SEPARATOR:Ljava/lang/String;


# instance fields
.field private clip:Ljavafx/scene/shape/Rectangle;

.field private columnMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/control/TableColumnBase;",
            "Ljavafx/scene/control/CheckMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private columnPopupMenu:Ljavafx/scene/control/ContextMenu;

.field private final columnTextListener:Ljavafx/beans/InvalidationListener;

.field private cornerRegion:Ljavafx/scene/layout/Pane;

.field private dragHeader:Ljavafx/scene/layout/StackPane;

.field private final dragHeaderLabel:Ljavafx/scene/control/Label;

.field private filler:Ljavafx/scene/layout/Region;

.field private final flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

.field private final header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

.field private reordering:Ljavafx/beans/property/BooleanProperty;

.field private reorderingRegion:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

.field private scrollX:D

.field private final tableColumnsListener:Ljavafx/collections/ListChangeListener;

.field private tablePaddingListener:Ljavafx/beans/InvalidationListener;

.field private final tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

.field private tableWidth:D

.field private tableWidthListener:Ljavafx/beans/InvalidationListener;

.field private visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

.field private final weakColumnTextListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakTableColumnsListener:Ljavafx/collections/WeakListChangeListener;

.field private final weakTablePaddingListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakTableWidthListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "TableView.nestedColumnControlMenuSeparator"

    .line 66
    invoke-static {v0}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->MENU_SEPARATOR:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)V
    .locals 11

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 80
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnMenuItems:Ljava/util/Map;

    .line 98
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Label;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeaderLabel:Ljavafx/scene/control/Label;

    .line 125
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    const-string v8, "reordering"

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;-><init>(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->reordering:Ljavafx/beans/property/BooleanProperty;

    .line 237
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableWidthListener:Ljavafx/beans/InvalidationListener;

    .line 241
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tablePaddingListener:Ljavafx/beans/InvalidationListener;

    .line 245
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$3;-><init>(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    .line 252
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableColumnsListener:Ljavafx/collections/ListChangeListener;

    .line 258
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnTextListener:Ljavafx/beans/InvalidationListener;

    .line 266
    move-object v3, v0

    new-instance v4, Ljavafx/beans/WeakInvalidationListener;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableWidthListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v5, v6}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakTableWidthListener:Ljavafx/beans/WeakInvalidationListener;

    .line 269
    move-object v3, v0

    new-instance v4, Ljavafx/beans/WeakInvalidationListener;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tablePaddingListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v5, v6}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakTablePaddingListener:Ljavafx/beans/WeakInvalidationListener;

    .line 272
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 275
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableColumnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakTableColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 278
    move-object v3, v0

    new-instance v4, Ljavafx/beans/WeakInvalidationListener;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnTextListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v5, v6}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakColumnTextListener:Ljavafx/beans/WeakInvalidationListener;

    .line 149
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    .line 150
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    .line 152
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "column-header-background"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 155
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/Rectangle;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->clip:Ljavafx/scene/shape/Rectangle;

    .line 156
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->clip:Ljavafx/scene/shape/Rectangle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Rectangle;->setSmooth(Z)V

    .line 157
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->clip:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v3}, Ljavafx/scene/shape/Rectangle;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 158
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->clip:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setClip(Ljavafx/scene/Node;)V

    .line 161
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->updateTableWidth()V

    .line 162
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakTableWidthListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 163
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->paddingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakTablePaddingListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 164
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 167
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/ContextMenu;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljavafx/scene/control/ContextMenu;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnPopupMenu:Ljavafx/scene/control/ContextMenu;

    .line 168
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->updateTableColumnListeners(Ljava/util/List;Ljava/util/List;)V

    .line 169
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakTableColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 170
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakTableColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 173
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    .line 174
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 175
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "column-drag-header"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 176
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setManaged(Z)V

    .line 177
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeaderLabel:Ljavafx/scene/control/Label;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 180
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->createRootHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    .line 181
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setFocusTraversable(Z)V

    .line 182
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setTableHeaderRow(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V

    .line 186
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/Region;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->filler:Ljavafx/scene/layout/Region;

    .line 187
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->filler:Ljavafx/scene/layout/Region;

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "filler"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 191
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 196
    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v2, v3

    .line 197
    .local v2, "image":Ljavafx/scene/layout/StackPane;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setSnapToPixel(Z)V

    .line 198
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "show-hide-column-image"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 199
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;-><init>(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljavafx/scene/layout/StackPane;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    .line 209
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    invoke-virtual {v3}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "show-hide-columns-button"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 210
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    invoke-virtual {v3}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 211
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Pane;->setVisible(Z)V

    .line 212
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 216
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Pane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 226
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->filler:Ljavafx/scene/layout/Region;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->lambda$new$80(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->lambda$new$81(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->lambda$new$82(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->lambda$new$83(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->lambda$new$77(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->lambda$new$78(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->lambda$new$79(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private createMenuItem(Ljavafx/scene/control/TableColumnBase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnMenuItems:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/CheckMenuItem;

    move-object v2, v3

    .line 515
    .local v2, "item":Ljavafx/scene/control/CheckMenuItem;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 516
    new-instance v3, Ljavafx/scene/control/CheckMenuItem;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/control/CheckMenuItem;-><init>()V

    move-object v2, v3

    .line 517
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnMenuItems:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 521
    :cond_0
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getText(Ljava/lang/String;Ljavafx/scene/control/TableColumnBase;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/CheckMenuItem;->setText(Ljava/lang/String;)V

    .line 522
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakColumnTextListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 523
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/CheckMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 525
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnPopupMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 526
    return-void
.end method

.method private getLeafColumns(Ljavafx/scene/control/TableColumnBase;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 502
    .local v2, "leafColumns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TableColumnBase;

    move-object v4, v5

    .line 503
    .local v4, "_col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 508
    :goto_1
    goto :goto_0

    .line 506
    :cond_0
    move-object v5, v2

    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getLeafColumns(Ljavafx/scene/control/TableColumnBase;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_1

    .line 510
    .end local v4    # "_col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-object v0
.end method

.method private getText(Ljava/lang/String;Ljavafx/scene/control/TableColumnBase;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v5, v1

    move-object v3, v5

    .line 533
    .local v3, "s":Ljava/lang/String;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->getParentColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v5

    move-object v4, v5

    .line 534
    .local v4, "parentCol":Ljavafx/scene/control/TableColumnBase;
    :goto_0
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 535
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->isColumnVisibleInHeader(Ljavafx/scene/control/TableColumnBase;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->MENU_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 538
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->getParentColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 540
    :cond_1
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-object v0
.end method

.method private isColumnVisibleInHeader(Ljavafx/scene/control/TableColumnBase;Ljava/util/List;)Z
    .locals 9

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v2, p2

    .local v2, "columns":Ljava/util/List;
    move-object v6, v1

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 560
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    :goto_0
    return v0

    .line 550
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 551
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableColumnBase;

    move-object v4, v6

    .line 552
    .local v4, "column":Ljavafx/scene/control/TableColumnBase;
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 554
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 555
    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->isColumnVisibleInHeader(Ljavafx/scene/control/TableColumnBase;Ljava/util/List;)Z

    move-result v6

    move v5, v6

    .line 556
    .local v5, "isVisible":Z
    move v6, v5

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 550
    .end local v5    # "isVisible":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 560
    .end local v4    # "column":Ljavafx/scene/control/TableColumnBase;
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private static synthetic lambda$new$77(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->requestFocus()V

    .line 193
    return-void
.end method

.method private synthetic lambda$new$78(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Pane;->setVisible(Z)V

    .line 214
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->requestLayout()V

    .line 215
    return-void
.end method

.method private synthetic lambda$new$79(Ljavafx/scene/input/MouseEvent;)V
    .locals 10

    .prologue
    .line 218
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v2, p1

    .local v2, "me":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnPopupMenu:Ljavafx/scene/control/ContextMenu;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;Ljavafx/geometry/Side;DD)V

    .line 219
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 220
    return-void
.end method

.method private synthetic lambda$new$80(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->updateTableWidth()V

    .line 239
    return-void
.end method

.method private synthetic lambda$new$81(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->updateTableWidth()V

    .line 243
    return-void
.end method

.method private synthetic lambda$new$82(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->updateTableColumnListeners(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$83(Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v4, v1

    check-cast v4, Ljavafx/beans/property/StringProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/StringProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TableColumnBase;

    move-object v2, v4

    .line 260
    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnMenuItems:Ljava/util/Map;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/CheckMenuItem;

    move-object v3, v4

    .line 261
    .local v3, "menuItem":Ljavafx/scene/control/CheckMenuItem;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 262
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getText(Ljava/lang/String;Ljavafx/scene/control/TableColumnBase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/CheckMenuItem;->setText(Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void
.end method

.method private rebuildColumnMenu()V
    .locals 8

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnPopupMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v6}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->clear()V

    .line 486
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getTableSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    :goto_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableColumnBase;

    move-object v2, v6

    .line 488
    .local v2, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 489
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->createMenuItem(Ljavafx/scene/control/TableColumnBase;)V

    .line 496
    :cond_0
    goto :goto_0

    .line 491
    :cond_1
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getLeafColumns(Ljavafx/scene/control/TableColumnBase;)Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 492
    .local v3, "leafColumns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableColumnBase;

    move-object v5, v6

    .line 493
    .local v5, "_col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->createMenuItem(Ljavafx/scene/control/TableColumnBase;)V

    .line 494
    goto :goto_1

    .line 497
    .end local v2    # "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v3    # "leafColumns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    .end local v5    # "_col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_2
    return-void
.end method

.method private remove(Ljavafx/scene/control/TableColumnBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 481
    :goto_0
    return-void

    .line 468
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnMenuItems:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/CheckMenuItem;

    move-object v2, v5

    .line 469
    .local v2, "item":Ljavafx/scene/control/CheckMenuItem;
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 470
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->weakColumnTextListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 471
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/CheckMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->unbindBidirectional(Ljavafx/beans/property/Property;)V

    .line 473
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->columnPopupMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v5}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 476
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 477
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TableColumnBase;

    move-object v4, v5

    .line 478
    .local v4, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->remove(Ljavafx/scene/control/TableColumnBase;)V

    .line 479
    goto :goto_1

    .line 481
    .end local v4    # "tc":Ljavafx/scene/control/TableColumnBase;
    :cond_2
    goto :goto_0
.end method

.method private updateTableColumnListeners(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v2, p2

    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TableColumnBase;

    move-object v4, v5

    .line 459
    .local v4, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->remove(Ljavafx/scene/control/TableColumnBase;)V

    .line 460
    goto :goto_0

    .line 462
    .end local v4    # "tc":Ljavafx/scene/control/TableColumnBase;
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->rebuildColumnMenu()V

    .line 463
    return-void
.end method


# virtual methods
.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->computePrefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-wide v0
.end method

.method protected computePrefHeight(D)D
    .locals 11

    .prologue
    .line 333
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snappedTopInset()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->prefHeight(D)D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getHeight()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snappedBottomInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 7

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->prefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-wide v0
.end method

.method protected createRootHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    .locals 6

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/TableColumnBase;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-object v0
.end method

.method public getColumnHeaderFor(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)",
            "Lcom/sun/javafx/scene/control/skin/TableColumnHeader;"
        }
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v7, v1

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 431
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    :goto_0
    return-object v0

    .line 411
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 412
    .local v2, "columnChain":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v7, v2

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 414
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->getParentColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    move-object v3, v7

    .line 415
    .local v3, "parent":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :goto_1
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 416
    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 417
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->getParentColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    move-object v3, v7

    goto :goto_1

    .line 422
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getRootHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v7

    move-object v4, v7

    .line 423
    .local v4, "currentHeader":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "depth":I
    :goto_2
    move v7, v5

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 425
    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TableColumnBase;

    move-object v6, v7

    .line 429
    .local v6, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v7, v0

    move-object v8, v6

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getColumnHeaderFor(Ljavafx/scene/control/TableColumnBase;Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v7

    move-object v4, v7

    .line 423
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 431
    .end local v6    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_2
    move-object v7, v4

    move-object v0, v7

    goto :goto_0
.end method

.method public getColumnHeaderFor(Ljavafx/scene/control/TableColumnBase;Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;",
            "Lcom/sun/javafx/scene/control/skin/TableColumnHeader;",
            ")",
            "Lcom/sun/javafx/scene/control/skin/TableColumnHeader;"
        }
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v2, p2

    .local v2, "currentHeader":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v6, v2

    instance-of v6, v6, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    if-eqz v6, :cond_1

    .line 436
    move-object v6, v2

    check-cast v6, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v3, v6

    .line 438
    .local v3, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 439
    move-object v6, v3

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v5, v6

    .line 440
    .local v5, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 441
    move-object v6, v5

    move-object v0, v6

    .line 446
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    .end local v3    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    .end local v4    # "i":I
    .end local v5    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :goto_1
    return-object v0

    .line 438
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    .restart local v3    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    .restart local v4    # "i":I
    .restart local v5    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 446
    .end local v3    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    .end local v4    # "i":I
    .end local v5    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public getReorderingRegion()Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->reorderingRegion:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-object v0
.end method

.method public getRootHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    .locals 2

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-object v0
.end method

.method protected getTableSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase",
            "<******>;"
        }
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-object v0
.end method

.method public final isReordering()Z
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->reordering:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return v0
.end method

.method protected layoutChildren()V
    .locals 25

    .prologue
    .line 291
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->scrollX:D

    move-wide/from16 v16, v0

    move-wide/from16 v3, v16

    .line 292
    .local v3, "x":D
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object/from16 v17, v0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v5, v16

    .line 293
    .local v5, "headerWidth":D
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getHeight()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snappedTopInset()D

    move-result-wide v18

    sub-double v16, v16, v18

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snappedBottomInset()D

    move-result-wide v18

    sub-double v16, v16, v18

    move-wide/from16 v7, v16

    .line 294
    .local v7, "prefHeight":D
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v17

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v9, v16

    .line 297
    .local v9, "cornerWidth":D
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->header:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object/from16 v16, v0

    move-wide/from16 v17, v3

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snappedTopInset()D

    move-result-wide v19

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    invoke-virtual/range {v16 .. v24}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->resizeRelocate(DDDD)V

    .line 300
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v16

    move-object/from16 v11, v16

    .line 301
    .local v11, "control":Ljavafx/scene/control/Control;
    move-object/from16 v16, v11

    if-nez v16, :cond_0

    .line 302
    .line 315
    :goto_0
    return-void

    .line 305
    :cond_0
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v16

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 306
    .local v12, "controlInsets":D
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableWidth:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v5

    sub-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->filler:Ljavafx/scene/layout/Region;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v12

    sub-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 307
    .local v14, "fillerWidth":D
    move-wide/from16 v16, v14

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v18

    if-eqz v18, :cond_2

    move-wide/from16 v18, v9

    :goto_1
    sub-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 308
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->filler:Ljavafx/scene/layout/Region;

    move-object/from16 v16, v0

    move-wide/from16 v17, v14

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_3

    const/16 v17, 0x1

    :goto_2
    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/layout/Region;->setVisible(Z)V

    .line 309
    move-wide/from16 v16, v14

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_1

    .line 310
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->filler:Ljavafx/scene/layout/Region;

    move-object/from16 v16, v0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    add-double v17, v17, v19

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snappedTopInset()D

    move-result-wide v19

    move-wide/from16 v21, v14

    move-wide/from16 v23, v7

    invoke-virtual/range {v16 .. v24}, Ljavafx/scene/layout/Region;->resizeRelocate(DDDD)V

    .line 314
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->cornerRegion:Ljavafx/scene/layout/Pane;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableWidth:D

    move-wide/from16 v17, v0

    move-wide/from16 v19, v9

    sub-double v17, v17, v19

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snappedTopInset()D

    move-result-wide v19

    move-wide/from16 v21, v9

    move-wide/from16 v23, v7

    invoke-virtual/range {v16 .. v24}, Ljavafx/scene/layout/Pane;->resizeRelocate(DDDD)V

    .line 315
    goto/16 :goto_0

    .line 307
    :cond_2
    const-wide/16 v18, 0x0

    goto :goto_1

    .line 308
    :cond_3
    const/16 v17, 0x0

    goto :goto_2
.end method

.method public final reorderingProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->reordering:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    return-object v0
.end method

.method public setDragHeaderX(D)V
    .locals 7

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-wide v1, p1

    .local v1, "dragHeaderX":D
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 387
    return-void
.end method

.method public final setReordering(Z)V
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->reordering:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 359
    return-void
.end method

.method public setReorderingColumn(Ljavafx/scene/control/TableColumnBase;)V
    .locals 4

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, p1

    .local v1, "rc":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeaderLabel:Ljavafx/scene/control/Label;

    move-object v3, v1

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 375
    return-void

    .line 374
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setReorderingRegion(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)V
    .locals 8

    .prologue
    .line 378
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v2, p1

    .local v2, "reorderingRegion":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->reorderingRegion:Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    .line 380
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 381
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getWidth()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->dragHeader:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 383
    :cond_0
    return-void
.end method

.method protected updateScrollX()V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getValue()D

    move-result-wide v2

    neg-double v2, v2

    :goto_0
    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->scrollX:D

    .line 349
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->requestLayout()V

    .line 354
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->layout()V

    .line 355
    return-void

    .line 348
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected updateTableWidth()V
    .locals 10

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableSkin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    move-object v1, v5

    .line 398
    .local v1, "c":Ljavafx/scene/control/Control;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 399
    move-object v5, v0

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableWidth:D

    .line 406
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->clip:Ljavafx/scene/shape/Rectangle;

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 407
    return-void

    .line 401
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Control;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    :goto_1
    move-object v2, v5

    .line 402
    .local v2, "insets":Ljavafx/geometry/Insets;
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snapSize(D)D

    move-result-wide v5

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snapSize(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    move-wide v3, v5

    .line 403
    .local v3, "padding":D
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/Control;->getWidth()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->snapSize(D)D

    move-result-wide v6

    move-wide v8, v3

    sub-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->tableWidth:D

    goto :goto_0

    .line 401
    .end local v2    # "insets":Ljavafx/geometry/Insets;
    .end local v3    # "padding":D
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Control;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v5

    goto :goto_1
.end method
