.class public abstract Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;
.super Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;
.source "TableViewSkinBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "C:",
        "Ljavafx/scene/control/Control;",
        "B:",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<TC;>;I:",
        "Ljavafx/scene/control/IndexedCell",
        "<TM;>;TC:",
        "Ljavafx/scene/control/TableColumnBase",
        "<TS;*>;>",
        "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase",
        "<TC;TB;TI;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_TABLE_TEXT:Ljava/lang/String;

.field private static final GOLDEN_RATIO_MULTIPLIER:D = 0.618033987

.field private static final IS_PANNABLE:Z

.field private static final NO_COLUMNS_TEXT:Ljava/lang/String;

.field public static final RECREATE:Ljava/lang/String; = "tableRecreateKey"

.field public static final REFRESH:Ljava/lang/String; = "tableRefreshKey"


# instance fields
.field private columnReorderLine:Ljavafx/scene/layout/Region;

.field private columnReorderOverlay:Ljavafx/scene/layout/Region;

.field private contentWidthDirty:Z

.field protected forceCellRecreate:Z

.field private itemCount:I

.field private itemsChangeListener:Ljavafx/beans/InvalidationListener;

.field protected needCellsRebuilt:Z

.field protected needCellsReconfigured:Z

.field protected needCellsRecreated:Z

.field private placeholderLabel:Ljavafx/scene/control/Label;

.field private placeholderRegion:Ljavafx/scene/layout/StackPane;

.field private propertiesMapListener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rowCountListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TS;>;"
        }
    .end annotation
.end field

.field private rowFactory:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<TC;TI;>;"
        }
    .end annotation
.end field

.field private tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

.field private visibleColCount:I

.field private visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TTC;>;"
        }
    .end annotation
.end field

.field private weakItemsChangeListener:Ljavafx/beans/WeakInvalidationListener;

.field private weakRowCountListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TS;>;"
        }
    .end annotation
.end field

.field private weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TTC;>;"
        }
    .end annotation
.end field

.field private weakWidthListener:Ljavafx/beans/WeakInvalidationListener;

.field private widthListener:Ljavafx/beans/InvalidationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const-string v0, "TableView.noContent"

    invoke-static {v0}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->EMPTY_TABLE_TEXT:Ljava/lang/String;

    .line 124
    const-string v0, "TableView.noColumns"

    invoke-static {v0}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->NO_COLUMNS_TEXT:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$11;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 141
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->IS_PANNABLE:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TB;)V"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;, "TC;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "TB;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 89
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->contentWidthDirty:Z

    .line 128
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRebuilt:Z

    .line 129
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRecreated:Z

    .line 130
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsReconfigured:Z

    .line 132
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemCount:I

    .line 133
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->forceCellRecreate:Z

    .line 246
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/collections/MapChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->propertiesMapListener:Ljavafx/collections/MapChangeListener;

    .line 258
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowCountListener:Ljavafx/collections/ListChangeListener;

    .line 296
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    .line 304
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->widthListener:Ljavafx/beans/InvalidationListener;

    .line 318
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowCountListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakRowCountListener:Ljavafx/collections/WeakListChangeListener;

    .line 320
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 322
    move-object v3, v0

    new-instance v4, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->widthListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v5, v6}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakWidthListener:Ljavafx/beans/WeakInvalidationListener;

    .line 156
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$new$69(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$new$70(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$10()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$static$63()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$new$71(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$new$72(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/scene/control/IndexedCell;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$init$64(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/scene/control/IndexedCell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$init$65(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$init$66(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/ScrollToEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$init$67(Ljavafx/scene/control/ScrollToEvent;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$init$68(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/TableColumnBase;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->lambda$scrollHorizontally$73(Ljavafx/scene/control/TableColumnBase;)V

    return-void
.end method

.method private checkContentWidthState()V
    .locals 3

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->contentWidthDirty:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 653
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updateContentWidth()V

    .line 654
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->contentWidthDirty:Z

    .line 656
    :cond_1
    return-void
.end method

.method private isCellFocused(I)Z
    .locals 9

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move v1, p1

    .local v1, "row":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v5

    move-object v2, v5

    .line 956
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;, "Ljavafx/scene/control/TableFocusModel<TS;TTC;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 965
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :goto_0
    return v0

    .line 958
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    move v3, v5

    .line 959
    .local v3, "columnCount":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "col":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 960
    move-object v5, v2

    move v6, v1

    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableFocusModel;->isFocused(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 961
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 959
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 965
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method private isCellSelected(I)Z
    .locals 9

    .prologue
    .line 940
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move v1, p1

    .local v1, "row":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v5

    move-object v2, v5

    .line 941
    .local v2, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TS;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 951
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :goto_0
    return v0

    .line 942
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 944
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    move v3, v5

    .line 945
    .local v3, "columnCount":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "col":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_3

    .line 946
    move-object v5, v2

    move v6, v1

    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 947
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 945
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 951
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method private isLeadIndex(ZI)Z
    .locals 7

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move v1, p1

    .local v1, "isFocusDriven":Z
    move v2, p2

    .local v2, "index":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v5

    move-object v3, v5

    .line 520
    .local v3, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TS;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v5

    move-object v4, v5

    .line 522
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TS;>;"
    move v5, v1

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v5

    move v6, v2

    if-eq v5, v6, :cond_1

    :cond_0
    move v5, v1

    if-nez v5, :cond_2

    move-object v5, v3

    .line 523
    invoke-virtual {v5}, Ljavafx/scene/control/TableSelectionModel;->getSelectedIndex()I

    move-result v5

    move v6, v2

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$init$64(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/scene/control/IndexedCell;
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "flow1":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->createCell()Ljavafx/scene/control/IndexedCell;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    return-object v0
.end method

.method private synthetic lambda$init$65(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->horizontalScroll()V

    .line 170
    return-void
.end method

.method private synthetic lambda$init$66(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->requestLayout()V

    .line 198
    return-void
.end method

.method private synthetic lambda$init$67(Ljavafx/scene/control/ScrollToEvent;)V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/control/ScrollToEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollToEvent;->getScrollTarget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->scrollHorizontally(Ljavafx/scene/control/TableColumnBase;)V

    .line 222
    return-void
.end method

.method private synthetic lambda$init$68(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->contentWidthDirty:Z

    .line 227
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->requestLayout()V

    .line 228
    return-void
.end method

.method private synthetic lambda$new$69(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/MapChangeListener$Change;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v2, "tableRefreshKey"

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->refreshView()V

    .line 250
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "tableRefreshKey"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 256
    :cond_1
    :goto_1
    goto :goto_0

    .line 251
    :cond_2
    const-string v2, "tableRecreateKey"

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->forceCellRecreate:Z

    .line 253
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->refreshView()V

    .line 254
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "tableRecreateKey"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method private synthetic lambda$new$70(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemCount:I

    .line 274
    .line 288
    :cond_1
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    instance-of v2, v2, Ljavafx/scene/control/TableView;

    if-eqz v2, :cond_2

    .line 289
    move-object v2, v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->edit(ILjavafx/scene/control/TableColumnBase;)V

    .line 292
    :cond_2
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowCountDirty:Z

    .line 293
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->requestLayout()V

    .line 294
    return-void

    .line 275
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemCount:I

    if-ne v2, v3, :cond_0

    .line 282
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemCount:I

    .line 283
    goto :goto_0
.end method

.method private synthetic lambda$new$71(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updateVisibleColumnCount()V

    .line 299
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updateVisibleLeafColumnWidthListeners(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$72(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsReconfigured:Z

    .line 311
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 312
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->requestLayout()V

    .line 314
    :cond_0
    return-void
.end method

.method private synthetic lambda$scrollHorizontally$73(Ljavafx/scene/control/TableColumnBase;)V
    .locals 4

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->scrollHorizontally(Ljavafx/scene/control/TableColumnBase;)V

    return-void
.end method

.method private static synthetic lambda$static$63()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 141
    const-string v0, "com.sun.javafx.scene.control.skin.TableViewSkin.pannable"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private refreshView()V
    .locals 4

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowCountDirty:Z

    .line 873
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    move-object v1, v2

    .line 874
    .local v1, "c":Ljavafx/scene/control/Control;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 875
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->requestLayout()V

    .line 877
    :cond_0
    return-void
.end method

.method private updateContentWidth()V
    .locals 10

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getWidth()D

    move-result-wide v4

    move-wide v1, v4

    .line 854
    .local v1, "contentWidth":D
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 855
    move-wide v4, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-wide v1, v4

    .line 858
    :cond_0
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 860
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    move-object v3, v4

    .line 861
    .local v3, "c":Ljavafx/scene/control/Control;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->getWidth()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->snappedLeftInset()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->snappedRightInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    move-wide v1, v4

    .line 864
    .end local v3    # "c":Ljavafx/scene/control/Control;
    :cond_1
    const-wide/16 v4, 0x0

    move-wide v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide v1, v4

    .line 868
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    const-string v5, "TableView.contentWidth"

    move-wide v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 869
    return-void
.end method

.method private updateVisibleColumnCount()V
    .locals 3

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->visibleColCount:I

    .line 795
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updatePlaceholderRegionVisibility()V

    .line 796
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRebuilt:Z

    .line 797
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->requestLayout()V

    .line 798
    return-void
.end method

.method private updateVisibleLeafColumnWidthListeners(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TTC;>;",
            "Ljava/util/List",
            "<+TTC;>;)V"
        }
    .end annotation

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "added":Ljava/util/List;, "Ljava/util/List<+TTC;>;"
    move-object v2, p2

    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<+TTC;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    .local v4, "max":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 804
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableColumnBase;

    move-object v5, v6

    .line 805
    .local v5, "tc":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakWidthListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 803
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 807
    .end local v5    # "tc":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 808
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableColumnBase;

    move-object v5, v6

    .line 809
    .restart local v5    # "tc":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakWidthListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 807
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 811
    .end local v5    # "tc":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    :cond_1
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRebuilt:Z

    .line 812
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/Control;->requestLayout()V

    .line 813
    return-void
.end method


# virtual methods
.method protected abstract columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ResizeFeaturesBase;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 15

    .prologue
    .line 659
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
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
    const-wide/high16 v12, 0x4079000000000000L    # 400.0

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 33

    .prologue
    .line 664
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-wide/from16 v4, p1

    .local v4, "height":D
    move-wide/from16 v6, p3

    .local v6, "topInset":D
    move-wide/from16 v8, p5

    .local v8, "rightInset":D
    move-wide/from16 v10, p7

    .local v10, "bottomInset":D
    move-wide/from16 v12, p9

    .local v12, "leftInset":D
    move-object/from16 v22, v3

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    move-wide/from16 v25, v6

    move-wide/from16 v27, v8

    move-wide/from16 v29, v10

    move-wide/from16 v31, v12

    invoke-virtual/range {v22 .. v32}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->computePrefHeight(DDDDD)D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 666
    .local v14, "prefHeight":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v22

    move-object/from16 v16, v22

    .line 667
    .local v16, "cols":Ljava/util/List;, "Ljava/util/List<+TTC;>;"
    move-object/from16 v22, v16

    if-eqz v22, :cond_0

    move-object/from16 v22, v16

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 668
    :cond_0
    move-wide/from16 v22, v14

    const-wide v24, 0x3fe3c6ef363f685cL    # 0.618033987

    mul-double v22, v22, v24

    move-wide/from16 v3, v22

    .line 677
    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :goto_0
    return-wide v3

    .line 671
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :cond_1
    move-wide/from16 v22, v12

    move-wide/from16 v24, v8

    add-double v22, v22, v24

    move-wide/from16 v17, v22

    .line 672
    .local v17, "pw":D
    const/16 v22, 0x0

    move/from16 v19, v22

    .local v19, "i":I
    move-object/from16 v22, v16

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v20, v22

    .local v20, "max":I
    :goto_1
    move/from16 v22, v19

    move/from16 v23, v20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 673
    move-object/from16 v22, v16

    move/from16 v23, v19

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v21, v22

    .line 674
    .local v21, "tc":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    move-wide/from16 v22, v17

    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/TableColumnBase;->getPrefWidth()D

    move-result-wide v24

    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v26

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v17, v22

    .line 672
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 677
    .end local v21    # "tc":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    :cond_2
    move-wide/from16 v22, v17

    move-wide/from16 v24, v14

    const-wide v26, 0x3fe3c6ef363f685cL    # 0.618033987

    mul-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v3, v22

    goto :goto_0
.end method

.method protected createTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    .locals 5

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    return-object v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 413
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakItemsChangeListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 414
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->propertiesMapListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 415
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updateTableItems(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    .line 417
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->dispose()V

    .line 418
    return-void
.end method

.method protected abstract edit(ILjavafx/scene/control/TableColumnBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTC;)V"
        }
    .end annotation
.end method

.method public getColumnReorderLine()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    return-object v0
.end method

.method protected abstract getColumns()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TTC;>;"
        }
    .end annotation
.end method

.method protected abstract getFocusModel()Ljavafx/scene/control/TableFocusModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableFocusModel",
            "<TS;TTC;>;"
        }
    .end annotation
.end method

.method protected abstract getFocusedCell()Ljavafx/scene/control/TablePositionBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TablePositionBase",
            "<+TTC;>;"
        }
    .end annotation
.end method

.method protected abstract getSelectionModel()Ljavafx/scene/control/TableSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableSelectionModel",
            "<TS;>;"
        }
    .end annotation
.end method

.method protected abstract getSortOrder()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TTC;>;"
        }
    .end annotation
.end method

.method public getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    return-object v0
.end method

.method protected abstract getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTC;"
        }
    .end annotation
.end method

.method protected abstract getVisibleLeafColumns()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<+TTC;>;"
        }
    .end annotation
.end method

.method protected abstract getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTC;)I"
        }
    .end annotation
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 395
    const-string v3, "ROW_FACTORY"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowFactory:Ljavafx/util/Callback;

    move-object v2, v3

    .line 397
    .local v2, "oldFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TC;TI;>;"
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/util/Callback;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowFactory:Ljavafx/util/Callback;

    .line 398
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowFactory:Ljavafx/util/Callback;

    if-eq v3, v4, :cond_0

    .line 399
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRebuilt:Z

    .line 400
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->requestLayout()V

    .line 402
    .line 409
    .end local v2    # "oldFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TC;TI;>;"
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const-string v3, "PLACEHOLDER"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updatePlaceholderRegionVisibility()V

    goto :goto_0

    .line 406
    :cond_2
    const-string v3, "VBAR_VISIBLE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updateContentWidth()V

    goto :goto_0
.end method

.method protected horizontalScroll()V
    .locals 2

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->updateScrollX()V

    .line 550
    return-void
.end method

.method protected init(Ljavafx/scene/control/Control;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;, "TC;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    sget-boolean v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->IS_PANNABLE:Z

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPannable(Z)V

    .line 162
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCreateCell(Ljavafx/util/Callback;)V

    .line 168
    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    move-object v2, v5

    .line 171
    .local v2, "hbarValueListener":Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 174
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setUnitIncrement(D)V

    .line 175
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setBlockIncrement(D)V

    .line 177
    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/Region;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    .line 178
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    invoke-virtual {v5}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string v9, "column-resize-line"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 179
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/Region;->setManaged(Z)V

    .line 180
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/Region;->setVisible(Z)V

    .line 182
    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/Region;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderOverlay:Ljavafx/scene/layout/Region;

    .line 183
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderOverlay:Ljavafx/scene/layout/Region;

    invoke-virtual {v5}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string v9, "column-overlay"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 184
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderOverlay:Ljavafx/scene/layout/Region;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/Region;->setVisible(Z)V

    .line 185
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderOverlay:Ljavafx/scene/layout/Region;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/Region;->setManaged(Z)V

    .line 187
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->createTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    .line 189
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->setFocusTraversable(Z)V

    .line 191
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderOverlay:Ljavafx/scene/layout/Region;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 193
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updateVisibleColumnCount()V

    .line 194
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updateVisibleLeafColumnWidthListeners(Ljava/util/List;Ljava/util/List;)V

    .line 196
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->reorderingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 200
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 202
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ObservableList;

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updateTableItems(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    .line 203
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$1;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemsChangeListener:Ljavafx/beans/InvalidationListener;

    .line 212
    move-object v5, v0

    new-instance v6, Ljavafx/beans/WeakInvalidationListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemsChangeListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v7, v8}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakItemsChangeListener:Ljavafx/beans/WeakInvalidationListener;

    .line 213
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakItemsChangeListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 215
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v3, v5

    .line 216
    .local v3, "properties":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v5, v3

    const-string v6, "tableRefreshKey"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 217
    move-object v5, v3

    const-string v6, "tableRecreateKey"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 218
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->propertiesMapListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 220
    move-object v5, v1

    invoke-static {}, Ljavafx/scene/control/ScrollToEvent;->scrollToColumn()Ljavafx/event/EventType;

    move-result-object v6

    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/event/EventHandler;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 225
    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    move-object v4, v5

    .line 229
    .local v4, "widthObserver":Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 230
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 232
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "ROW_FACTORY"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 233
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "PLACEHOLDER"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 234
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/Control;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    const-string v7, "WIDTH"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 235
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    const-string v7, "VBAR_VISIBLE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method isColumnPartiallyOrFullyVisible(Ljavafx/scene/control/TableColumnBase;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTC;)Z"
        }
    .end annotation

    .prologue
    .line 527
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object/from16 v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    move-object v12, v1

    if-eqz v12, :cond_0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    move v0, v12

    .line 545
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :goto_0
    return v0

    .line 529
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getValue()D

    move-result-wide v12

    move-wide v2, v12

    .line 532
    .local v2, "scrollX":D
    const-wide/16 v12, 0x0

    move-wide v4, v12

    .line 533
    .local v4, "start":D
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v12

    move-object v6, v12

    .line 534
    .local v6, "visibleLeafColumns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+TTC;>;"
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i":I
    move-object v12, v6

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    move v8, v12

    .local v8, "max":I
    :goto_1
    move v12, v7

    move v13, v8

    if-ge v12, v13, :cond_2

    .line 535
    move-object v12, v6

    move v13, v7

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/TableColumnBase;

    move-object v9, v12

    .line 536
    .local v9, "c":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v12, v9

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 539
    .end local v9    # "c":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    :cond_2
    move-wide v12, v4

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v7, v12

    .line 542
    .end local v8    # "max":I
    .local v7, "end":D
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->getPadding()Ljavafx/geometry/Insets;

    move-result-object v12

    move-object v9, v12

    .line 543
    .local v9, "padding":Ljavafx/geometry/Insets;
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->getWidth()D

    move-result-wide v12

    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v10, v12

    .line 545
    .local v10, "headerWidth":D
    move-wide v12, v4

    move-wide v14, v2

    cmpl-double v12, v12, v14

    if-gez v12, :cond_3

    move-wide v12, v7

    move-wide v14, v2

    cmpl-double v12, v12, v14

    if-lez v12, :cond_6

    :cond_3
    move-wide v12, v4

    move-wide v14, v10

    move-wide/from16 v16, v2

    add-double v14, v14, v16

    cmpg-double v12, v12, v14

    if-ltz v12, :cond_4

    move-wide v12, v7

    move-wide v14, v10

    move-wide/from16 v16, v2

    add-double v14, v14, v16

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_6

    :cond_4
    const/4 v12, 0x1

    :goto_2
    move v0, v12

    goto :goto_0

    .line 537
    .end local v10    # "headerWidth":D
    .local v7, "i":I
    .restart local v8    # "max":I
    .local v9, "c":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    :cond_5
    move-wide v12, v4

    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v4, v12

    .line 534
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 545
    .end local v8    # "max":I
    .local v7, "end":D
    .local v9, "padding":Ljavafx/geometry/Insets;
    .restart local v10    # "headerWidth":D
    :cond_6
    const/4 v12, 0x0

    goto :goto_2
.end method

.method protected abstract itemsProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TS;>;>;"
        }
    .end annotation
.end method

.method protected layoutChildren(DDDD)V
    .locals 43

    .prologue
    .line 684
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v28

    move-object/from16 v12, v28

    .line 688
    .local v12, "table":Ljavafx/scene/control/Control;, "TC;"
    move-object/from16 v28, v12

    if-nez v28, :cond_0

    .line 689
    .line 779
    :goto_0
    return-void

    .line 692
    :cond_0
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v31, v6

    move-wide/from16 v33, v8

    move-wide/from16 v35, v10

    invoke-super/range {v28 .. v36}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->layoutChildren(DDDD)V

    .line 694
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRecreated:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 695
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->recreateCells()V

    .line 702
    :cond_1
    :goto_1
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRebuilt:Z

    .line 703
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRecreated:Z

    .line 704
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsReconfigured:Z

    .line 706
    move-object/from16 v28, v12

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Control;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v28

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    move-wide/from16 v13, v28

    .line 709
    .local v13, "baselineOffset":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->prefHeight(D)D

    move-result-wide v28

    move-wide/from16 v15, v28

    .line 710
    .local v15, "tableHeaderRowHeight":D
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v29, v0

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move-wide/from16 v36, v15

    move-wide/from16 v38, v13

    sget-object v40, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v41, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v28 .. v41}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 712
    move-wide/from16 v28, v6

    move-wide/from16 v30, v15

    add-double v28, v28, v30

    move-wide/from16 v6, v28

    .line 718
    move-wide/from16 v28, v10

    move-wide/from16 v30, v15

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v17, v28

    .line 719
    .local v17, "flowHeight":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getItemCount()I

    move-result v28

    if-eqz v28, :cond_2

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->visibleColCount:I

    move/from16 v28, v0

    if-nez v28, :cond_a

    .line 721
    :cond_2
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move-wide/from16 v36, v17

    move-wide/from16 v38, v13

    sget-object v40, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v41, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v28 .. v41}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 731
    :goto_2
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getReorderingRegion()Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v28

    if-eqz v28, :cond_7

    .line 732
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getReorderingRegion()Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v28

    move-object/from16 v19, v28

    .line 733
    .local v19, "reorderingColumnHeader":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object/from16 v28, v19

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v28

    move-object/from16 v20, v28

    .line 734
    .local v20, "reorderingColumn":Ljavafx/scene/control/TableColumnBase;
    move-object/from16 v28, v20

    if-eqz v28, :cond_6

    .line 735
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getReorderingRegion()Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v28

    move-object/from16 v21, v28

    .line 741
    .local v21, "n":Ljavafx/scene/Node;
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v28, v0

    move-object/from16 v29, v21

    move-object/from16 v30, v21

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/Node;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->sceneToLocal(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 742
    .local v22, "minX":D
    move-object/from16 v28, v19

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getWidth()D

    move-result-wide v28

    move-wide/from16 v24, v28

    .line 743
    .local v24, "overlayWidth":D
    move-wide/from16 v28, v22

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_3

    .line 744
    move-wide/from16 v28, v24

    move-wide/from16 v30, v22

    add-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 746
    :cond_3
    move-wide/from16 v28, v22

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_b

    const-wide/16 v28, 0x0

    :goto_3
    move-wide/from16 v22, v28

    .line 750
    move-wide/from16 v28, v22

    move-wide/from16 v30, v24

    add-double v28, v28, v30

    move-wide/from16 v30, v8

    cmpl-double v28, v28, v30

    if-lez v28, :cond_4

    .line 751
    move-wide/from16 v28, v8

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 753
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 754
    move-wide/from16 v28, v24

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v30

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 758
    :cond_4
    move-wide/from16 v28, v17

    move-wide/from16 v26, v28

    .line 759
    .local v26, "contentAreaHeight":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 760
    move-wide/from16 v28, v26

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v30

    sub-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 763
    :cond_5
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderOverlay:Ljavafx/scene/layout/Region;

    move-object/from16 v28, v0

    move-wide/from16 v29, v24

    move-wide/from16 v31, v26

    invoke-virtual/range {v28 .. v32}, Ljavafx/scene/layout/Region;->resize(DD)V

    .line 765
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderOverlay:Ljavafx/scene/layout/Region;

    move-object/from16 v28, v0

    move-wide/from16 v29, v22

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->setLayoutX(D)V

    .line 766
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderOverlay:Ljavafx/scene/layout/Region;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getHeight()D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->setLayoutY(D)V

    .line 770
    .end local v21    # "n":Ljavafx/scene/Node;
    .end local v22    # "minX":D
    .end local v24    # "overlayWidth":D
    .end local v26    # "contentAreaHeight":D
    :cond_6
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/Region;->snappedLeftInset()D

    move-result-wide v28

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/Region;->snappedRightInset()D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v21, v28

    .line 771
    .local v21, "cw":D
    move-wide/from16 v28, v10

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v30

    if-eqz v30, :cond_c

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v30

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v30, v30, v32

    :goto_4
    sub-double v28, v28, v30

    move-wide/from16 v23, v28

    .line 772
    .local v23, "lineHeight":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/layout/Region;->snappedTopInset()D

    move-result-wide v31

    move-wide/from16 v33, v21

    move-wide/from16 v35, v23

    invoke-virtual/range {v28 .. v36}, Ljavafx/scene/layout/Region;->resizeRelocate(DDDD)V

    .line 775
    .end local v19    # "reorderingColumnHeader":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .end local v20    # "reorderingColumn":Ljavafx/scene/control/TableColumnBase;
    .end local v21    # "cw":D
    .end local v23    # "lineHeight":D
    :cond_7
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderLine:Ljavafx/scene/layout/Region;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->isReordering()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/layout/Region;->setVisible(Z)V

    .line 776
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->columnReorderOverlay:Ljavafx/scene/layout/Region;

    move-object/from16 v28, v0

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->isReordering()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/layout/Region;->setVisible(Z)V

    .line 778
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->checkContentWidthState()V

    .line 779
    goto/16 :goto_0

    .line 696
    .end local v13    # "baselineOffset":D
    .end local v15    # "tableHeaderRowHeight":D
    .end local v17    # "flowHeight":D
    :cond_8
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRebuilt:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 697
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->rebuildCells()V

    goto/16 :goto_1

    .line 698
    :cond_9
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsReconfigured:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 699
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->reconfigureCells()V

    goto/16 :goto_1

    .line 725
    .restart local v13    # "baselineOffset":D
    .restart local v15    # "tableHeaderRowHeight":D
    .restart local v17    # "flowHeight":D
    :cond_a
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v29, v0

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move-wide/from16 v36, v17

    move-wide/from16 v38, v13

    sget-object v40, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v41, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v28 .. v41}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    goto/16 :goto_2

    .line 746
    .restart local v19    # "reorderingColumnHeader":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    .restart local v20    # "reorderingColumn":Ljavafx/scene/control/TableColumnBase;
    .local v21, "n":Ljavafx/scene/Node;
    .restart local v22    # "minX":D
    .restart local v24    # "overlayWidth":D
    :cond_b
    move-wide/from16 v28, v22

    goto/16 :goto_3

    .line 771
    .end local v22    # "minX":D
    .end local v24    # "overlayWidth":D
    .local v21, "cw":D
    :cond_c
    const-wide/16 v30, 0x0

    goto/16 :goto_4
.end method

.method protected onFocusNextCell()V
    .locals 4

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v2

    move-object v1, v2

    .line 588
    .local v1, "fm":Ljavafx/scene/control/TableFocusModel;, "Ljavafx/scene/control/TableFocusModel<TS;TTC;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 591
    :goto_0
    return-void

    .line 590
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 591
    goto :goto_0
.end method

.method protected onFocusPreviousCell()V
    .locals 4

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v2

    move-object v1, v2

    .line 581
    .local v1, "fm":Ljavafx/scene/control/TableFocusModel;, "Ljavafx/scene/control/TableFocusModel<TS;TTC;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 584
    goto :goto_0
.end method

.method protected onMoveToFirstCell()V
    .locals 4

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 617
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 618
    return-void
.end method

.method protected onMoveToLastCell()V
    .locals 6

    .prologue
    .line 621
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getItemCount()I

    move-result v3

    move v2, v3

    .line 622
    .local v2, "endPos":I
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 623
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 624
    return-void
.end method

.method public onScrollPageDown(Z)I
    .locals 12

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move v1, p1

    .local v1, "isFocusDriven":Z
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v9

    move-object v2, v9

    .line 441
    .local v2, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TS;>;"
    move-object v9, v2

    if-nez v9, :cond_0

    const/4 v9, -0x1

    move v0, v9

    .line 479
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :goto_0
    return v0

    .line 443
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getItemCount()I

    move-result v9

    move v3, v9

    .line 445
    .local v3, "itemCount":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    move-object v4, v9

    .line 446
    .local v4, "lastVisibleCell":Ljavafx/scene/control/IndexedCell;, "TI;"
    move-object v9, v4

    if-nez v9, :cond_1

    const/4 v9, -0x1

    move v0, v9

    goto :goto_0

    .line 448
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v9

    move v5, v9

    .line 453
    .local v5, "lastVisibleCellIndex":I
    move v9, v5

    move v10, v3

    if-lt v9, v10, :cond_4

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_1
    move v5, v9

    .line 457
    move v9, v1

    if-eqz v9, :cond_6

    .line 458
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/IndexedCell;->isFocused()Z

    move-result v9

    if-nez v9, :cond_2

    move-object v9, v0

    move v10, v5

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->isCellFocused(I)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    const/4 v9, 0x1

    :goto_2
    move v6, v9

    .line 463
    .local v6, "isSelected":Z
    :goto_3
    move v9, v6

    if-eqz v9, :cond_3

    .line 464
    move-object v9, v0

    move v10, v1

    move v11, v5

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->isLeadIndex(ZI)Z

    move-result v9

    move v7, v9

    .line 466
    .local v7, "isLeadIndex":Z
    move v9, v7

    if-eqz v9, :cond_3

    .line 469
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->showAsFirst(Ljavafx/scene/control/IndexedCell;)V

    .line 471
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    move-object v8, v9

    .line 472
    .local v8, "newLastVisibleCell":Ljavafx/scene/control/IndexedCell;, "TI;"
    move-object v9, v8

    if-nez v9, :cond_9

    move-object v9, v4

    :goto_4
    move-object v4, v9

    .line 476
    .end local v7    # "isLeadIndex":Z
    .end local v8    # "newLastVisibleCell":Ljavafx/scene/control/IndexedCell;, "TI;"
    :cond_3
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v9

    move v7, v9

    .line 477
    .local v7, "newSelectionIndex":I
    move v9, v7

    move v10, v3

    if-lt v9, v10, :cond_a

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_5
    move v7, v9

    .line 478
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 479
    move v9, v7

    move v0, v9

    goto :goto_0

    .line 453
    .end local v6    # "isSelected":Z
    .end local v7    # "newSelectionIndex":I
    :cond_4
    move v9, v5

    goto :goto_1

    .line 458
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 460
    :cond_6
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/IndexedCell;->isSelected()Z

    move-result v9

    if-nez v9, :cond_7

    move-object v9, v0

    move v10, v5

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->isCellSelected(I)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    const/4 v9, 0x1

    :goto_6
    move v6, v9

    .restart local v6    # "isSelected":Z
    goto :goto_3

    .end local v6    # "isSelected":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_6

    .line 472
    .restart local v6    # "isSelected":Z
    .local v7, "isLeadIndex":Z
    .restart local v8    # "newLastVisibleCell":Ljavafx/scene/control/IndexedCell;, "TI;"
    :cond_9
    move-object v9, v8

    goto :goto_4

    .line 477
    .end local v8    # "newLastVisibleCell":Ljavafx/scene/control/IndexedCell;, "TI;"
    .local v7, "newSelectionIndex":I
    :cond_a
    move v9, v7

    goto :goto_5
.end method

.method public onScrollPageUp(Z)I
    .locals 10

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move v1, p1

    .local v1, "isFocusDriven":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getFirstVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v7

    move-object v2, v7

    .line 488
    .local v2, "firstVisibleCell":Ljavafx/scene/control/IndexedCell;, "TI;"
    move-object v7, v2

    if-nez v7, :cond_0

    const/4 v7, -0x1

    move v0, v7

    .line 515
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :goto_0
    return v0

    .line 490
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v7

    move v3, v7

    .line 493
    .local v3, "firstVisibleCellIndex":I
    const/4 v7, 0x0

    move v4, v7

    .line 494
    .local v4, "isSelected":Z
    move v7, v1

    if-eqz v7, :cond_4

    .line 495
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/IndexedCell;->isFocused()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v0

    move v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->isCellFocused(I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 500
    :goto_2
    move v7, v4

    if-eqz v7, :cond_2

    .line 501
    move-object v7, v0

    move v8, v1

    move v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->isLeadIndex(ZI)Z

    move-result v7

    move v5, v7

    .line 503
    .local v5, "isLeadIndex":Z
    move v7, v5

    if-eqz v7, :cond_2

    .line 506
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->showAsLast(Ljavafx/scene/control/IndexedCell;)V

    .line 508
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getFirstVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v7

    move-object v6, v7

    .line 509
    .local v6, "newFirstVisibleCell":Ljavafx/scene/control/IndexedCell;, "TI;"
    move-object v7, v6

    if-nez v7, :cond_7

    move-object v7, v2

    :goto_3
    move-object v2, v7

    .line 513
    .end local v5    # "isLeadIndex":Z
    .end local v6    # "newFirstVisibleCell":Ljavafx/scene/control/IndexedCell;, "TI;"
    :cond_2
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v7

    move v5, v7

    .line 514
    .local v5, "newSelectionIndex":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 515
    move v7, v5

    move v0, v7

    goto :goto_0

    .line 495
    .end local v5    # "newSelectionIndex":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 497
    :cond_4
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/IndexedCell;->isSelected()Z

    move-result v7

    if-nez v7, :cond_5

    move-object v7, v0

    move v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->isCellSelected(I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const/4 v7, 0x1

    :goto_4
    move v4, v7

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 509
    .local v5, "isLeadIndex":Z
    .restart local v6    # "newFirstVisibleCell":Ljavafx/scene/control/IndexedCell;, "TI;"
    :cond_7
    move-object v7, v6

    goto :goto_3
.end method

.method protected onSelectLeftCell()V
    .locals 2

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->scrollHorizontally()V

    .line 609
    return-void
.end method

.method protected onSelectNextCell()V
    .locals 4

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v2

    move-object v1, v2

    .line 602
    .local v1, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TS;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 605
    :goto_0
    return-void

    .line 604
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 605
    goto :goto_0
.end method

.method protected onSelectPreviousCell()V
    .locals 4

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v2

    move-object v1, v2

    .line 595
    .local v1, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TS;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 598
    :goto_0
    return-void

    .line 597
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 598
    goto :goto_0
.end method

.method protected onSelectRightCell()V
    .locals 2

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->scrollHorizontally()V

    .line 613
    return-void
.end method

.method protected abstract placeholderProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 970
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1002
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :goto_0
    return-object v0

    .line 972
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    :pswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v5

    move-object v3, v5

    .line 973
    .local v3, "fm":Ljavafx/scene/control/TableFocusModel;, "Ljavafx/scene/control/TableFocusModel<TS;*>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v5

    move v4, v5

    .line 974
    .local v4, "focusedIndex":I
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 975
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 976
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 978
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getItemCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 979
    const/4 v5, 0x0

    move v4, v5

    .line 984
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 981
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 987
    .end local v3    # "fm":Ljavafx/scene/control/TableFocusModel;, "Ljavafx/scene/control/TableFocusModel<TS;*>;"
    .end local v4    # "focusedIndex":I
    :pswitch_1
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 988
    .local v3, "rowIndex":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 991
    .end local v3    # "rowIndex":I
    :pswitch_2
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 992
    .local v3, "index":I
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v5

    move-object v4, v5

    .line 993
    .local v4, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getColumnHeaderFor(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 998
    .end local v3    # "index":I
    .end local v4    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    :pswitch_3
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1000
    :pswitch_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 1001
    :pswitch_5
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 970
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected abstract resizeColumn(Ljavafx/scene/control/TableColumnBase;D)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTC;D)Z"
        }
    .end annotation
.end method

.method protected abstract resizeColumnToFitContent(Ljavafx/scene/control/TableColumnBase;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTC;I)V"
        }
    .end annotation
.end method

.method protected abstract rowFactoryProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<TC;TI;>;>;"
        }
    .end annotation
.end method

.method protected scrollHorizontally()V
    .locals 5

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v3

    move-object v1, v3

    .line 884
    .local v1, "fm":Ljavafx/scene/control/TableFocusModel;, "Ljavafx/scene/control/TableFocusModel<TS;TTC;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 888
    :goto_0
    return-void

    .line 886
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    move-object v2, v3

    .line 887
    .local v2, "col":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->scrollHorizontally(Ljavafx/scene/control/TableColumnBase;)V

    .line 888
    goto :goto_0
.end method

.method protected scrollHorizontally(Ljavafx/scene/control/TableColumnBase;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTC;)V"
        }
    .end annotation

    .prologue
    .line 891
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object/from16 v3, p1

    .local v3, "col":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    move-object/from16 v20, v3

    if-eqz v20, :cond_0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v20

    if-nez v20, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v20

    move-object/from16 v4, v20

    .line 900
    .local v4, "control":Ljavafx/scene/control/Control;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->tableHeaderRow:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getColumnHeaderFor(Ljavafx/scene/control/TableColumnBase;)Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v20

    move-object/from16 v5, v20

    .line 901
    .local v5, "header":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object/from16 v20, v5

    if-eqz v20, :cond_2

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getWidth()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_3

    .line 902
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;Ljavafx/scene/control/TableColumnBase;)Ljava/lang/Runnable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 903
    goto :goto_0

    .line 907
    :cond_3
    const-wide/16 v20, 0x0

    move-wide/from16 v6, v20

    .line 908
    .local v6, "start":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v8, v20

    :goto_1
    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v9, v20

    .line 909
    .local v9, "c":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    move-object/from16 v20, v9

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 912
    .end local v9    # "c":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    :cond_4
    move-wide/from16 v20, v6

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v8, v20

    .line 915
    .local v8, "end":D
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Control;->getWidth()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->snappedLeftInset()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->snappedRightInset()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 921
    .local v10, "headerWidth":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getValue()D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 922
    .local v12, "pos":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getMax()D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 925
    .local v14, "max":D
    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    cmpg-double v20, v20, v22

    if-gez v20, :cond_6

    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_6

    .line 926
    move-wide/from16 v20, v6

    move-wide/from16 v16, v20

    .line 936
    .local v16, "newPos":D
    :goto_2
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v20

    move-wide/from16 v21, v16

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setValue(D)V

    .line 937
    goto/16 :goto_0

    .line 910
    .end local v8    # "end":D
    .end local v10    # "headerWidth":D
    .end local v12    # "pos":D
    .end local v14    # "max":D
    .end local v16    # "newPos":D
    .restart local v9    # "c":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    :cond_5
    move-wide/from16 v20, v6

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v6, v20

    .line 911
    goto/16 :goto_1

    .line 928
    .end local v9    # "c":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    .restart local v8    # "end":D
    .restart local v10    # "headerWidth":D
    .restart local v12    # "pos":D
    .restart local v14    # "max":D
    :cond_6
    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-ltz v20, :cond_7

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    cmpl-double v20, v20, v22

    if-lez v20, :cond_8

    :cond_7
    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    sub-double v20, v20, v22

    :goto_3
    move-wide/from16 v18, v20

    .line 929
    .local v18, "delta":D
    move-wide/from16 v20, v12

    move-wide/from16 v22, v18

    add-double v20, v20, v22

    move-wide/from16 v22, v14

    cmpl-double v20, v20, v22

    if-lez v20, :cond_9

    move-wide/from16 v20, v14

    :goto_4
    move-wide/from16 v16, v20

    .restart local v16    # "newPos":D
    goto :goto_2

    .line 928
    .end local v16    # "newPos":D
    .end local v18    # "delta":D
    :cond_8
    const-wide/16 v20, 0x0

    goto :goto_3

    .line 929
    .restart local v18    # "delta":D
    :cond_9
    move-wide/from16 v20, v12

    move-wide/from16 v22, v18

    add-double v20, v20, v22

    goto :goto_4
.end method

.method protected abstract tableMenuButtonVisibleProperty()Ljavafx/beans/property/BooleanProperty;
.end method

.method protected final updatePlaceholderRegionVisibility()V
    .locals 10

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->visibleColCount:I

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getItemCount()I

    move-result v4

    if-nez v4, :cond_5

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 818
    .local v1, "visible":Z
    move v4, v1

    if-eqz v4, :cond_3

    .line 819
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    if-nez v4, :cond_1

    .line 820
    move-object v4, v0

    new-instance v5, Ljavafx/scene/layout/StackPane;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    .line 821
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "placeholder"

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 822
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 825
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v2, v4

    .line 827
    .local v2, "placeholderNode":Ljavafx/scene/Node;
    move-object v4, v2

    if-nez v4, :cond_7

    .line 828
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderLabel:Ljavafx/scene/control/Label;

    if-nez v4, :cond_2

    .line 829
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/Label;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderLabel:Ljavafx/scene/control/Label;

    .line 831
    :cond_2
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->visibleColCount:I

    if-nez v4, :cond_6

    sget-object v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->NO_COLUMNS_TEXT:Ljava/lang/String;

    :goto_1
    move-object v3, v4

    .line 832
    .local v3, "s":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderLabel:Ljavafx/scene/control/Label;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 834
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/scene/Node;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderLabel:Ljavafx/scene/control/Label;

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 835
    .line 840
    .end local v2    # "placeholderNode":Ljavafx/scene/Node;
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v5, v1

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setVisible(Z)V

    .line 841
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    if-eqz v4, :cond_4

    .line 842
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    move v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 844
    :cond_4
    return-void

    .line 816
    .end local v1    # "visible":Z
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 831
    .restart local v1    # "visible":Z
    .restart local v2    # "placeholderNode":Ljavafx/scene/Node;
    :cond_6
    sget-object v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->EMPTY_TABLE_TEXT:Ljava/lang/String;

    goto :goto_1

    .line 836
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->placeholderRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/scene/Node;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    .line 840
    .end local v2    # "placeholderNode":Ljavafx/scene/Node;
    :cond_8
    const/4 v5, 0x0

    goto :goto_3
.end method

.method protected updateRowCount()V
    .locals 5

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->updatePlaceholderRegionVisibility()V

    .line 555
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemCount:I

    move v1, v3

    .line 556
    .local v1, "oldCount":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getItemCount()I

    move-result v3

    move v2, v3

    .line 558
    .local v2, "newCount":I
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->itemCount:I

    .line 563
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellCount(I)V

    .line 565
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->forceCellRecreate:Z

    if-eqz v3, :cond_0

    .line 566
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRecreated:Z

    .line 567
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->forceCellRecreate:Z

    .line 577
    :goto_0
    return-void

    .line 568
    :cond_0
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_1

    .line 573
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsRebuilt:Z

    goto :goto_0

    .line 575
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->needCellsReconfigured:Z

    goto :goto_0
.end method

.method public updateTableItems(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TS;>;",
            "Ljavafx/collections/ObservableList",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableViewSkinBase<TM;TS;TC;TB;TI;TTC;>;"
    move-object v1, p1

    .local v1, "oldList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v2, p2

    .local v2, "newList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 628
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakRowCountListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 631
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 632
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->weakRowCountListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 635
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->rowCountDirty:Z

    .line 636
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->requestLayout()V

    .line 637
    return-void
.end method
