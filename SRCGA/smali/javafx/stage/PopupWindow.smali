.class public abstract Ljavafx/stage/PopupWindow;
.super Ljavafx/stage/Window;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/stage/PopupWindow$PopupEventRedirector;,
        Ljavafx/stage/PopupWindow$AnchorLocation;
    }
.end annotation


# instance fields
.field private final anchorLocation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/stage/PopupWindow$AnchorLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final anchorX:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private final anchorY:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private autoFix:Ljavafx/beans/property/BooleanProperty;

.field private autoHide:Ljavafx/beans/property/BooleanProperty;

.field private autofixActive:Z

.field private autohideActive:Z

.field private cachedAnchorBounds:Ljavafx/geometry/Bounds;

.field private cachedExtendedBounds:Ljavafx/geometry/Bounds;

.field private changeListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/stage/PopupWindow;",
            ">;"
        }
    .end annotation
.end field

.field private consumeAutoHidingEvents:Ljavafx/beans/property/BooleanProperty;

.field private hideOnEscape:Ljavafx/beans/property/BooleanProperty;

.field private onAutoHide:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private ownerFocusedListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ownerNode:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private ownerWindow:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/stage/Window;",
            ">;"
        }
    .end annotation
.end field

.field private final popupWindowUpdater:Ljavafx/beans/InvalidationListener;

.field private rootWindow:Ljavafx/stage/Window;

.field private weakOwnerNodeListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/stage/Window;-><init>()V

    .line 104
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->children:Ljava/util/List;

    .line 111
    move-object v3, v0

    new-instance v4, Ljavafx/stage/PopupWindow$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/stage/PopupWindow$1;-><init>(Ljavafx/stage/PopupWindow;)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->popupWindowUpdater:Ljavafx/beans/InvalidationListener;

    .line 125
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/stage/PopupWindow$$Lambda$1;->lambdaFactory$(Ljavafx/stage/PopupWindow;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->changeListener:Ljavafx/beans/value/ChangeListener;

    .line 131
    move-object v3, v0

    new-instance v4, Ljavafx/beans/value/WeakChangeListener;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/PopupWindow;->changeListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v5, v6}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->weakOwnerNodeListener:Ljavafx/beans/value/WeakChangeListener;

    .line 205
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string v7, "ownerWindow"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->ownerWindow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 220
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string v7, "ownerNode"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->ownerNode:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 246
    move-object v3, v0

    new-instance v4, Ljavafx/stage/PopupWindow$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljavafx/stage/PopupWindow$3;-><init>(Ljavafx/stage/PopupWindow;Z)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->autoFix:Ljavafx/beans/property/BooleanProperty;

    .line 276
    move-object v3, v0

    new-instance v4, Ljavafx/stage/PopupWindow$4;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/stage/PopupWindow$4;-><init>(Ljavafx/stage/PopupWindow;)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->autoHide:Ljavafx/beans/property/BooleanProperty;

    .line 300
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string v7, "onAutoHide"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->onAutoHide:Ljavafx/beans/property/ObjectProperty;

    .line 311
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string v7, "hideOnEscape"

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->hideOnEscape:Ljavafx/beans/property/BooleanProperty;

    .line 324
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string v7, "consumeAutoHidingEvents"

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->consumeAutoHidingEvents:Ljavafx/beans/property/BooleanProperty;

    .line 546
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string v7, "anchorX"

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->anchorX:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 567
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string v7, "anchorY"

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->anchorY:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 592
    move-object v3, v0

    new-instance v4, Ljavafx/stage/PopupWindow$5;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    sget-object v7, Ljavafx/stage/PopupWindow$AnchorLocation;->WINDOW_TOP_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    invoke-direct {v5, v6, v7}, Ljavafx/stage/PopupWindow$5;-><init>(Ljavafx/stage/PopupWindow;Ljavafx/stage/PopupWindow$AnchorLocation;)V

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->anchorLocation:Ljavafx/beans/property/ObjectProperty;

    .line 134
    new-instance v3, Ljavafx/scene/layout/Pane;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljavafx/scene/layout/Pane;-><init>()V

    move-object v1, v3

    .line 135
    .local v1, "popupRoot":Ljavafx/scene/layout/Pane;
    move-object v3, v1

    sget-object v4, Ljavafx/scene/layout/Background;->EMPTY:Ljavafx/scene/layout/Background;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Pane;->setBackground(Ljavafx/scene/layout/Background;)V

    .line 136
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "popup"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 138
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/scene/SceneHelper;->createPopupScene(Ljavafx/scene/Parent;)Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 139
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 140
    move-object v3, v0

    move-object v4, v2

    invoke-super {v3, v4}, Ljavafx/stage/Window;->setScene(Ljavafx/scene/Scene;)V

    .line 142
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/Pane;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow;->popupWindowUpdater:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 143
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/Pane;->boundsInLocalProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow;->popupWindowUpdater:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 144
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Scene;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    new-instance v4, Ljavafx/stage/PopupWindow$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljavafx/stage/PopupWindow$2;-><init>(Ljavafx/stage/PopupWindow;Ljavafx/scene/Scene;)V

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 176
    return-void
.end method

.method static synthetic access$002(Ljavafx/stage/PopupWindow;Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "x1":Ljavafx/geometry/Bounds;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->cachedExtendedBounds:Ljavafx/geometry/Bounds;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method static synthetic access$102(Ljavafx/stage/PopupWindow;Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "x1":Ljavafx/geometry/Bounds;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->cachedAnchorBounds:Ljavafx/geometry/Bounds;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/stage/PopupWindow;DD)V
    .locals 11

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/PopupWindow;
    move-wide v1, p1

    .local v1, "x1":D
    move-wide v3, p3

    .local v3, "x2":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/stage/PopupWindow;->updateWindow(DD)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/stage/PopupWindow;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->popupWindowUpdater:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/stage/PopupWindow;ZZ)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/PopupWindow;
    move v1, p1

    .local v1, "x1":Z
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/stage/PopupWindow;->handleAutofixActivation(ZZ)V

    return-void
.end method

.method static synthetic access$500(Ljavafx/stage/PopupWindow;ZZ)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/PopupWindow;
    move v1, p1

    .local v1, "x1":Z
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/stage/PopupWindow;->handleAutohideActivation(ZZ)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/stage/PopupWindow;D)D
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/PopupWindow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/stage/PopupWindow;->windowToAnchorX(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "x0":Ljavafx/stage/PopupWindow;
    return-wide v0
.end method

.method static synthetic access$700(Ljavafx/stage/PopupWindow;D)D
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/PopupWindow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/stage/PopupWindow;->windowToAnchorY(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "x0":Ljavafx/stage/PopupWindow;
    return-wide v0
.end method

.method static synthetic access$lambda$0(Ljavafx/stage/PopupWindow;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/stage/PopupWindow;->lambda$new$267(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/stage/PopupWindow;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/stage/PopupWindow;->lambda$bindOwnerFocusedProperty$268(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private bindOwnerFocusedProperty(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "ownerWindowValue":Ljavafx/stage/Window;
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/stage/PopupWindow$$Lambda$2;->lambdaFactory$(Ljavafx/stage/PopupWindow;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/stage/PopupWindow;->ownerFocusedListener:Ljavafx/beans/value/ChangeListener;

    .line 877
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/stage/Window;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow;->ownerFocusedListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 878
    return-void
.end method

.method private getAnchorBounds()Ljavafx/geometry/Bounds;
    .locals 3

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->cachedAnchorBounds:Ljavafx/geometry/Bounds;

    if-nez v1, :cond_0

    .line 701
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->getAnchorLocation()Ljavafx/stage/PopupWindow$AnchorLocation;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow$AnchorLocation;->isContentLocation()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 702
    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    .line 703
    invoke-virtual {v2}, Ljavafx/scene/Parent;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    .line 704
    :goto_0
    iput-object v2, v1, Ljavafx/stage/PopupWindow;->cachedAnchorBounds:Ljavafx/geometry/Bounds;

    .line 707
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->cachedAnchorBounds:Ljavafx/geometry/Bounds;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0

    .line 703
    .restart local v0    # "this":Ljavafx/stage/PopupWindow;
    :cond_1
    move-object v2, v0

    .line 704
    invoke-direct {v2}, Ljavafx/stage/PopupWindow;->getExtendedBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    goto :goto_0
.end method

.method private getExtendedBounds()Ljavafx/geometry/Bounds;
    .locals 6

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow;->cachedExtendedBounds:Ljavafx/geometry/Bounds;

    if-nez v2, :cond_0

    .line 691
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 692
    .local v1, "rootNode":Ljavafx/scene/Parent;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v4

    move-object v5, v1

    .line 693
    invoke-virtual {v5}, Ljavafx/scene/Parent;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v5

    .line 692
    invoke-direct {v3, v4, v5}, Ljavafx/stage/PopupWindow;->union(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v3

    iput-object v3, v2, Ljavafx/stage/PopupWindow;->cachedExtendedBounds:Ljavafx/geometry/Bounds;

    .line 696
    .end local v1    # "rootNode":Ljavafx/scene/Parent;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow;->cachedExtendedBounds:Ljavafx/geometry/Bounds;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method private static getRootWindow(Ljavafx/stage/Window;)Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "win":Ljavafx/stage/Window;
    :goto_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/stage/PopupWindow;

    if-eqz v1, :cond_0

    .line 826
    move-object v1, v0

    check-cast v1, Ljavafx/stage/PopupWindow;

    invoke-virtual {v1}, Ljavafx/stage/PopupWindow;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 828
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "win":Ljavafx/stage/Window;
    return-object v0
.end method

.method private handleAutofixActivation(ZZ)V
    .locals 10

    .prologue
    .line 888
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/PopupWindow;
    move v2, p1

    .local v2, "visible":Z
    move v3, p2

    .local v3, "autofix":Z
    move v5, v2

    if-eqz v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 889
    .local v4, "newAutofixActive":Z
    move-object v5, v1

    iget-boolean v5, v5, Ljavafx/stage/PopupWindow;->autofixActive:Z

    move v6, v4

    if-eq v5, v6, :cond_0

    .line 890
    move-object v5, v1

    move v6, v4

    iput-boolean v6, v5, Ljavafx/stage/PopupWindow;->autofixActive:Z

    .line 891
    move v5, v4

    if-eqz v5, :cond_2

    .line 892
    invoke-static {}, Ljavafx/stage/Screen;->getScreens()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/PopupWindow;->popupWindowUpdater:Ljavafx/beans/InvalidationListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 893
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/stage/PopupWindow;->getAnchorX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/stage/PopupWindow;->getAnchorY()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/stage/PopupWindow;->updateWindow(DD)V

    .line 898
    :cond_0
    :goto_1
    return-void

    .line 888
    .end local v4    # "newAutofixActive":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 895
    .restart local v4    # "newAutofixActive":Z
    :cond_2
    invoke-static {}, Ljavafx/stage/Screen;->getScreens()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/PopupWindow;->popupWindowUpdater:Ljavafx/beans/InvalidationListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_1
.end method

.method private handleAutohideActivation(ZZ)V
    .locals 6

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move v1, p1

    .local v1, "visible":Z
    move v2, p2

    .local v2, "autohide":Z
    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 904
    .local v3, "newAutohideActive":Z
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/stage/PopupWindow;->autohideActive:Z

    move v5, v3

    if-eq v4, v5, :cond_0

    .line 906
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Ljavafx/stage/PopupWindow;->autohideActive:Z

    .line 907
    move v4, v3

    if-eqz v4, :cond_2

    .line 908
    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow;->rootWindow:Ljavafx/stage/Window;

    invoke-virtual {v4}, Ljavafx/stage/Window;->increaseFocusGrabCounter()V

    .line 913
    :cond_0
    :goto_1
    return-void

    .line 903
    .end local v3    # "newAutohideActive":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 910
    .restart local v3    # "newAutohideActive":Z
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow;->rootWindow:Ljavafx/stage/Window;

    invoke-virtual {v4}, Ljavafx/stage/Window;->decreaseFocusGrabCounter()V

    goto :goto_1
.end method

.method private synthetic lambda$bindOwnerFocusedProperty$268(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/stage/PopupWindow;->setFocused(Z)V

    return-void
.end method

.method private synthetic lambda$new$267(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/stage/PopupWindow;->hide()V

    .line 129
    :cond_0
    return-void
.end method

.method private showImpl(Ljavafx/stage/Window;)V
    .locals 6

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "owner":Ljavafx/stage/Window;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow;->ownerWindow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 425
    move-object v4, v1

    instance-of v4, v4, Ljavafx/stage/PopupWindow;

    if-eqz v4, :cond_0

    .line 426
    move-object v4, v1

    check-cast v4, Ljavafx/stage/PopupWindow;

    iget-object v4, v4, Ljavafx/stage/PopupWindow;->children:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 429
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 430
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/stage/Window;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/PopupWindow;->weakOwnerNodeListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 433
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/stage/PopupWindow;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v2, v4

    .line 434
    .local v2, "sceneValue":Ljavafx/scene/Scene;
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/scene/SceneHelper;->parentEffectiveOrientationInvalidated(Ljavafx/scene/Scene;)V

    .line 437
    move-object v4, v1

    invoke-static {v4}, Ljavafx/stage/PopupWindow;->getRootWindow(Ljavafx/stage/Window;)Ljavafx/stage/Window;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v3, v4

    .line 438
    .local v3, "ownerScene":Ljavafx/scene/Scene;
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 439
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 440
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/Scene;->setUserAgentStylesheet(Ljava/lang/String;)V

    .line 442
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v4

    .line 443
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getCursor()Ljavafx/scene/Cursor;

    move-result-object v4

    if-nez v4, :cond_3

    .line 444
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getCursor()Ljavafx/scene/Cursor;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/Scene;->setCursor(Ljavafx/scene/Cursor;)V

    .line 449
    :cond_3
    move-object v4, v1

    invoke-static {v4}, Ljavafx/stage/PopupWindow;->getRootWindow(Ljavafx/stage/Window;)Ljavafx/stage/Window;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/stage/Window;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 454
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/stage/PopupWindow;->show()V

    .line 456
    :cond_4
    return-void
.end method

.method private startMonitorOwnerEvents(Ljavafx/stage/Window;)V
    .locals 5

    .prologue
    .line 859
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "ownerWindowValue":Ljavafx/stage/Window;
    move-object v3, v1

    .line 860
    invoke-virtual {v3}, Ljavafx/stage/Window;->getInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-result-object v3

    .line 861
    invoke-virtual {v3}, Lcom/sun/javafx/stage/WindowEventDispatcher;->getEventRedirector()Lcom/sun/javafx/event/EventRedirector;

    move-result-object v3

    move-object v2, v3

    .line 862
    .local v2, "parentEventRedirector":Lcom/sun/javafx/event/EventRedirector;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/stage/PopupWindow;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/event/EventRedirector;->addEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 863
    return-void
.end method

.method private stopMonitorOwnerEvents(Ljavafx/stage/Window;)V
    .locals 5

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "ownerWindowValue":Ljavafx/stage/Window;
    move-object v3, v1

    .line 867
    invoke-virtual {v3}, Ljavafx/stage/Window;->getInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-result-object v3

    .line 868
    invoke-virtual {v3}, Lcom/sun/javafx/stage/WindowEventDispatcher;->getEventRedirector()Lcom/sun/javafx/event/EventRedirector;

    move-result-object v3

    move-object v2, v3

    .line 869
    .local v2, "parentEventRedirector":Lcom/sun/javafx/event/EventRedirector;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/stage/PopupWindow;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/event/EventRedirector;->removeEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 870
    return-void
.end method

.method private unbindOwnerFocusedProperty(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "ownerWindowValue":Ljavafx/stage/Window;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/stage/Window;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow;->ownerFocusedListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 882
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/stage/PopupWindow;->ownerFocusedListener:Ljavafx/beans/value/ChangeListener;

    .line 883
    return-void
.end method

.method private union(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 25

    .prologue
    .line 792
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/stage/PopupWindow;
    move-object/from16 v2, p1

    .local v2, "bounds1":Ljavafx/geometry/Bounds;
    move-object/from16 v3, p2

    .local v3, "bounds2":Ljavafx/geometry/Bounds;
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    move-wide v4, v12

    .line 793
    .local v4, "minX":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    move-wide v6, v12

    .line 794
    .local v6, "minY":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v8, v12

    .line 795
    .local v8, "maxX":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v10, v12

    .line 797
    .local v10, "maxY":D
    new-instance v12, Ljavafx/geometry/BoundingBox;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    move-wide/from16 v20, v10

    move-wide/from16 v22, v6

    sub-double v20, v20, v22

    invoke-direct/range {v13 .. v21}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object v1, v12

    .end local v1    # "this":Ljavafx/stage/PopupWindow;
    return-object v1
.end method

.method private updateWindow(DD)V
    .locals 35

    .prologue
    .line 712
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/stage/PopupWindow;
    move-wide/from16 v4, p1

    .local v4, "newAnchorX":D
    move-wide/from16 v6, p3

    .local v6, "newAnchorY":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/stage/PopupWindow;->getAnchorLocation()Ljavafx/stage/PopupWindow$AnchorLocation;

    move-result-object v28

    move-object/from16 v8, v28

    .line 713
    .local v8, "anchorLocationValue":Ljavafx/stage/PopupWindow$AnchorLocation;
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/stage/PopupWindow;->getScene()Ljavafx/scene/Scene;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v28

    move-object/from16 v9, v28

    .line 714
    .local v9, "rootNode":Ljavafx/scene/Parent;
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Ljavafx/stage/PopupWindow;->getExtendedBounds()Ljavafx/geometry/Bounds;

    move-result-object v28

    move-object/from16 v10, v28

    .line 715
    .local v10, "extendedBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Ljavafx/stage/PopupWindow;->getAnchorBounds()Ljavafx/geometry/Bounds;

    move-result-object v28

    move-object/from16 v11, v28

    .line 717
    .local v11, "anchorBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Ljavafx/stage/PopupWindow$AnchorLocation;->getXCoef()D

    move-result-wide v28

    move-wide/from16 v12, v28

    .line 718
    .local v12, "anchorXCoef":D
    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Ljavafx/stage/PopupWindow$AnchorLocation;->getYCoef()D

    move-result-wide v28

    move-wide/from16 v14, v28

    .line 719
    .local v14, "anchorYCoef":D
    move-wide/from16 v28, v12

    move-object/from16 v30, v11

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v30

    mul-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 720
    .local v16, "anchorDeltaX":D
    move-wide/from16 v28, v14

    move-object/from16 v30, v11

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v30

    mul-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 721
    .local v18, "anchorDeltaY":D
    move-wide/from16 v28, v4

    move-wide/from16 v30, v16

    sub-double v28, v28, v30

    move-wide/from16 v20, v28

    .line 722
    .local v20, "anchorScrMinX":D
    move-wide/from16 v28, v6

    move-wide/from16 v30, v18

    sub-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 724
    .local v22, "anchorScrMinY":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Ljavafx/stage/PopupWindow;->autofixActive:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 725
    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    .line 726
    invoke-static/range {v28 .. v31}, Lcom/sun/javafx/util/Utils;->getScreenForPoint(DD)Ljavafx/stage/Screen;

    move-result-object v28

    move-object/from16 v24, v28

    .line 727
    .local v24, "currentScreen":Ljavafx/stage/Screen;
    move-object/from16 v28, v24

    .line 728
    invoke-static/range {v28 .. v28}, Lcom/sun/javafx/util/Utils;->hasFullScreenStage(Ljavafx/stage/Screen;)Z

    move-result v28

    if-eqz v28, :cond_3

    move-object/from16 v28, v24

    .line 729
    invoke-virtual/range {v28 .. v28}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v28

    .line 730
    :goto_0
    move-object/from16 v25, v28

    .line 732
    .local v25, "screenBounds":Ljavafx/geometry/Rectangle2D;
    move-wide/from16 v28, v12

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_4

    .line 735
    move-wide/from16 v28, v20

    move-object/from16 v30, v25

    .line 736
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v30

    move-object/from16 v32, v11

    .line 737
    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v32

    sub-double v30, v30, v32

    .line 735
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 738
    move-wide/from16 v28, v20

    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v30

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 747
    :goto_1
    move-wide/from16 v28, v14

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_5

    .line 749
    move-wide/from16 v28, v22

    move-object/from16 v30, v25

    .line 750
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v30

    move-object/from16 v32, v11

    .line 751
    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v32

    sub-double v30, v30, v32

    .line 749
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 752
    move-wide/from16 v28, v22

    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v30

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 762
    .end local v24    # "currentScreen":Ljavafx/stage/Screen;
    .end local v25    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    :cond_0
    :goto_2
    move-wide/from16 v28, v20

    move-object/from16 v30, v11

    .line 763
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v30

    sub-double v28, v28, v30

    move-object/from16 v30, v10

    .line 764
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 765
    .local v24, "windowScrMinX":D
    move-wide/from16 v28, v22

    move-object/from16 v30, v11

    .line 766
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v30

    sub-double v28, v28, v30

    move-object/from16 v30, v10

    .line 767
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 770
    .local v26, "windowScrMinY":D
    move-object/from16 v28, v3

    move-object/from16 v29, v10

    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/stage/PopupWindow;->setWidth(D)V

    .line 771
    move-object/from16 v28, v3

    move-object/from16 v29, v10

    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/stage/PopupWindow;->setHeight(D)V

    .line 773
    move-object/from16 v28, v9

    move-object/from16 v29, v10

    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v29

    move-wide/from16 v0, v29

    neg-double v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Parent;->setTranslateX(D)V

    .line 774
    move-object/from16 v28, v9

    move-object/from16 v29, v10

    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v29

    move-wide/from16 v0, v29

    neg-double v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Parent;->setTranslateY(D)V

    .line 778
    move-wide/from16 v28, v24

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v28

    if-nez v28, :cond_1

    .line 779
    move-object/from16 v28, v3

    move-wide/from16 v29, v24

    invoke-super/range {v28 .. v30}, Ljavafx/stage/Window;->setXInternal(D)V

    .line 782
    :cond_1
    move-wide/from16 v28, v26

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v28

    if-nez v28, :cond_2

    .line 783
    move-object/from16 v28, v3

    move-wide/from16 v29, v26

    invoke-super/range {v28 .. v30}, Ljavafx/stage/Window;->setYInternal(D)V

    .line 787
    :cond_2
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/stage/PopupWindow;->anchorX:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object/from16 v28, v0

    move-wide/from16 v29, v20

    move-wide/from16 v31, v16

    add-double v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 788
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/stage/PopupWindow;->anchorY:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object/from16 v28, v0

    move-wide/from16 v29, v22

    move-wide/from16 v31, v18

    add-double v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 789
    return-void

    .line 729
    .end local v26    # "windowScrMinY":D
    .local v24, "currentScreen":Ljavafx/stage/Screen;
    :cond_3
    move-object/from16 v28, v24

    .line 730
    invoke-virtual/range {v28 .. v28}, Ljavafx/stage/Screen;->getVisualBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v28

    goto/16 :goto_0

    .line 741
    .restart local v25    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    :cond_4
    move-wide/from16 v28, v20

    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v30

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    .line 742
    move-wide/from16 v28, v20

    move-object/from16 v30, v25

    .line 743
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v30

    move-object/from16 v32, v11

    .line 744
    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v32

    sub-double v30, v30, v32

    .line 742
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v20, v28

    goto/16 :goto_1

    .line 755
    :cond_5
    move-wide/from16 v28, v22

    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v30

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v22, v28

    .line 756
    move-wide/from16 v28, v22

    move-object/from16 v30, v25

    .line 757
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v30

    move-object/from16 v32, v11

    .line 758
    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v32

    sub-double v30, v30, v32

    .line 756
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v22, v28

    goto/16 :goto_2
.end method

.method private validateOwnerWindow(Ljavafx/stage/Window;)V
    .locals 6

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "owner":Ljavafx/stage/Window;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 917
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Owner window must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 920
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Ljavafx/stage/PopupWindow;->wouldCreateCycle(Ljavafx/stage/Window;Ljavafx/stage/Window;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 921
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Specified owner window would create cycle in the window hierarchy"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 926
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v2

    move-object v3, v1

    if-eq v2, v3, :cond_2

    .line 927
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Popup is already shown with different owner window"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 930
    :cond_2
    return-void
.end method

.method private windowToAnchorX(D)D
    .locals 11

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-wide v1, p1

    .local v1, "windowX":D
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/stage/PopupWindow;->getAnchorBounds()Ljavafx/geometry/Bounds;

    move-result-object v4

    move-object v3, v4

    .line 802
    .local v3, "anchorBounds":Ljavafx/geometry/Bounds;
    move-wide v4, v1

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/stage/PopupWindow;->getExtendedBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v3

    .line 803
    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v0

    .line 804
    invoke-virtual {v6}, Ljavafx/stage/PopupWindow;->getAnchorLocation()Ljavafx/stage/PopupWindow$AnchorLocation;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/stage/PopupWindow$AnchorLocation;->getXCoef()D

    move-result-wide v6

    move-object v8, v3

    .line 805
    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-wide v0
.end method

.method private windowToAnchorY(D)D
    .locals 11

    .prologue
    .line 809
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-wide v1, p1

    .local v1, "windowY":D
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/stage/PopupWindow;->getAnchorBounds()Ljavafx/geometry/Bounds;

    move-result-object v4

    move-object v3, v4

    .line 810
    .local v3, "anchorBounds":Ljavafx/geometry/Bounds;
    move-wide v4, v1

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/stage/PopupWindow;->getExtendedBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v3

    .line 811
    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v0

    .line 812
    invoke-virtual {v6}, Ljavafx/stage/PopupWindow;->getAnchorLocation()Ljavafx/stage/PopupWindow$AnchorLocation;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/stage/PopupWindow$AnchorLocation;->getYCoef()D

    move-result-wide v6

    move-object v8, v3

    .line 813
    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-wide v0
.end method

.method private static wouldCreateCycle(Ljavafx/stage/Window;Ljavafx/stage/Window;)Z
    .locals 4

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "parent":Ljavafx/stage/Window;
    move-object v1, p1

    .local v1, "child":Ljavafx/stage/Window;
    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_1

    .line 934
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 935
    const/4 v2, 0x1

    move v0, v2

    .line 941
    .end local v0    # "parent":Ljavafx/stage/Window;
    :goto_1
    return v0

    .line 938
    .restart local v0    # "parent":Ljavafx/stage/Window;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window;->getWindowOwner()Ljavafx/stage/Window;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 941
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final anchorLocationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/stage/PopupWindow$AnchorLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->anchorLocation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final anchorXProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->anchorX:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final anchorYProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->anchorY:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final autoFixProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->autoFix:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final autoHideProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->autoHide:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final consumeAutoHidingEventsProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->consumeAutoHidingEvents:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method createInternalEventDispatcher()Lcom/sun/javafx/stage/WindowEventDispatcher;
    .locals 9

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    new-instance v1, Lcom/sun/javafx/stage/WindowEventDispatcher;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    new-instance v3, Ljavafx/stage/PopupWindow$PopupEventRedirector;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/stage/PopupWindow$PopupEventRedirector;-><init>(Ljavafx/stage/PopupWindow;)V

    new-instance v4, Lcom/sun/javafx/stage/WindowCloseRequestHandler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/stage/WindowCloseRequestHandler;-><init>(Ljavafx/stage/Window;)V

    new-instance v5, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/stage/WindowEventDispatcher;-><init>(Lcom/sun/javafx/event/EventRedirector;Lcom/sun/javafx/stage/WindowCloseRequestHandler;Lcom/sun/javafx/event/EventHandlerManager;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method doAutoHide()V
    .locals 8

    .prologue
    .line 838
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/PopupWindow;->hide()V

    .line 839
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/PopupWindow;->getOnAutoHide()Ljavafx/event/EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 840
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/PopupWindow;->getOnAutoHide()Ljavafx/event/EventHandler;

    move-result-object v1

    new-instance v2, Ljavafx/event/Event;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    sget-object v6, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    invoke-interface {v1, v2}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 843
    :cond_0
    return-void
.end method

.method public final getAnchorLocation()Ljavafx/stage/PopupWindow$AnchorLocation;
    .locals 2

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->anchorLocation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final getAnchorX()D
    .locals 3

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->anchorX:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-wide v0
.end method

.method public final getAnchorY()D
    .locals 3

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->anchorY:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-wide v0
.end method

.method public final getConsumeAutoHidingEvents()Z
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->consumeAutoHidingEvents:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return v0
.end method

.method protected getContent()Ljavafx/collections/ObservableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 189
    .local v1, "rootNode":Ljavafx/scene/Parent;
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/Group;

    if-eqz v2, :cond_0

    .line 190
    move-object v2, v1

    check-cast v2, Ljavafx/scene/Group;

    invoke-virtual {v2}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v0, v2

    .line 194
    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    :goto_0
    return-object v0

    .line 193
    .restart local v0    # "this":Ljavafx/stage/PopupWindow;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/layout/Pane;

    if-eqz v2, :cond_1

    .line 194
    move-object v2, v1

    check-cast v2, Ljavafx/scene/layout/Pane;

    invoke-virtual {v2}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 197
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "The content of the Popup can\'t be accessed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getOnAutoHide()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->onAutoHide:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final getOwnerNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->ownerNode:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final getOwnerWindow()Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->ownerWindow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/stage/Window;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method getWindowOwner()Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/PopupWindow;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public hide()V
    .locals 5

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/stage/PopupWindow;

    move-object v2, v3

    .line 463
    .local v2, "c":Ljavafx/stage/PopupWindow;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->hide()V

    .line 466
    :cond_0
    goto :goto_0

    .line 467
    .end local v2    # "c":Ljavafx/stage/PopupWindow;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 468
    move-object v3, v0

    invoke-super {v3}, Ljavafx/stage/Window;->hide()V

    .line 470
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/stage/Window;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow;->weakOwnerNodeListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 471
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Node;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow;->weakOwnerNodeListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 472
    :cond_3
    return-void
.end method

.method public final hideOnEscapeProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->hideOnEscape:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method protected impl_visibleChanged(Z)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move v1, p1

    .local v1, "visible":Z
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Ljavafx/stage/Window;->impl_visibleChanged(Z)V

    .line 512
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v3

    move-object v2, v3

    .line 513
    .local v2, "ownerWindowValue":Ljavafx/stage/Window;
    move v3, v1

    if-eqz v3, :cond_0

    .line 514
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Ljavafx/stage/PopupWindow;->getRootWindow(Ljavafx/stage/Window;)Ljavafx/stage/Window;

    move-result-object v4

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->rootWindow:Ljavafx/stage/Window;

    .line 516
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/stage/PopupWindow;->startMonitorOwnerEvents(Ljavafx/stage/Window;)V

    .line 522
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/stage/PopupWindow;->bindOwnerFocusedProperty(Ljavafx/stage/Window;)V

    .line 523
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/stage/Window;->isFocused()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/stage/PopupWindow;->setFocused(Z)V

    .line 524
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/stage/PopupWindow;->isAutoFix()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Ljavafx/stage/PopupWindow;->handleAutofixActivation(ZZ)V

    .line 525
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/stage/PopupWindow;->isAutoHide()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Ljavafx/stage/PopupWindow;->handleAutohideActivation(ZZ)V

    .line 535
    :goto_0
    const-string v3, "PopupWindow.storeVisible for [PopupWindow] finished"

    invoke-static {v3}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 536
    return-void

    .line 527
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/stage/PopupWindow;->stopMonitorOwnerEvents(Ljavafx/stage/Window;)V

    .line 528
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/stage/PopupWindow;->unbindOwnerFocusedProperty(Ljavafx/stage/Window;)V

    .line 529
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/stage/PopupWindow;->setFocused(Z)V

    .line 530
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/stage/PopupWindow;->isAutoFix()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Ljavafx/stage/PopupWindow;->handleAutofixActivation(ZZ)V

    .line 531
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/stage/PopupWindow;->isAutoHide()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Ljavafx/stage/PopupWindow;->handleAutohideActivation(ZZ)V

    .line 532
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/stage/PopupWindow;->rootWindow:Ljavafx/stage/Window;

    goto :goto_0
.end method

.method protected impl_visibleChanging(Z)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move v1, p1

    .local v1, "visible":Z
    move-object v5, v0

    move v6, v1

    invoke-super {v5, v6}, Ljavafx/stage/Window;->impl_visibleChanging(Z)V

    .line 481
    const-string v5, "PopupWindow.storeVisible for [PopupWindow]"

    invoke-static {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    move-object v2, v5

    .line 484
    .local v2, "toolkit":Lcom/sun/javafx/tk/Toolkit;
    move v5, v1

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/PopupWindow;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-nez v5, :cond_1

    .line 489
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    move-object v4, v5

    .line 490
    .local v4, "securityManager":Ljava/lang/SecurityManager;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 491
    move-object v5, v4

    new-instance v6, Ljava/security/AllPermission;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 493
    :cond_0
    sget-object v5, Ljavafx/stage/StageStyle;->TRANSPARENT:Ljavafx/stage/StageStyle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 496
    .line 497
    .end local v4    # "securityManager":Ljava/lang/SecurityManager;
    .local v3, "popupStyle":Ljavafx/stage/StageStyle;
    :goto_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/stage/PopupWindow;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljavafx/stage/PopupWindow;->acc:Ljava/security/AccessControlContext;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/tk/Toolkit;->createTKPopupStage(Ljavafx/stage/Window;Ljavafx/stage/StageStyle;Lcom/sun/javafx/tk/TKStage;Ljava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;

    move-result-object v6

    iput-object v6, v5, Ljavafx/stage/PopupWindow;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    .line 498
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/stage/PopupWindowPeerListener;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/javafx/stage/PopupWindowPeerListener;-><init>(Ljavafx/stage/PopupWindow;)V

    iput-object v6, v5, Ljavafx/stage/PopupWindow;->peerListener:Lcom/sun/javafx/stage/WindowPeerListener;

    .line 500
    .end local v3    # "popupStyle":Ljavafx/stage/StageStyle;
    :cond_1
    return-void

    .line 494
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 495
    .local v4, "e":Ljava/lang/SecurityException;
    sget-object v5, Ljavafx/stage/StageStyle;->UNDECORATED:Ljavafx/stage/StageStyle;

    move-object v3, v5

    .restart local v3    # "popupStyle":Ljavafx/stage/StageStyle;
    goto :goto_0
.end method

.method public final isAutoFix()Z
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->autoFix:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return v0
.end method

.method public final isAutoHide()Z
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->autoHide:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return v0
.end method

.method public final isHideOnEscape()Z
    .locals 2

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->hideOnEscape:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return v0
.end method

.method notifyLocationChanged(DD)V
    .locals 11

    .prologue
    .line 681
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/PopupWindow;
    move-wide v2, p1

    .local v2, "newX":D
    move-wide v4, p3

    .local v4, "newY":D
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v4

    invoke-super {v6, v7, v8, v9, v10}, Ljavafx/stage/Window;->notifyLocationChanged(DD)V

    .line 682
    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/PopupWindow;->anchorX:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljavafx/stage/PopupWindow;->windowToAnchorX(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 683
    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/PopupWindow;->anchorY:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v7, v1

    move-wide v8, v4

    invoke-direct {v7, v8, v9}, Ljavafx/stage/PopupWindow;->windowToAnchorY(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 684
    return-void
.end method

.method public final onAutoHideProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->onAutoHide:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final ownerNodeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->ownerNode:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final ownerWindowProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/stage/Window;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow;->ownerWindow:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow;
    return-object v0
.end method

.method public final setAnchorLocation(Ljavafx/stage/PopupWindow$AnchorLocation;)V
    .locals 4

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "value":Ljavafx/stage/PopupWindow$AnchorLocation;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow;->anchorLocation:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method public final setAnchorX(D)V
    .locals 9

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/stage/PopupWindow;->getAnchorY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/stage/PopupWindow;->updateWindow(DD)V

    .line 551
    return-void
.end method

.method public final setAnchorY(D)V
    .locals 9

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/stage/PopupWindow;->getAnchorX()D

    move-result-wide v4

    move-wide v6, v1

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/stage/PopupWindow;->updateWindow(DD)V

    .line 572
    return-void
.end method

.method public final setAutoFix(Z)V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow;->autoFix:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setAutoHide(Z)V
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow;->autoHide:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setConsumeAutoHidingEvents(Z)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow;->consumeAutoHidingEvents:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 330
    return-void
.end method

.method public final setHideOnEscape(Z)V
    .locals 4

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow;->hideOnEscape:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setOnAutoHide(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow;->onAutoHide:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected final setScene(Ljavafx/scene/Scene;)V
    .locals 5

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method setXInternal(D)V
    .locals 9

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-object v4, v0

    move-wide v5, v1

    invoke-direct {v4, v5, v6}, Ljavafx/stage/PopupWindow;->windowToAnchorX(D)D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/stage/PopupWindow;->getAnchorY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/stage/PopupWindow;->updateWindow(DD)V

    .line 672
    return-void
.end method

.method setYInternal(D)V
    .locals 9

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/stage/PopupWindow;->getAnchorX()D

    move-result-wide v4

    move-object v6, v0

    move-wide v7, v1

    invoke-direct {v6, v7, v8}, Ljavafx/stage/PopupWindow;->windowToAnchorY(D)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/stage/PopupWindow;->updateWindow(DD)V

    .line 677
    return-void
.end method

.method public show(Ljavafx/scene/Node;DD)V
    .locals 14

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "ownerNode":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "anchorX":D
    move-wide/from16 v4, p4

    .local v4, "anchorY":D
    move-object v8, v1

    if-nez v8, :cond_0

    .line 378
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "The owner node must not be null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 381
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v8

    move-object v6, v8

    .line 382
    .local v6, "ownerNodeScene":Ljavafx/scene/Scene;
    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v6

    .line 383
    invoke-virtual {v8}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v8

    if-nez v8, :cond_2

    .line 384
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "The owner node needs to be associated with a window"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 388
    :cond_2
    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v8

    move-object v7, v8

    .line 389
    .local v7, "newOwnerWindow":Ljavafx/stage/Window;
    move-object v8, v0

    move-object v9, v7

    invoke-direct {v8, v9}, Ljavafx/stage/PopupWindow;->validateOwnerWindow(Ljavafx/stage/Window;)V

    .line 391
    move-object v8, v0

    iget-object v8, v8, Ljavafx/stage/PopupWindow;->ownerNode:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 394
    move-object v8, v1

    if-eqz v8, :cond_3

    .line 395
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/Node;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/stage/PopupWindow;->weakOwnerNodeListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v8, v9}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 398
    :cond_3
    move-object v8, v0

    move-wide v9, v2

    move-wide v11, v4

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/stage/PopupWindow;->updateWindow(DD)V

    .line 399
    move-object v8, v0

    move-object v9, v7

    invoke-direct {v8, v9}, Ljavafx/stage/PopupWindow;->showImpl(Ljavafx/stage/Window;)V

    .line 400
    return-void
.end method

.method public show(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "owner":Ljavafx/stage/Window;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/stage/PopupWindow;->validateOwnerWindow(Ljavafx/stage/Window;)V

    .line 349
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/stage/PopupWindow;->showImpl(Ljavafx/stage/Window;)V

    .line 350
    return-void
.end method

.method public show(Ljavafx/stage/Window;DD)V
    .locals 12

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow;
    move-object v1, p1

    .local v1, "ownerWindow":Ljavafx/stage/Window;
    move-wide v2, p2

    .local v2, "anchorX":D
    move-wide/from16 v4, p4

    .local v4, "anchorY":D
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Ljavafx/stage/PopupWindow;->validateOwnerWindow(Ljavafx/stage/Window;)V

    .line 418
    move-object v6, v0

    move-wide v7, v2

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/stage/PopupWindow;->updateWindow(DD)V

    .line 419
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Ljavafx/stage/PopupWindow;->showImpl(Ljavafx/stage/Window;)V

    .line 420
    return-void
.end method
