.class public Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
.super Ljavafx/scene/layout/StackPane;
.source "EmbeddedTextContextMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;
    }
.end annotation


# instance fields
.field private contextMenu:Ljavafx/scene/control/ContextMenu;

.field private menuBox:Ljavafx/scene/layout/HBox;

.field private pointer:Ljavafx/scene/layout/StackPane;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ContextMenu;)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-object v1, p1

    .local v1, "popupMenu":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 54
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/HBox;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/layout/HBox;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    .line 55
    move-object v2, v0

    new-instance v3, Ljavafx/scene/layout/StackPane;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "pointer"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 58
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->updateMenuItemContainer()V

    .line 59
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->ownerNodeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 79
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;Ljavafx/scene/control/MenuItem;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->hideAllMenus(Ljavafx/scene/control/MenuItem;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->lambda$new$350(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->lambda$new$351(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private hideAllMenus(Ljavafx/scene/control/MenuItem;)V
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 98
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "parentMenu":Ljavafx/scene/control/Menu;
    if-eqz v3, :cond_0

    .line 99
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->hide()V

    .line 100
    move-object v3, v2

    move-object v1, v3

    goto :goto_0

    .line 102
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 103
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 105
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$350(Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-object v1, p1

    .local v1, "arg0":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v3

    instance-of v3, v3, Ljavafx/scene/control/TextArea;

    if-eqz v3, :cond_1

    .line 63
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextArea;

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v2, v3

    .line 64
    .local v2, "tas":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextArea;

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    new-instance v4, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$1;-><init>(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 69
    .line 77
    .end local v2    # "tas":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v3

    instance-of v3, v3, Ljavafx/scene/control/TextField;

    if-eqz v3, :cond_0

    .line 70
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v2, v3

    .line 71
    .local v2, "tfs":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    new-instance v4, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$2;-><init>(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_0
.end method

.method private synthetic lambda$new$351(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->updateMenuItemContainer()V

    .line 82
    return-void
.end method

.method private updateMenuItemContainer()V
    .locals 9

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 87
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v2, v4

    .line 88
    .local v2, "item":Ljavafx/scene/control/MenuItem;
    new-instance v4, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;-><init>(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;Ljavafx/scene/control/MenuItem;)V

    move-object v3, v4

    .line 89
    .local v3, "menuItemContainer":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 90
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 91
    goto :goto_0

    .line 92
    .end local v2    # "item":Ljavafx/scene/control/MenuItem;
    .end local v3    # "menuItemContainer":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;
    :cond_0
    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 13

    .prologue
    .line 108
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-wide v2, p1

    .local v2, "width":D
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snapSize(D)D

    move-result-wide v8

    move-wide v4, v8

    .line 109
    .local v4, "pointerHeight":D
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/HBox;->prefHeight(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snapSize(D)D

    move-result-wide v8

    move-wide v6, v8

    .line 110
    .local v6, "menuBoxHeight":D
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snappedTopInset()D

    move-result-wide v8

    move-wide v10, v4

    add-double/2addr v8, v10

    move-wide v10, v6

    add-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snappedBottomInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 11

    .prologue
    .line 114
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/HBox;->prefWidth(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snapSize(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 115
    .local v4, "menuBoxWidth":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snappedLeftInset()D

    move-result-wide v6

    move-wide v8, v4

    add-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snappedRightInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    return-wide v1
.end method

.method protected layoutChildren()V
    .locals 40

    .prologue
    .line 119
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snappedLeftInset()D

    move-result-wide v26

    move-wide/from16 v3, v26

    .line 120
    .local v3, "left":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snappedRightInset()D

    move-result-wide v26

    move-wide/from16 v5, v26

    .line 121
    .local v5, "right":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snappedTopInset()D

    move-result-wide v26

    move-wide/from16 v7, v26

    .line 122
    .local v7, "top":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->getWidth()D

    move-result-wide v26

    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    add-double v28, v28, v30

    sub-double v26, v26, v28

    move-wide/from16 v9, v26

    .line 123
    .local v9, "width":D
    move-object/from16 v26, v2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v27

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v29

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v31, v0

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/layout/StackPane;->maxWidth(D)D

    move-result-wide v31

    invoke-static/range {v27 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v11, v26

    .line 124
    .local v11, "pointerWidth":D
    move-object/from16 v26, v2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v27

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v29

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v31, v0

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/layout/StackPane;->maxWidth(D)D

    move-result-wide v31

    invoke-static/range {v27 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v13, v26

    .line 125
    .local v13, "pointerHeight":D
    move-object/from16 v26, v2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/HBox;->prefWidth(D)D

    move-result-wide v27

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/HBox;->minWidth(D)D

    move-result-wide v29

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v31, v0

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/layout/HBox;->maxWidth(D)D

    move-result-wide v31

    invoke-static/range {v27 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v15, v26

    .line 126
    .local v15, "menuBoxWidth":D
    move-object/from16 v26, v2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/HBox;->prefWidth(D)D

    move-result-wide v27

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v29, v0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/HBox;->minWidth(D)D

    move-result-wide v29

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v31, v0

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/layout/HBox;->maxWidth(D)D

    move-result-wide v31

    invoke-static/range {v27 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v17, v26

    .line 127
    .local v17, "menuBoxHeight":D
    const-wide/16 v26, 0x0

    move-wide/from16 v19, v26

    .line 128
    .local v19, "sceneX":D
    const-wide/16 v26, 0x0

    move-wide/from16 v21, v26

    .line 129
    .local v21, "screenX":D
    const-wide/16 v26, 0x0

    move-wide/from16 v23, v26

    .line 132
    .local v23, "pointerX":D
    const/16 v26, 0x0

    move-object/from16 v25, v26

    .line 133
    .local v25, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljavafx/scene/control/TextArea;

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 134
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v26

    check-cast v26, Ljavafx/scene/control/TextArea;

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TextArea;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v26

    move-object/from16 v25, v26

    .line 139
    :cond_0
    :goto_0
    move-object/from16 v26, v25

    if-eqz v26, :cond_2

    .line 140
    move-object/from16 v26, v25

    const-string v27, "CONTEXT_MENU_SCENE_X"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 141
    move-object/from16 v26, v25

    const-string v27, "CONTEXT_MENU_SCENE_X"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    move-wide/from16 v19, v26

    .line 142
    move-object/from16 v26, v25

    const-string v27, "CONTEXT_MENU_SCENE_X"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 145
    :cond_1
    move-object/from16 v26, v25

    const-string v27, "CONTEXT_MENU_SCREEN_X"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 146
    move-object/from16 v26, v25

    const-string v27, "CONTEXT_MENU_SCREEN_X"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    move-wide/from16 v21, v26

    .line 147
    move-object/from16 v26, v25

    const-string v27, "CONTEXT_MENU_SCREEN_X"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 151
    :cond_2
    move-wide/from16 v26, v19

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_4

    .line 152
    move-wide/from16 v26, v9

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-wide/from16 v23, v26

    .line 157
    :goto_1
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    move-wide/from16 v27, v11

    move-wide/from16 v29, v13

    invoke-virtual/range {v26 .. v30}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 158
    move-object/from16 v26, v2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->pointer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v27, v0

    move-wide/from16 v28, v23

    move-wide/from16 v30, v7

    move-wide/from16 v32, v11

    move-wide/from16 v34, v13

    const-wide/16 v36, 0x0

    sget-object v38, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v39, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v26 .. v39}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 159
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v26, v0

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-virtual/range {v26 .. v30}, Ljavafx/scene/layout/HBox;->resize(DD)V

    .line 160
    move-object/from16 v26, v2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->menuBox:Ljavafx/scene/layout/HBox;

    move-object/from16 v27, v0

    move-wide/from16 v28, v3

    move-wide/from16 v30, v7

    move-wide/from16 v32, v13

    add-double v30, v30, v32

    move-wide/from16 v32, v15

    move-wide/from16 v34, v17

    const-wide/16 v36, 0x0

    sget-object v38, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v39, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v26 .. v39}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 161
    return-void

    .line 135
    :cond_3
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljavafx/scene/control/TextField;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 136
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v26

    check-cast v26, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TextField;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v26

    move-object/from16 v25, v26

    goto/16 :goto_0

    .line 154
    :cond_4
    move-wide/from16 v26, v21

    move-wide/from16 v28, v19

    sub-double v26, v26, v28

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/ContextMenu;->getX()D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v28, v19

    add-double v26, v26, v28

    move-wide/from16 v23, v26

    goto/16 :goto_1
.end method
