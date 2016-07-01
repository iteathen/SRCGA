.class public Lcom/sun/javafx/scene/control/skin/TreeViewSkin;
.super Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;
.source "TreeViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase",
        "<",
        "Ljavafx/scene/control/TreeView",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior",
        "<TT;>;",
        "Ljavafx/scene/control/TreeCell",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final IS_PANNABLE:Z

.field public static final RECREATE:Ljava/lang/String; = "treeRecreateKey"


# instance fields
.field private needCellsRebuilt:Z

.field private needCellsReconfigured:Z

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

.field private rootListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private weakRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private weakRootListener:Ljavafx/event/WeakEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/WeakEventHandler",
            "<",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$13;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->IS_PANNABLE:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TreeView;)V
    .locals 11

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v2, p1

    .local v2, "treeView":Ljavafx/scene/control/TreeView;
    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;-><init>(Ljavafx/scene/control/TreeView;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 142
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->needCellsRebuilt:Z

    .line 143
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->needCellsReconfigured:Z

    .line 145
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljavafx/collections/MapChangeListener;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->propertiesMapListener:Ljavafx/collections/MapChangeListener;

    .line 154
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->rootListener:Ljavafx/event/EventHandler;

    .line 71
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    sget-boolean v6, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->IS_PANNABLE:Z

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPannable(Z)V

    .line 72
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCreateCell(Ljavafx/util/Callback;)V

    .line 73
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getFixedCellSize()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setFixedCellSize(D)V

    .line 74
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 76
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->setRoot(Ljavafx/scene/control/TreeItem;)V

    .line 78
    move-object v5, v2

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/TreeView;)Ljavafx/event/EventHandler;

    move-result-object v5

    move-object v3, v5

    .line 95
    .local v3, "ml":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 96
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 98
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v4, v5

    .line 99
    .local v4, "properties":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v5, v4

    const-string v6, "treeRecreateKey"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 100
    move-object v5, v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->propertiesMapListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 103
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setOnFocusPreviousRow(Ljava/lang/Runnable;)V

    .line 104
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setOnFocusNextRow(Ljava/lang/Runnable;)V

    .line 105
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setOnMoveToFirstCell(Ljava/lang/Runnable;)V

    .line 106
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setOnMoveToLastCell(Ljava/lang/Runnable;)V

    .line 107
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setOnScrollPageDown(Ljavafx/util/Callback;)V

    .line 108
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setOnScrollPageUp(Ljavafx/util/Callback;)V

    .line 109
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setOnSelectPreviousRow(Ljava/lang/Runnable;)V

    .line 110
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setOnSelectNextRow(Ljava/lang/Runnable;)V

    .line 112
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "ROOT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 113
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->showRootProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    const-string v7, "SHOW_ROOT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 114
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "CELL_FACTORY"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 115
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    const-string v7, "FIXED_CELL_SIZE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 117
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->updateRowCount()V

    .line 118
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$545(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$546(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$543()V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$544()V

    return-void
.end method

.method static synthetic access$lambda$12()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$static$534()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/scene/control/TreeCell;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$535(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/scene/control/TreeCell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/TreeView;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$536(Ljavafx/scene/control/TreeView;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$537()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$538()V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$539()V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$540()V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$541(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->lambda$new$542(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private createDefaultCellImpl()Ljavafx/scene/control/TreeCell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return-object v0
.end method

.method private getRoot()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->weakRoot:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->weakRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeItem;

    goto :goto_0
.end method

.method private synthetic lambda$new$535(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/scene/control/TreeCell;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "flow1":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->createCell()Ljavafx/scene/control/TreeCell;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return-object v0
.end method

.method private static synthetic lambda$new$536(Ljavafx/scene/control/TreeView;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "treeView":Ljavafx/scene/control/TreeView;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getEditingItem()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView;->edit(Ljavafx/scene/control/TreeItem;)V

    .line 91
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->isFocusTraversable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->requestFocus()V

    .line 94
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$537()V
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->onFocusPreviousCell()V

    return-void
.end method

.method private synthetic lambda$new$538()V
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->onFocusNextCell()V

    return-void
.end method

.method private synthetic lambda$new$539()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->onMoveToFirstCell()V

    return-void
.end method

.method private synthetic lambda$new$540()V
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->onMoveToLastCell()V

    return-void
.end method

.method private synthetic lambda$new$541(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "isFocusDriven":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->onScrollPageDown(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return-object v0
.end method

.method private synthetic lambda$new$542(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "isFocusDriven":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->onScrollPageUp(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return-object v0
.end method

.method private synthetic lambda$new$543()V
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->onSelectPreviousCell()V

    return-void
.end method

.method private synthetic lambda$new$544()V
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->onSelectNextCell()V

    return-void
.end method

.method private synthetic lambda$new$545(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/MapChangeListener$Change;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v2, "treeRecreateKey"

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->needCellsRebuilt:Z

    .line 149
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->requestLayout()V

    .line 150
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "treeRecreateKey"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 152
    :cond_1
    goto :goto_0
.end method

.method private synthetic lambda$new$546(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/control/TreeItem$TreeModificationEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getAddedSize()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getRemovedSize()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 161
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->rowCountDirty:Z

    .line 162
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->requestLayout()V

    .line 182
    :cond_0
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView;->edit(Ljavafx/scene/control/TreeItem;)V

    .line 183
    return-void

    .line 163
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    invoke-static {}, Ljavafx/scene/control/TreeItem;->valueChangedEvent()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->needCellsRebuilt:Z

    .line 166
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->requestLayout()V

    goto :goto_0

    .line 170
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    .line 171
    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 172
    move-object v3, v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->expandedItemCountChangeEvent()Ljavafx/event/EventType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->rowCountDirty:Z

    .line 174
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->requestLayout()V

    .line 175
    goto :goto_0

    .line 177
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/event/EventType;->getSuperType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method

.method private static synthetic lambda$static$534()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    const-string v0, "com.sun.javafx.scene.control.skin.TreeViewSkin.pannable"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private onFocusNextCell()V
    .locals 4

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move-object v1, v2

    .line 387
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 389
    goto :goto_0
.end method

.method private onFocusPreviousCell()V
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move-object v1, v2

    .line 381
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 383
    goto :goto_0
.end method

.method private onMoveToFirstCell()V
    .locals 4

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 403
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 404
    return-void
.end method

.method private onMoveToLastCell()V
    .locals 4

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 408
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 409
    return-void
.end method

.method private onSelectNextCell()V
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndex()I

    move-result v2

    move v1, v2

    .line 398
    .local v1, "row":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 399
    return-void
.end method

.method private onSelectPreviousCell()V
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndex()I

    move-result v2

    move v1, v2

    .line 393
    .local v1, "row":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 394
    return-void
.end method

.method private setRoot(Ljavafx/scene/control/TreeItem;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "newRoot":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->weakRootListener:Ljavafx/event/WeakEventHandler;

    if-eqz v2, :cond_0

    .line 194
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->weakRootListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 196
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->weakRoot:Ljava/lang/ref/WeakReference;

    .line 197
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 198
    move-object v2, v0

    new-instance v3, Ljavafx/event/WeakEventHandler;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->rootListener:Ljavafx/event/EventHandler;

    invoke-direct {v4, v5}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->weakRootListener:Ljavafx/event/WeakEventHandler;

    .line 199
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->weakRootListener:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TreeItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 202
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->updateRowCount()V

    .line 203
    return-void
.end method


# virtual methods
.method protected computePrefHeight(DDDDD)D
    .locals 15

    .prologue
    .line 359
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
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

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 355
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
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

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-virtual/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->computePrefHeight(DDDDD)D

    move-result-wide v12

    const-wide v14, 0x3fe3c6ef363f685cL    # 0.618033987

    mul-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return-wide v1
.end method

.method public bridge synthetic createCell()Ljavafx/scene/control/IndexedCell;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->createCell()Ljavafx/scene/control/TreeCell;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return-object v0
.end method

.method public createCell()Ljavafx/scene/control/TreeCell;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getCellFactory()Ljavafx/util/Callback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 230
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getCellFactory()Ljavafx/util/Callback;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeCell;

    move-object v1, v4

    .line 236
    .local v1, "cell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_0

    .line 237
    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v2, v4

    .line 253
    .local v2, "disclosureNode":Ljavafx/scene/layout/StackPane;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "tree-disclosure-node"

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 255
    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v3, v4

    .line 256
    .local v3, "disclosureNodeArrow":Ljavafx/scene/layout/StackPane;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "arrow"

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 257
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 259
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeCell;->setDisclosureNode(Ljavafx/scene/Node;)V

    .line 262
    .end local v2    # "disclosureNode":Ljavafx/scene/layout/StackPane;
    .end local v3    # "disclosureNodeArrow":Ljavafx/scene/layout/StackPane;
    :cond_0
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeCell;->updateTreeView(Ljavafx/scene/control/TreeView;)V

    .line 264
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return-object v0

    .line 232
    .end local v1    # "cell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->createDefaultCellImpl()Ljavafx/scene/control/TreeCell;

    move-result-object v4

    move-object v1, v4

    .restart local v1    # "cell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    goto :goto_0
.end method

.method protected varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v8, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 564
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 538
    :pswitch_0
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljavafx/scene/Node;

    move-object v3, v8

    .line 539
    .local v3, "item":Ljavafx/scene/Node;
    move-object v8, v3

    instance-of v8, v8, Ljavafx/scene/control/TreeCell;

    if-eqz v8, :cond_0

    .line 541
    move-object v8, v3

    check-cast v8, Ljavafx/scene/control/TreeCell;

    move-object v4, v8

    .line 542
    .local v4, "cell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(I)V

    .line 543
    goto :goto_0

    .line 548
    .end local v3    # "item":Ljavafx/scene/Node;
    .end local v4    # "cell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :pswitch_1
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljavafx/collections/ObservableList;

    move-object v3, v8

    .line 549
    .local v3, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 550
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TreeView;

    invoke-virtual {v8}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v8

    move-object v4, v8

    .line 551
    .local v4, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v8, v4

    if-eqz v8, :cond_2

    .line 552
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 553
    move-object v8, v3

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v6, v8

    .line 554
    .local v6, "item":Ljavafx/scene/Node;
    move-object v8, v6

    instance-of v8, v8, Ljavafx/scene/control/TreeCell;

    if-eqz v8, :cond_1

    .line 556
    move-object v8, v6

    check-cast v8, Ljavafx/scene/control/TreeCell;

    move-object v7, v8

    .line 557
    .local v7, "cell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    .line 559
    .end local v7    # "cell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :cond_1
    goto :goto_1

    .line 561
    .end local v6    # "item":Ljavafx/scene/Node;
    :cond_2
    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    return v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 121
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 123
    const-string v3, "ROOT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->setRoot(Ljavafx/scene/control/TreeItem;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v3, "SHOW_ROOT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->isShowRoot()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 130
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 133
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->updateRowCount()V

    goto :goto_0

    .line 134
    :cond_3
    const-string v3, "CELL_FACTORY"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->recreateCells()V

    goto :goto_0

    .line 136
    :cond_4
    const-string v3, "FIXED_CELL_SIZE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFixedCellSize()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setFixedCellSize(D)V

    goto :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 19

    .prologue
    .line 365
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
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

    invoke-super/range {v9 .. v17}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->layoutChildren(DDDD)V

    .line 367
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->needCellsRebuilt:Z

    if-eqz v9, :cond_1

    .line 368
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->rebuildCells()V

    .line 373
    :cond_0
    :goto_0
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->needCellsRebuilt:Z

    .line 374
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->needCellsReconfigured:Z

    .line 376
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->resizeRelocate(DDDD)V

    .line 377
    return-void

    .line 369
    :cond_1
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->needCellsReconfigured:Z

    if-eqz v9, :cond_0

    .line 370
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->reconfigureCells()V

    goto :goto_0
.end method

.method public onScrollPageDown(Z)I
    .locals 11

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move v1, p1

    .local v1, "isFocusDriven":Z
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeCell;

    move-object v2, v9

    .line 416
    .local v2, "lastVisibleCell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v9, v2

    if-nez v9, :cond_0

    const/4 v9, -0x1

    move v0, v9

    .line 452
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    :goto_0
    return v0

    .line 418
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeView;

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 419
    .local v3, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeView;

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v9

    move-object v4, v9

    .line 420
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v9, v3

    if-eqz v9, :cond_1

    move-object v9, v4

    if-nez v9, :cond_2

    :cond_1
    const/4 v9, -0x1

    move v0, v9

    goto :goto_0

    .line 422
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v9

    move v5, v9

    .line 425
    .local v5, "lastVisibleCellIndex":I
    const/4 v9, 0x0

    move v6, v9

    .line 426
    .local v6, "isSelected":Z
    move v9, v1

    if-eqz v9, :cond_8

    .line 427
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->isFocused()Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/FocusModel;->isFocused(I)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_3
    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 432
    :goto_2
    move v9, v6

    if-eqz v9, :cond_6

    .line 433
    move v9, v1

    if-eqz v9, :cond_4

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v9

    move v10, v5

    if-eq v9, v10, :cond_5

    :cond_4
    move v9, v1

    if-nez v9, :cond_b

    move-object v9, v3

    .line 434
    invoke-virtual {v9}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_b

    :cond_5
    const/4 v9, 0x1

    :goto_3
    move v7, v9

    .line 436
    .local v7, "isLeadIndex":Z
    move v9, v7

    if-eqz v9, :cond_6

    .line 439
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->showAsFirst(Ljavafx/scene/control/IndexedCell;)V

    .line 441
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeCell;

    move-object v8, v9

    .line 442
    .local v8, "newLastVisibleCell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v9, v8

    if-nez v9, :cond_c

    move-object v9, v2

    :goto_4
    move-object v2, v9

    .line 450
    .end local v7    # "isLeadIndex":Z
    .end local v8    # "newLastVisibleCell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :cond_6
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v9

    move v7, v9

    .line 451
    .local v7, "newSelectionIndex":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(Ljavafx/scene/control/IndexedCell;)V

    .line 452
    move v9, v7

    move v0, v9

    goto/16 :goto_0

    .line 427
    .end local v7    # "newSelectionIndex":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 429
    :cond_8
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->isSelected()Z

    move-result v9

    if-nez v9, :cond_9

    move-object v9, v3

    move v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/SelectionModel;->isSelected(I)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v9, 0x1

    :goto_5
    move v6, v9

    goto :goto_2

    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 434
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 442
    .local v7, "isLeadIndex":Z
    .restart local v8    # "newLastVisibleCell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :cond_c
    move-object v9, v8

    goto :goto_4
.end method

.method public onScrollPageUp(Z)I
    .locals 11

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move v1, p1

    .local v1, "isFocusDriven":Z
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getFirstVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeCell;

    move-object v2, v9

    .line 460
    .local v2, "firstVisibleCell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v9, v2

    if-nez v9, :cond_0

    const/4 v9, -0x1

    move v0, v9

    .line 496
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    :goto_0
    return v0

    .line 462
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeView;

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 463
    .local v3, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeView;

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v9

    move-object v4, v9

    .line 464
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v9, v3

    if-eqz v9, :cond_1

    move-object v9, v4

    if-nez v9, :cond_2

    :cond_1
    const/4 v9, -0x1

    move v0, v9

    goto :goto_0

    .line 466
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v9

    move v5, v9

    .line 469
    .local v5, "firstVisibleCellIndex":I
    const/4 v9, 0x0

    move v6, v9

    .line 470
    .local v6, "isSelected":Z
    move v9, v1

    if-eqz v9, :cond_8

    .line 471
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->isFocused()Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/FocusModel;->isFocused(I)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_3
    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 476
    :goto_2
    move v9, v6

    if-eqz v9, :cond_6

    .line 477
    move v9, v1

    if-eqz v9, :cond_4

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v9

    move v10, v5

    if-eq v9, v10, :cond_5

    :cond_4
    move v9, v1

    if-nez v9, :cond_b

    move-object v9, v3

    .line 478
    invoke-virtual {v9}, Ljavafx/scene/control/SelectionModel;->getSelectedIndex()I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_b

    :cond_5
    const/4 v9, 0x1

    :goto_3
    move v7, v9

    .line 480
    .local v7, "isLeadIndex":Z
    move v9, v7

    if-eqz v9, :cond_6

    .line 483
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->showAsLast(Ljavafx/scene/control/IndexedCell;)V

    .line 485
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getFirstVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeCell;

    move-object v8, v9

    .line 486
    .local v8, "newFirstVisibleCell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v9, v8

    if-nez v9, :cond_c

    move-object v9, v2

    :goto_4
    move-object v2, v9

    .line 494
    .end local v7    # "isLeadIndex":Z
    .end local v8    # "newFirstVisibleCell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :cond_6
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->getIndex()I

    move-result v9

    move v7, v9

    .line 495
    .local v7, "newSelectionIndex":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(Ljavafx/scene/control/IndexedCell;)V

    .line 496
    move v9, v7

    move v0, v9

    goto/16 :goto_0

    .line 471
    .end local v7    # "newSelectionIndex":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 473
    :cond_8
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeCell;->isSelected()Z

    move-result v9

    if-nez v9, :cond_9

    move-object v9, v3

    move v10, v5

    invoke-virtual {v9, v10}, Ljavafx/scene/control/SelectionModel;->isSelected(I)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v9, 0x1

    :goto_5
    move v6, v9

    goto :goto_2

    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 478
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 486
    .local v7, "isLeadIndex":Z
    .restart local v8    # "newFirstVisibleCell":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :cond_c
    move-object v9, v8

    goto :goto_4
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 530
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-super {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    :goto_0
    return-object v0

    .line 503
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    :pswitch_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeView;

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v9

    move-object v3, v9

    .line 504
    .local v3, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<*>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v9

    move v4, v9

    .line 505
    .local v4, "focusedIndex":I
    move v9, v4

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 506
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getItemCount()I

    move-result v9

    if-lez v9, :cond_1

    .line 507
    const/4 v9, 0x0

    move v4, v9

    .line 512
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 509
    :cond_1
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 515
    .end local v3    # "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<*>;"
    .end local v4    # "focusedIndex":I
    :pswitch_1
    move-object v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v3, v9

    .line 516
    .local v3, "rowIndex":I
    move v9, v3

    if-gez v9, :cond_2

    const/4 v9, 0x0

    :goto_1
    move-object v0, v9

    goto :goto_0

    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v10, v3

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    goto :goto_1

    .line 519
    .end local v3    # "rowIndex":I
    :pswitch_2
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeView;

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 520
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v4, v9

    .line 521
    .local v4, "indices":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v4

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v9

    .line 522
    .local v5, "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v9, v4

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_2
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v7, v9

    .line 523
    .local v7, "i":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrivateCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeCell;

    move-object v8, v9

    .line 524
    .local v8, "row":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    move-object v9, v8

    if-eqz v9, :cond_3

    move-object v9, v5

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 525
    :cond_3
    goto :goto_2

    .line 526
    .end local v7    # "i":I
    .end local v8    # "row":Ljavafx/scene/control/TreeCell;, "Ljavafx/scene/control/TreeCell<TT;>;"
    :cond_4
    move-object v9, v5

    invoke-static {v9}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 528
    .end local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    .end local v4    # "indices":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Integer;>;"
    .end local v5    # "selection":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :pswitch_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 529
    :pswitch_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected updateRowCount()V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getItemCount()I

    move-result v2

    move v1, v2

    .line 216
    .local v1, "newCount":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellCount(I)V

    .line 223
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->needCellsRebuilt:Z

    .line 224
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->requestLayout()V

    .line 225
    return-void
.end method
