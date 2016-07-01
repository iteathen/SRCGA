.class public Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
.super Ljavafx/scene/layout/Region;
.source "TableColumnHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;
    }
.end annotation


# static fields
.field static final DEFAULT_COLUMN_WIDTH:D = 80.0

.field private static final PSEUDO_CLASS_LAST_VISIBLE:Ljavafx/css/PseudoClass;

.field private static final contextMenuRequestedHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final mouseDraggedHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final mousePressedHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final mouseReleasedHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arrow:Ljavafx/scene/layout/Region;

.field private autoSizeComplete:Z

.field protected final changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

.field private final column:Ljavafx/scene/control/TableColumnBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;"
        }
    .end annotation
.end field

.field columnIndex:I

.field protected final columnReorderLine:Ljavafx/scene/layout/Region;

.field private dragOffset:D

.field isLastVisibleColumn:Z

.field private isSizeDirty:Z

.field private isSortColumn:Z

.field label:Ljavafx/scene/control/Label;

.field private nestedColumnHeader:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

.field private newColumnPos:I

.field private parentHeader:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

.field private size:Ljavafx/beans/property/DoubleProperty;

.field private final skin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase",
            "<*****",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;"
        }
    .end annotation
.end field

.field private sortArrow:Ljavafx/scene/Node;

.field private sortOrderDots:Ljavafx/scene/layout/HBox;

.field private sortOrderLabel:Ljavafx/scene/control/Label;

.field private sortOrderListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;"
        }
    .end annotation
.end field

.field sortPos:I

.field private styleClassListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

.field private visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;"
        }
    .end annotation
.end field

.field private weakSortOrderListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final weakStyleClassListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$$Lambda$6;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->mousePressedHandler:Ljavafx/event/EventHandler;

    .line 223
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$$Lambda$7;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->mouseDraggedHandler:Ljavafx/event/EventHandler;

    .line 232
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$$Lambda$8;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->mouseReleasedHandler:Ljavafx/event/EventHandler;

    .line 248
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$$Lambda$9;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->contextMenuRequestedHandler:Ljavafx/event/EventHandler;

    .line 976
    const-string v0, "last-visible"

    .line 977
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->PSEUDO_CLASS_LAST_VISIBLE:Ljavafx/css/PseudoClass;

    .line 976
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/TableColumnBase;)V
    .locals 8

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
    move-object v2, p2

    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/Region;-><init>()V

    .line 95
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->autoSizeComplete:Z

    .line 108
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortPos:I

    .line 115
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSizeDirty:Z

    .line 117
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isLastVisibleColumn:Z

    .line 120
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnIndex:I

    .line 190
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderListener:Ljavafx/collections/ListChangeListener;

    .line 194
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    .line 199
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->styleClassListener:Ljavafx/collections/ListChangeListener;

    .line 203
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->weakSortOrderListener:Ljavafx/collections/WeakListChangeListener;

    .line 205
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 207
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->styleClassListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->weakStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    .line 138
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->skin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    .line 139
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    .line 140
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getColumnReorderLine()Ljavafx/scene/layout/Region;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnReorderLine:Ljavafx/scene/layout/Region;

    .line 142
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setFocusTraversable(Z)V

    .line 144
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateColumnIndex()V

    .line 145
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->initUI()V

    .line 148
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;-><init>(Ljavafx/util/Callback;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    .line 152
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    const-string v5, "SCENE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    if-eqz v3, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 155
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateSortPosition()V

    .line 156
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->weakSortOrderListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 157
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 160
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    if-eqz v3, :cond_1

    .line 161
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    const-string v5, "TABLE_COLUMN_ID"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 162
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    const-string v5, "TABLE_COLUMN_STYLE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 163
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    const-string v5, "TABLE_COLUMN_WIDTH"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 164
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "TABLE_COLUMN_VISIBLE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 165
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->sortNodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "TABLE_COLUMN_SORT_NODE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 166
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->sortableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "TABLE_COLUMN_SORTABLE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    const-string v5, "TABLE_COLUMN_TEXT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 168
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "TABLE_COLUMN_GRAPHIC"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 170
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->weakStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 172
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setId(Ljava/lang/String;)V

    .line 173
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setStyle(Ljava/lang/String;)V

    .line 174
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateStyleClass()V

    .line 176
    move-object v3, v0

    sget-object v4, Ljavafx/scene/AccessibleRole;->TABLE_COLUMN:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 178
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->size:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->lambda$new$50(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->lambda$new$51(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->lambda$new$52(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->lambda$new$49(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->lambda$initUI$57(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->lambda$static$53(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$6(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->lambda$static$54(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$7(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->lambda$static$55(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$8(Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->lambda$static$56(Ljavafx/scene/input/ContextMenuEvent;)V

    return-void
.end method

.method private doColumnAutoSize(Ljavafx/scene/control/TableColumnBase;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    .line 527
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v2, p1

    .local v2, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move v3, p2

    .local v3, "cellsToMeasure":I
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getPrefWidth()D

    move-result-wide v6

    move-wide v4, v6

    .line 530
    .local v4, "prefWidth":D
    move-wide v6, v4

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 531
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v6

    move-object v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->resizeColumnToFitContent(Ljavafx/scene/control/TableColumnBase;I)V

    .line 533
    :cond_0
    return-void
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
    .line 1019
    # getter for: Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getColumns(Ljavafx/scene/control/TableColumnBase;)Ljavafx/collections/ObservableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase;",
            ")",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getParentColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 701
    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    .line 702
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0

    .line 701
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    move-object v2, v1

    .line 702
    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getParentColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    goto :goto_0
.end method

.method private getIndex(Ljavafx/scene/control/TableColumnBase;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v6, v1

    if-nez v6, :cond_0

    const/4 v6, -0x1

    move v0, v6

    .line 719
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :goto_0
    return v0

    .line 708
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getColumns(Ljavafx/scene/control/TableColumnBase;)Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v2, v6

    .line 710
    .local v2, "columns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    const/4 v6, -0x1

    move v3, v6

    .line 711
    .local v3, "index":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move-object v7, v2

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 712
    move-object v6, v2

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableColumnBase;

    move-object v5, v6

    .line 713
    .local v5, "_column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v6

    if-nez v6, :cond_2

    .line 711
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 715
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 716
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 719
    .end local v5    # "_column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_3
    move v6, v3

    move v0, v6

    goto :goto_0
.end method

.method private getSize()D
    .locals 4

    .prologue
    .line 269
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->size:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->size:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method private getSortPosition()I
    .locals 7

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    if-nez v5, :cond_0

    .line 806
    const/4 v5, -0x1

    move v0, v5

    .line 821
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .local v1, "sortOrder":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase;>;"
    .local v2, "pos":I
    .local v3, "i":I
    :goto_0
    return v0

    .line 809
    .end local v1    # "sortOrder":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase;>;"
    .end local v2    # "pos":I
    .end local v3    # "i":I
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getVisibleSortOrderColumns()Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 810
    .restart local v1    # "sortOrder":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase;>;"
    const/4 v5, 0x0

    move v2, v5

    .line 811
    .restart local v2    # "pos":I
    const/4 v5, 0x0

    move v3, v5

    .restart local v3    # "i":I
    :goto_1
    move v5, v3

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 812
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TableColumnBase;

    move-object v4, v5

    .line 814
    .local v4, "_tc":Ljavafx/scene/control/TableColumnBase;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 815
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 818
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 811
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 821
    .end local v4    # "_tc":Ljavafx/scene/control/TableColumnBase;
    :cond_2
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method private getVisibleSortOrderColumnCount()I
    .locals 2

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getVisibleSortOrderColumns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return v0
.end method

.method private getVisibleSortOrderColumns()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v1, v5

    .line 827
    .local v1, "sortOrder":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TableColumnBase<**>;>;"
    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 828
    .local v2, "visibleSortOrderColumns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase;>;"
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 829
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TableColumnBase;

    move-object v4, v5

    .line 830
    .local v4, "_tc":Ljavafx/scene/control/TableColumnBase;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->isSortable()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 831
    .line 828
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 834
    :cond_1
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 837
    .end local v4    # "_tc":Ljavafx/scene/control/TableColumnBase;
    :cond_2
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method private initUI()V
    .locals 5

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    if-nez v1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 506
    :cond_0
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->mousePressedHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 507
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->mouseDraggedHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 508
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$$Lambda$5;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setOnDragDetected(Ljavafx/event/EventHandler;)V

    .line 509
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->contextMenuRequestedHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setOnContextMenuRequested(Ljavafx/event/EventHandler;)V

    .line 510
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->mouseReleasedHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 513
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Label;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    .line 514
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 515
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getGraphic()Ljavafx/scene/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setGraphic(Ljavafx/scene/Node;)V

    .line 516
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setVisible(Z)V

    .line 520
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateSortGrid()V

    .line 524
    :cond_1
    goto :goto_0
.end method

.method private isColumnReorderingEnabled()Z
    .locals 3

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    sget-boolean v1, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSortingEnabled()Z
    .locals 2

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return v0
.end method

.method private static synthetic lambda$initUI$57(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "event":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/MouseEvent;->consume()V

    return-void
.end method

.method private synthetic lambda$new$49(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->handlePropertyChanged(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method private synthetic lambda$new$50(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateSortPosition()V

    .line 192
    return-void
.end method

.method private synthetic lambda$new$51(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateColumnIndex()V

    .line 196
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateSortPosition()V

    .line 197
    return-void
.end method

.method private synthetic lambda$new$52(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateStyleClass()V

    .line 201
    return-void
.end method

.method private static synthetic lambda$static$53(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 211
    move-object v1, p0

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v2, v3

    .line 215
    .local v2, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->requestFocus()V

    .line 217
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isColumnReorderingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnReorderingStarted(D)V

    .line 220
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 221
    return-void
.end method

.method private static synthetic lambda$static$54(Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    .prologue
    .line 224
    move-object v1, p0

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v2, v3

    .line 226
    .local v2, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isColumnReorderingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnReordering(DD)V

    .line 229
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 230
    return-void
.end method

.method private static synthetic lambda$static$55(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "me":Ljavafx/scene/input/MouseEvent;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isPopupTrigger()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    :goto_0
    return-void

    .line 235
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v1, v4

    .line 236
    .local v1, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    move-object v2, v4

    .line 238
    .local v2, "tableColumn":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    move-object v3, v4

    .line 239
    .local v3, "menu":Ljavafx/scene/control/ContextMenu;
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->isReordering()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isColumnReorderingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnReorderingComplete()V

    .line 245
    :cond_2
    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 246
    goto :goto_0

    .line 242
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isStillSincePress()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortColumn(Z)V

    goto :goto_1
.end method

.method private static synthetic lambda$static$56(Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 10

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "me":Ljavafx/scene/input/ContextMenuEvent;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object v1, v4

    .line 250
    .local v1, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    move-object v2, v4

    .line 252
    .local v2, "tableColumn":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    move-object v3, v4

    .line 253
    .local v3, "menu":Ljavafx/scene/control/ContextMenu;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 254
    move-object v4, v3

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/input/ContextMenuEvent;->getScreenX()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/input/ContextMenuEvent;->getScreenY()D

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;DD)V

    .line 255
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->consume()V

    .line 257
    :cond_0
    return-void
.end method

.method private sizeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 272
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->size:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 273
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$1;-><init>(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->size:Ljavafx/beans/property/DoubleProperty;

    .line 301
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->size:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v1
.end method

.method private sortColumn(Z)V
    .locals 10

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move v1, p1

    .local v1, "addColumn":Z
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortingEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 798
    :goto_0
    return-void

    .line 741
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getComparator()Ljava/util/Comparator;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->isSortable()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    goto :goto_0

    .line 745
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v2, v4

    .line 748
    .local v2, "sortOrder":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TableColumnBase<**>;>;"
    move v4, v1

    if-eqz v4, :cond_6

    .line 749
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortColumn:Z

    if-nez v4, :cond_3

    .line 750
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    sget-object v5, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->setSortType(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/TableColumn$SortType;)V

    .line 751
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 798
    :goto_1
    goto :goto_0

    .line 752
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->isAscending(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 753
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    sget-object v5, Ljavafx/scene/control/TableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->setSortType(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/TableColumn$SortType;)V

    goto :goto_1

    .line 755
    :cond_4
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 756
    .local v3, "i":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 757
    move-object v4, v2

    move v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 759
    :cond_5
    goto :goto_1

    .line 763
    .end local v3    # "i":I
    :cond_6
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortColumn:Z

    if-eqz v4, :cond_8

    move-object v4, v2

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 769
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->isAscending(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 770
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    sget-object v5, Ljavafx/scene/control/TableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->setSortType(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/TableColumn$SortType;)V

    goto :goto_1

    .line 773
    :cond_7
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 775
    :cond_8
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortColumn:Z

    if-eqz v4, :cond_b

    .line 779
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->isAscending(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 780
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    sget-object v5, Ljavafx/scene/control/TableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->setSortType(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/TableColumn$SortType;)V

    .line 788
    :cond_9
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 789
    .local v3, "sortOrderCopy":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 790
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 791
    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/scene/control/TableColumnBase;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 792
    goto/16 :goto_1

    .line 781
    .end local v3    # "sortOrderCopy":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    :cond_a
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->isDescending(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 782
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    sget-object v5, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->setSortType(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/TableColumn$SortType;)V

    goto :goto_2

    .line 794
    :cond_b
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    sget-object v5, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->setSortType(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/TableColumn$SortType;)V

    .line 795
    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/scene/control/TableColumnBase;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1
.end method

.method private updateAllHeaders(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)V
    .locals 7

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    if-eqz v4, :cond_1

    .line 446
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v2, v4

    .line 447
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 448
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateAllHeaders(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)V

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .line 453
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/TableColumnHeader;>;"
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 451
    :cond_1
    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateSortPosition()V

    goto :goto_1
.end method

.method private updateColumnIndex()V
    .locals 7

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v3

    move-object v1, v3

    .line 725
    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    move-object v2, v3

    .line 726
    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_0
    iput v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnIndex:I

    .line 730
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnIndex:I

    move-object v5, v0

    .line 732
    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isLastVisibleColumn:Z

    .line 733
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->PSEUDO_CLASS_LAST_VISIBLE:Ljavafx/css/PseudoClass;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isLastVisibleColumn:Z

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 734
    return-void

    .line 726
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I

    move-result v4

    goto :goto_0

    .line 732
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateScene()V
    .locals 6

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    const/16 v2, 0x1e

    move v1, v2

    .line 470
    .local v1, "n":I
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->autoSizeComplete:Z

    if-nez v2, :cond_2

    .line 471
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    if-nez v2, :cond_1

    .line 472
    .line 477
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->doColumnAutoSize(Ljavafx/scene/control/TableColumnBase;I)V

    .line 475
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->autoSizeComplete:Z

    .line 477
    :cond_2
    goto :goto_0
.end method

.method private updateSortGrid()V
    .locals 21

    .prologue
    .line 542
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v9, v0

    instance-of v9, v9, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    if-eqz v9, :cond_0

    .line 633
    :goto_0
    return-void

    .line 544
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->clear()V

    .line 545
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 548
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortingEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortPos:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortColumn:Z

    .line 551
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortColumn:Z

    if-nez v9, :cond_4

    .line 552
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    if-eqz v9, :cond_2

    .line 553
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 555
    :cond_2
    goto :goto_0

    .line 550
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 559
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->skin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I

    move-result v9

    move v1, v9

    .line 560
    .local v1, "visibleLeafIndex":I
    move v9, v1

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    goto :goto_0

    .line 562
    :cond_5
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getVisibleSortOrderColumnCount()I

    move-result v9

    move v2, v9

    .line 563
    .local v2, "sortColumnCount":I
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortPos:I

    const/4 v10, 0x3

    if-gt v9, v10, :cond_7

    move v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_7

    const/4 v9, 0x1

    :goto_2
    move v3, v9

    .line 565
    .local v3, "showSortOrderDots":Z
    const/4 v9, 0x0

    move-object v4, v9

    .line 566
    .local v4, "_sortArrow":Ljavafx/scene/Node;
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/control/TableColumnBase;->getSortNode()Ljavafx/scene/Node;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 567
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/control/TableColumnBase;->getSortNode()Ljavafx/scene/Node;

    move-result-object v9

    move-object v4, v9

    .line 568
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v4

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 627
    :goto_3
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    .line 628
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    if-eqz v9, :cond_6

    .line 629
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortColumn:Z

    invoke-virtual {v9, v10}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 632
    :cond_6
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->requestLayout()V

    .line 633
    goto/16 :goto_0

    .line 563
    .end local v3    # "showSortOrderDots":Z
    .end local v4    # "_sortArrow":Ljavafx/scene/Node;
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 570
    .restart local v3    # "showSortOrderDots":Z
    .restart local v4    # "_sortArrow":Ljavafx/scene/Node;
    :cond_8
    new-instance v9, Ljavafx/scene/layout/GridPane;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    invoke-direct {v10}, Ljavafx/scene/layout/GridPane;-><init>()V

    move-object v5, v9

    .line 571
    .local v5, "sortArrowGrid":Ljavafx/scene/layout/GridPane;
    move-object v9, v5

    move-object v4, v9

    .line 572
    move-object v9, v5

    new-instance v10, Ljavafx/geometry/Insets;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v11 .. v19}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/GridPane;->setPadding(Ljavafx/geometry/Insets;)V

    .line 573
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v5

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 576
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    if-nez v9, :cond_9

    .line 577
    move-object v9, v0

    new-instance v10, Ljavafx/scene/layout/Region;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    .line 578
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    invoke-virtual {v9}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x0

    const-string v13, "arrow"

    aput-object v13, v11, v12

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v9

    .line 579
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/Region;->setVisible(Z)V

    .line 580
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->isAscending(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-wide v10, 0x4066800000000000L    # 180.0

    :goto_4
    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/Region;->setRotate(D)V

    .line 581
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->getSortTypeProperty(Ljavafx/scene/control/TableColumnBase;)Ljavafx/beans/value/ObservableValue;

    move-result-object v10

    const-string v11, "TABLE_COLUMN_SORT_TYPE"

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 584
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSortColumn:Z

    invoke-virtual {v9, v10}, Ljavafx/scene/layout/Region;->setVisible(Z)V

    .line 586
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortPos:I

    const/4 v10, 0x2

    if-le v9, v10, :cond_d

    .line 587
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderLabel:Ljavafx/scene/control/Label;

    if-nez v9, :cond_a

    .line 589
    move-object v9, v0

    new-instance v10, Ljavafx/scene/control/Label;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderLabel:Ljavafx/scene/control/Label;

    .line 590
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v9}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v9

    const-string v10, "sort-order"

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 595
    :cond_a
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderLabel:Ljavafx/scene/control/Label;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortPos:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 596
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderLabel:Ljavafx/scene/control/Label;

    move v10, v2

    const/4 v11, 0x1

    if-le v10, v11, :cond_c

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v9, v10}, Ljavafx/scene/control/Label;->setVisible(Z)V

    .line 599
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 600
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    sget-object v10, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 601
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    sget-object v10, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setVgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 602
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderLabel:Ljavafx/scene/control/Label;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    goto/16 :goto_3

    .line 580
    :cond_b
    const-wide/16 v10, 0x0

    goto/16 :goto_4

    .line 596
    :cond_c
    const/4 v10, 0x0

    goto :goto_5

    .line 603
    :cond_d
    move v9, v3

    if-eqz v9, :cond_11

    .line 604
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderDots:Ljavafx/scene/layout/HBox;

    if-nez v9, :cond_e

    .line 605
    move-object v9, v0

    new-instance v10, Ljavafx/scene/layout/HBox;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13}, Ljavafx/scene/layout/HBox;-><init>(D)V

    iput-object v10, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderDots:Ljavafx/scene/layout/HBox;

    .line 606
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderDots:Ljavafx/scene/layout/HBox;

    invoke-virtual {v9}, Ljavafx/scene/layout/HBox;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v9

    const-string v10, "sort-order-dots-container"

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 610
    :cond_e
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->isAscending(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v9

    move v6, v9

    .line 611
    .local v6, "isAscending":Z
    move v9, v6

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    :goto_6
    move v7, v9

    .line 612
    .local v7, "arrowRow":I
    move v9, v6

    if-eqz v9, :cond_10

    const/4 v9, 0x2

    :goto_7
    move v8, v9

    .line 614
    .local v8, "dotsRow":I
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    const/4 v11, 0x1

    move v12, v7

    invoke-virtual {v9, v10, v11, v12}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 615
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    sget-object v10, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setHalignment(Ljavafx/scene/Node;Ljavafx/geometry/HPos;)V

    .line 616
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderDots:Ljavafx/scene/layout/HBox;

    const/4 v11, 0x1

    move v12, v8

    invoke-virtual {v9, v10, v11, v12}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 618
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortPos:I

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateSortOrderDots(I)V

    .line 619
    goto/16 :goto_3

    .line 611
    .end local v7    # "arrowRow":I
    .end local v8    # "dotsRow":I
    :cond_f
    const/4 v9, 0x2

    goto :goto_6

    .line 612
    .restart local v7    # "arrowRow":I
    :cond_10
    const/4 v9, 0x1

    goto :goto_7

    .line 621
    .end local v6    # "isAscending":Z
    .end local v7    # "arrowRow":I
    :cond_11
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 622
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    sget-object v10, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 623
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    sget-object v10, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-static {v9, v10}, Ljavafx/scene/layout/GridPane;->setVgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    goto/16 :goto_3
.end method

.method private updateSortOrderDots(I)V
    .locals 24

    .prologue
    .line 636
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move/from16 v1, p1

    .local v1, "sortPos":I
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v12

    move-wide v2, v12

    .line 638
    .local v2, "arrowWidth":D
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderDots:Ljavafx/scene/layout/HBox;

    invoke-virtual {v12}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->clear()V

    .line 640
    const/4 v12, 0x0

    move v4, v12

    .local v4, "i":I
    :goto_0
    move v12, v4

    move v13, v1

    if-gt v12, v13, :cond_4

    .line 641
    new-instance v12, Ljavafx/scene/layout/Region;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    invoke-direct {v13}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v5, v12

    .line 642
    .local v5, "r":Ljavafx/scene/layout/Region;
    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v12

    const-string v13, "sort-order-dot"

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 644
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v12}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->getSortTypeName(Ljavafx/scene/control/TableColumnBase;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 645
    .local v6, "sortTypeName":Ljava/lang/String;
    move-object v12, v6

    if-eqz v12, :cond_0

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 646
    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v13, v6

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 649
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderDots:Ljavafx/scene/layout/HBox;

    invoke-virtual {v12}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v13, v5

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 653
    move v12, v4

    move v13, v1

    if-ge v12, v13, :cond_1

    .line 654
    new-instance v12, Ljavafx/scene/layout/Region;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    invoke-direct {v13}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v7, v12

    .line 655
    .local v7, "spacer":Ljavafx/scene/layout/Region;
    move v12, v1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide v8, v12

    .line 656
    .local v8, "rp":D
    move v12, v1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_2
    move-wide v10, v12

    .line 657
    .local v10, "lp":D
    move-object v12, v7

    new-instance v13, Ljavafx/geometry/Insets;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v8

    const-wide/16 v19, 0x0

    move-wide/from16 v21, v10

    invoke-direct/range {v14 .. v22}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    invoke-virtual {v12, v13}, Ljavafx/scene/layout/Region;->setPadding(Ljavafx/geometry/Insets;)V

    .line 658
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderDots:Ljavafx/scene/layout/HBox;

    invoke-virtual {v12}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v13, v7

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 640
    .end local v7    # "spacer":Ljavafx/scene/layout/Region;
    .end local v8    # "rp":D
    .end local v10    # "lp":D
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 655
    .restart local v7    # "spacer":Ljavafx/scene/layout/Region;
    :cond_2
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 656
    .restart local v8    # "rp":D
    :cond_3
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 662
    .end local v5    # "r":Ljavafx/scene/layout/Region;
    .end local v6    # "sortTypeName":Ljava/lang/String;
    .end local v7    # "spacer":Ljavafx/scene/layout/Region;
    .end local v8    # "rp":D
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderDots:Ljavafx/scene/layout/HBox;

    sget-object v13, Ljavafx/geometry/Pos;->TOP_CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v12, v13}, Ljavafx/scene/layout/HBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 663
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortOrderDots:Ljavafx/scene/layout/HBox;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/HBox;->setMaxWidth(D)V

    .line 664
    return-void
.end method

.method private updateSortPosition()V
    .locals 3

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->isSortable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    iput v2, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortPos:I

    .line 537
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateSortGrid()V

    .line 538
    return-void

    .line 536
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getSortPosition()I

    move-result v2

    goto :goto_0
.end method

.method private updateStyleClass()V
    .locals 7

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "column-header"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 459
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 460
    return-void
.end method


# virtual methods
.method columnReordering(DD)V
    .locals 31

    .prologue
    .line 870
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-wide/from16 v3, p1

    .local v3, "sceneX":D
    move-wide/from16 v5, p3

    .local v5, "sceneY":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TableColumnBase;->impl_isReorderable()Z

    move-result v24

    if-nez v24, :cond_0

    .line 947
    :goto_0
    return-void

    .line 877
    :cond_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setReordering(Z)V

    .line 881
    const/16 v24, 0x0

    move-object/from16 v7, v24

    .line 885
    .local v7, "hoverHeader":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getParentHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v24

    move-wide/from16 v25, v3

    move-wide/from16 v27, v5

    invoke-virtual/range {v24 .. v28}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->sceneToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 888
    .local v8, "x":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v24

    move-wide/from16 v25, v3

    move-wide/from16 v27, v5

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/control/Control;->sceneToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v24

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->dragOffset:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 889
    .local v10, "dragX":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v24

    move-wide/from16 v25, v10

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setDragHeaderX(D)V

    .line 891
    const-wide/16 v24, 0x0

    move-wide/from16 v12, v24

    .line 892
    .local v12, "startX":D
    const-wide/16 v24, 0x0

    move-wide/from16 v14, v24

    .line 893
    .local v14, "endX":D
    const-wide/16 v24, 0x0

    move-wide/from16 v16, v24

    .line 894
    .local v16, "headersWidth":D
    move-object/from16 v24, v2

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    .line 895
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getParentHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumnHeaders()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v18, v24

    :goto_1
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-object/from16 v19, v24

    .line 896
    .local v19, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isVisible()Z

    move-result v24

    if-nez v24, :cond_1

    goto :goto_1

    .line 898
    :cond_1
    move-object/from16 v24, v19

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->prefWidth(D)D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 899
    .local v20, "headerWidth":D
    move-wide/from16 v24, v16

    move-wide/from16 v26, v20

    add-double v24, v24, v26

    move-wide/from16 v16, v24

    .line 901
    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 902
    move-wide/from16 v24, v12

    move-wide/from16 v26, v20

    add-double v24, v24, v26

    move-wide/from16 v14, v24

    .line 904
    move-wide/from16 v24, v8

    move-wide/from16 v26, v12

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_3

    move-wide/from16 v24, v8

    move-wide/from16 v26, v14

    cmpg-double v24, v24, v26

    if-gez v24, :cond_3

    .line 905
    move-object/from16 v24, v19

    move-object/from16 v7, v24

    .line 916
    .end local v19    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .end local v20    # "headerWidth":D
    :cond_2
    move-object/from16 v24, v7

    if-nez v24, :cond_5

    .line 917
    move-object/from16 v24, v2

    move-wide/from16 v25, v8

    move-wide/from16 v27, v16

    cmpl-double v25, v25, v27

    if-lez v25, :cond_4

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getParentHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljavafx/collections/ObservableList;->size()I

    move-result v25

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    :goto_2
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    .line 918
    goto/16 :goto_0

    .line 908
    .restart local v19    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .restart local v20    # "headerWidth":D
    :cond_3
    move-object/from16 v24, v2

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    move/from16 v25, v0

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    .line 909
    goto/16 :goto_1

    .line 917
    .end local v19    # "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .end local v20    # "headerWidth":D
    :cond_4
    const/16 v25, 0x0

    goto :goto_2

    .line 924
    :cond_5
    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    move-wide/from16 v28, v12

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v18, v24

    .line 925
    .local v18, "midPoint":D
    move-wide/from16 v24, v8

    move-wide/from16 v26, v18

    cmpg-double v24, v24, v26

    if-gtz v24, :cond_7

    const/16 v24, 0x1

    :goto_3
    move/from16 v20, v24

    .line 929
    .local v20, "beforeMidPoint":Z
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getIndex(Ljavafx/scene/control/TableColumnBase;)I

    move-result v24

    move/from16 v21, v24

    .line 930
    .local v21, "currentPos":I
    move-object/from16 v24, v2

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    move/from16 v26, v0

    move/from16 v27, v21

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    move/from16 v26, v20

    if-eqz v26, :cond_8

    const/16 v26, -0x1

    :goto_4
    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    .line 933
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v24

    move-object/from16 v25, v7

    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->sceneToLocal(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 934
    .local v22, "lineX":D
    move-wide/from16 v24, v22

    move/from16 v26, v20

    if-eqz v26, :cond_a

    const-wide/16 v26, 0x0

    :goto_5
    add-double v24, v24, v26

    move-wide/from16 v22, v24

    .line 936
    move-wide/from16 v24, v22

    const-wide/high16 v26, -0x4020000000000000L    # -0.5

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_6

    move-wide/from16 v24, v22

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/Control;->getWidth()D

    move-result-wide v26

    cmpg-double v24, v24, v26

    if-gtz v24, :cond_6

    .line 937
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnReorderLine:Ljavafx/scene/layout/Region;

    move-object/from16 v24, v0

    move-wide/from16 v25, v22

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/Region;->setTranslateX(D)V

    .line 943
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnReorderLine:Ljavafx/scene/layout/Region;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/layout/Region;->setVisible(Z)V

    .line 946
    :cond_6
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setReordering(Z)V

    .line 947
    goto/16 :goto_0

    .line 925
    .end local v20    # "beforeMidPoint":Z
    .end local v21    # "currentPos":I
    .end local v22    # "lineX":D
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 930
    .restart local v20    # "beforeMidPoint":Z
    .restart local v21    # "currentPos":I
    :cond_8
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    move/from16 v26, v0

    move/from16 v27, v21

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    move/from16 v26, v20

    if-nez v26, :cond_9

    const/16 v26, 0x1

    goto/16 :goto_4

    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 934
    .restart local v22    # "lineX":D
    :cond_a
    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getWidth()D

    move-result-wide v26

    goto :goto_5
.end method

.method columnReorderingComplete()V
    .locals 4

    .prologue
    .line 951
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumnBase;->impl_isReorderable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    :goto_0
    return-void

    .line 954
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->moveColumn(Ljavafx/scene/control/TableColumnBase;I)V

    .line 957
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnReorderLine:Ljavafx/scene/layout/Region;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/layout/Region;->setTranslateX(D)V

    .line 958
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnReorderLine:Ljavafx/scene/layout/Region;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/layout/Region;->setLayoutX(D)V

    .line 959
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->newColumnPos:I

    .line 961
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setReordering(Z)V

    .line 962
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->columnReorderLine:Ljavafx/scene/layout/Region;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/Region;->setVisible(Z)V

    .line 963
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setReorderingColumn(Ljavafx/scene/control/TableColumnBase;)V

    .line 964
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setReorderingRegion(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)V

    .line 965
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->dragOffset:D

    .line 966
    goto :goto_0
.end method

.method columnReorderingStarted(D)V
    .locals 7

    .prologue
    .line 857
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-wide v1, p1

    .local v1, "dragOffset":D
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->impl_isReorderable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 866
    :goto_0
    return-void

    .line 861
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->dragOffset:D

    .line 864
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setReorderingColumn(Ljavafx/scene/control/TableColumnBase;)V

    .line 865
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setReorderingRegion(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)V

    .line 866
    goto :goto_0
.end method

.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 421
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/Label;->minHeight(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method protected computePrefHeight(D)D
    .locals 9

    .prologue
    .line 426
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 427
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getSize()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method protected computePrefWidth(D)D
    .locals 9

    .prologue
    .line 404
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getNestedColumnHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 405
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getNestedColumnHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v6

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->prefWidth(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 407
    .local v4, "width":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    if-eqz v6, :cond_0

    .line 408
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/TableColumnBase;->impl_setWidth(D)V

    .line 411
    :cond_0
    move-wide v6, v4

    move-wide v1, v6

    .line 416
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .end local v4    # "width":D
    :goto_0
    return-wide v1

    .line 412
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    if-eqz v6, :cond_2

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 413
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 416
    :cond_2
    const-wide/16 v6, 0x0

    move-wide v1, v6

    goto :goto_0
.end method

.method dispose()V
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v2

    move-object v1, v2

    .line 481
    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 482
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 483
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->weakSortOrderListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 486
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->dispose()V

    .line 487
    return-void
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
    .line 1026
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method getDragRectHeight()D
    .locals 3

    .prologue
    .line 980
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getHeight()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-wide v0
.end method

.method getNestedColumnHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    .locals 2

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->nestedColumnHeader:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method getParentHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    .locals 2

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->parentHeader:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method public getTableColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method protected getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase",
            "<*****",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->skin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    return-object v0
.end method

.method protected handlePropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    const-string v3, "SCENE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateScene()V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-string v3, "TABLE_COLUMN_VISIBLE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 316
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setVisible(Z)V

    goto :goto_0

    .line 317
    :cond_2
    const-string v3, "TABLE_COLUMN_WIDTH"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSizeDirty:Z

    .line 321
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->requestLayout()V

    goto :goto_0

    .line 322
    :cond_3
    const-string v3, "TABLE_COLUMN_ID"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 323
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_4
    const-string v3, "TABLE_COLUMN_STYLE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 325
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->setStyle(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_5
    const-string v3, "TABLE_COLUMN_SORT_TYPE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 327
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateSortGrid()V

    .line 328
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    if-eqz v3, :cond_0

    .line 329
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->isAscending(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide v4, 0x4066800000000000L    # 180.0

    :goto_1
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setRotate(D)V

    goto :goto_0

    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 331
    :cond_7
    const-string v3, "TABLE_COLUMN_SORT_NODE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 332
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateSortGrid()V

    goto/16 :goto_0

    .line 333
    :cond_8
    const-string v3, "TABLE_COLUMN_SORTABLE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 336
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->skin:Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getRootHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v3

    move-object v2, v3

    .line 338
    .local v2, "root":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->updateAllHeaders(Lcom/sun/javafx/scene/control/skin/TableColumnHeader;)V

    .line 339
    goto/16 :goto_0

    .line 340
    .end local v2    # "root":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    :cond_9
    const-string v3, "TABLE_COLUMN_TEXT"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 341
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    :cond_a
    const-string v3, "TABLE_COLUMN_GRAPHIC"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getGraphic()Ljavafx/scene/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setGraphic(Ljavafx/scene/Node;)V

    goto/16 :goto_0
.end method

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 372
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSizeDirty:Z

    if-eqz v12, :cond_0

    .line 373
    move-object v12, v1

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v13

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getHeight()D

    move-result-wide v15

    invoke-virtual/range {v12 .. v16}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->resize(DD)V

    .line 374
    move-object v12, v1

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->isSizeDirty:Z

    .line 377
    :cond_0
    const-wide/16 v12, 0x0

    move-wide v2, v12

    .line 378
    .local v2, "sortWidth":D
    move-object v12, v1

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getWidth()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snapSize(D)D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedLeftInset()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedRightInset()D

    move-result-wide v16

    add-double v14, v14, v16

    sub-double/2addr v12, v14

    move-wide v4, v12

    .line 379
    .local v4, "w":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getHeight()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedTopInset()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedBottomInset()D

    move-result-wide v16

    add-double v14, v14, v16

    sub-double/2addr v12, v14

    move-wide v6, v12

    .line 380
    .local v6, "h":D
    move-wide v12, v4

    move-wide v8, v12

    .line 384
    .local v8, "x":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    if-eqz v12, :cond_1

    .line 385
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v13

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->arrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v15

    invoke-virtual/range {v12 .. v16}, Ljavafx/scene/layout/Region;->setMaxSize(DD)V

    .line 388
    :cond_1
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    if-eqz v12, :cond_2

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    invoke-virtual {v12}, Ljavafx/scene/Node;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 389
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v12

    move-wide v2, v12

    .line 390
    move-wide v12, v8

    move-wide v14, v2

    sub-double/2addr v12, v14

    move-wide v8, v12

    .line 391
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    move-wide v13, v2

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v15

    invoke-virtual/range {v12 .. v16}, Ljavafx/scene/Node;->resize(DD)V

    .line 392
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->sortArrow:Ljavafx/scene/Node;

    move-wide v14, v8

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedTopInset()D

    move-result-wide v16

    move-wide/from16 v18, v2

    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    sget-object v24, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v25, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v12 .. v25}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 396
    :cond_2
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    if-eqz v12, :cond_3

    .line 397
    move-wide v12, v4

    move-wide v14, v2

    sub-double/2addr v12, v14

    move-wide v10, v12

    .line 398
    .local v10, "labelWidth":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->label:Ljavafx/scene/control/Label;

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->snappedLeftInset()D

    move-result-wide v13

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v10

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getHeight()D

    move-result-wide v19

    invoke-virtual/range {v12 .. v20}, Ljavafx/scene/control/Label;->resizeRelocate(DDDD)V

    .line 400
    .end local v10    # "labelWidth":D
    :cond_3
    return-void
.end method

.method moveColumn(Ljavafx/scene/control/TableColumnBase;I)V
    .locals 13

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumnBase;
    move v2, p2

    .local v2, "newColumnPos":I
    move-object v9, v1

    if-eqz v9, :cond_0

    move v9, v2

    if-gez v9, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getColumns(Ljavafx/scene/control/TableColumnBase;)Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v3, v9

    .line 672
    .local v3, "columns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v9, v3

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    move v4, v9

    .line 673
    .local v4, "columnsCount":I
    move-object v9, v3

    move-object v10, v1

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move v5, v9

    .line 675
    .local v5, "currentPos":I
    move v9, v2

    move v6, v9

    .line 678
    .local v6, "actualNewColumnPos":I
    move v9, v6

    move v7, v9

    .line 679
    .local v7, "max":I
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_1
    move v9, v8

    move v10, v7

    if-gt v9, v10, :cond_3

    move v9, v8

    move v10, v4

    if-ge v9, v10, :cond_3

    .line 680
    move v9, v6

    move-object v10, v3

    move v11, v8

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v10}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    :goto_2
    add-int/2addr v9, v10

    move v6, v9

    .line 679
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 680
    :cond_2
    const/4 v10, 0x1

    goto :goto_2

    .line 684
    :cond_3
    move v9, v6

    move v10, v4

    if-lt v9, v10, :cond_5

    .line 685
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    .line 690
    :cond_4
    :goto_3
    move v9, v6

    move v10, v5

    if-ne v9, v10, :cond_6

    goto :goto_0

    .line 686
    :cond_5
    move v9, v6

    if-gez v9, :cond_4

    .line 687
    const/4 v9, 0x0

    move v6, v9

    goto :goto_3

    .line 692
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v3

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v9

    .line 693
    .local v8, "tempList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v9, v8

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 694
    move-object v9, v8

    move v10, v6

    move-object v11, v1

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 696
    move-object v9, v3

    move-object v10, v8

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v9

    .line 697
    goto :goto_0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1034
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/layout/Region;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :goto_0
    return-object v0

    .line 1032
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    :pswitch_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getIndex(Ljavafx/scene/control/TableColumnBase;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1033
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->column:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->getText()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1031
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setNestedColumnHeader(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)V
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "nch":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->nestedColumnHeader:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    return-void
.end method

.method setParentHeader(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)V
    .locals 4

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "ph":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->parentHeader:Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    return-void
.end method

.method setTableHeaderRow(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v1, p1

    .local v1, "thr":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    return-void
.end method
