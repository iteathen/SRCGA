.class public Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
.super Ljavafx/scene/layout/Region;
.source "ContextMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuLabel;,
        Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;,
        Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;,
        Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;,
        Lcom/sun/javafx/scene/control/skin/ContextMenuContent$StyleableProperties;
    }
.end annotation


# static fields
.field private static final CHECKED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private clipRect:Ljavafx/scene/shape/Rectangle;

.field private contextMenu:Ljavafx/scene/control/ContextMenu;

.field private contextMenuItemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private currentFocusedIndex:I

.field private downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

.field private isFirstShow:Z

.field itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

.field private itemsDirty:Z

.field private maxGraphicWidth:D

.field private maxLabelWidth:D

.field private maxLeftWidth:D

.field private maxRightWidth:D

.field private maxRowHeight:D

.field private menuItemVisibleListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private menuShowingListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private oldWidth:D

.field private openSubmenu:Ljavafx/scene/control/Menu;

.field private popupShowingListener:Ljavafx/beans/InvalidationListener;

.field selectedBackground:Ljavafx/scene/layout/Region;

.field private submenu:Ljavafx/scene/control/ContextMenu;

.field private ty:D

.field private upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

.field private weakPopupShowingListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1598
    const-string v0, "selected"

    .line 1599
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1600
    const-string v0, "disabled"

    .line 1601
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1602
    const-string v0, "checked"

    .line 1603
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->CHECKED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1602
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ContextMenu;)V
    .locals 9

    .prologue
    .line 106
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, p1

    .local v2, "popupMenu":Ljavafx/scene/control/ContextMenu;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/layout/Region;-><init>()V

    .line 78
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxGraphicWidth:D

    .line 79
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRightWidth:D

    .line 80
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLabelWidth:D

    .line 81
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    .line 82
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLeftWidth:D

    .line 83
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->oldWidth:D

    .line 94
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    .line 96
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsDirty:Z

    .line 97
    move-object v3, v1

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->popupShowingListener:Ljavafx/beans/InvalidationListener;

    .line 100
    move-object v3, v1

    new-instance v4, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->popupShowingListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v5, v6}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->weakPopupShowingListener:Ljavafx/beans/WeakInvalidationListener;

    .line 454
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->isFirstShow:Z

    .line 784
    move-object v3, v1

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->menuShowingListener:Ljavafx/beans/value/ChangeListener;

    .line 797
    move-object v3, v1

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenuItemsListener:Ljavafx/collections/ListChangeListener;

    .line 814
    move-object v3, v1

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->menuItemVisibleListener:Ljavafx/beans/value/ChangeListener;

    .line 107
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 108
    move-object v3, v1

    new-instance v4, Ljavafx/scene/shape/Rectangle;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    .line 109
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Rectangle;->setSmooth(Z)V

    .line 110
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    .line 112
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->setClip(Ljavafx/scene/Node;)V

    .line 114
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    .line 115
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->setUp(Z)V

    .line 116
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->setFocusTraversable(Z)V

    .line 118
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    .line 119
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->setUp(Z)V

    .line 120
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->setFocusTraversable(Z)V

    .line 121
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 122
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 123
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 124
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->initialize()V

    .line 125
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->setUpBinds()V

    .line 126
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->updateItems()V

    .line 128
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->weakPopupShowingListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 134
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    new-instance v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;-><init>(Ljavafx/scene/Node;)V

    .line 137
    :cond_0
    return-void
.end method

.method static synthetic access$1100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ty:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-wide v0
.end method

.method static synthetic access$1400()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$1500()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->CHECKED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$1600()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->computeVisualMetrics()V

    return-void
.end method

.method static synthetic access$1802(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;I)I
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return v0
.end method

.method static synthetic access$1900(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/MenuItem;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->hideAllMenus(Ljavafx/scene/control/MenuItem;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLeftWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-wide v0
.end method

.method static synthetic access$2100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxGraphicWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-wide v0
.end method

.method static synthetic access$2200(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLabelWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-wide v0
.end method

.method static synthetic access$2300(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRightWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-wide v0
.end method

.method static synthetic access$2400(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->createSubmenu()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/Menu;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->openSubmenu:Ljavafx/scene/control/Menu;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method static synthetic access$2600(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->hideSubmenu()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/Menu;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/Menu;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->showMenu(Ljavafx/scene/control/Menu;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->processRightKey(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->processLeftKey(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->moveToNextSibling()V

    return-void
.end method

.method static synthetic access$800(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->moveToPreviousSibling()V

    return-void
.end method

.method static synthetic access$900(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->selectMenuItem()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->lambda$new$327(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->lambda$new$331(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->lambda$new$332(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->lambda$new$333(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->lambda$initialize$328(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/event/Event;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->lambda$initialize$329(Ljavafx/event/Event;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/input/ScrollEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->lambda$initialize$330(Ljavafx/scene/input/ScrollEvent;)V

    return-void
.end method

.method private computeVisualMetrics()V
    .locals 14

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRightWidth:D

    .line 163
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLabelWidth:D

    .line 164
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    .line 165
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxGraphicWidth:D

    .line 166
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLeftWidth:D

    .line 168
    const/4 v7, 0x0

    move v1, v7

    .local v1, "i":I
    :goto_0
    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 169
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v1

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v2, v7

    .line 170
    .local v2, "child":Ljavafx/scene/Node;
    move-object v7, v2

    instance-of v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v7, :cond_0

    .line 171
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v1

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    move-object v3, v7

    .line 173
    .local v3, "menuItemContainer":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->isVisible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 168
    .end local v3    # "menuItemContainer":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .restart local v3    # "menuItemContainer":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    :cond_1
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    move-wide v4, v7

    .line 176
    .local v4, "alt":D
    move-object v7, v3

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 177
    .local v6, "n":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 178
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v7

    sget-object v8, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v7, v8, :cond_5

    .line 179
    move-object v7, v0

    move-object v8, v6

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v7

    move-wide v4, v7

    .line 181
    :goto_2
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLeftWidth:D

    move-object v10, v0

    move-object v11, v6

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLeftWidth:D

    .line 182
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    move-object v10, v6

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    .line 185
    :cond_2
    move-object v7, v3

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 186
    move-object v7, v6

    if-eqz v7, :cond_3

    .line 187
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v7

    sget-object v8, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v7, v8, :cond_6

    .line 188
    move-object v7, v0

    move-object v8, v6

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v7

    move-wide v4, v7

    .line 190
    :goto_3
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxGraphicWidth:D

    move-object v10, v0

    move-object v11, v6

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxGraphicWidth:D

    .line 191
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    move-object v10, v6

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    .line 194
    :cond_3
    move-object v7, v3

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$200(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 195
    move-object v7, v6

    if-eqz v7, :cond_4

    .line 196
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v7

    sget-object v8, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v7, v8, :cond_7

    .line 197
    move-object v7, v0

    move-object v8, v6

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v7

    move-wide v4, v7

    .line 199
    :goto_4
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLabelWidth:D

    move-object v10, v0

    move-object v11, v6

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLabelWidth:D

    .line 200
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    move-object v10, v6

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    .line 203
    :cond_4
    move-object v7, v3

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$300(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 204
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 205
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v7

    sget-object v8, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v7, v8, :cond_8

    .line 206
    move-object v7, v0

    move-object v8, v6

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v7

    move-wide v4, v7

    .line 208
    :goto_5
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRightWidth:D

    move-object v10, v0

    move-object v11, v6

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRightWidth:D

    .line 209
    move-object v7, v0

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    move-object v10, v6

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRowHeight:D

    goto/16 :goto_1

    .line 180
    :cond_5
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    move-wide v4, v7

    goto/16 :goto_2

    .line 189
    :cond_6
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    move-wide v4, v7

    goto/16 :goto_3

    .line 198
    :cond_7
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    move-wide v4, v7

    goto :goto_4

    .line 207
    :cond_8
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    move-wide v4, v7

    goto :goto_5

    .line 229
    .end local v2    # "child":Ljavafx/scene/Node;
    .end local v3    # "menuItemContainer":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    .end local v4    # "alt":D
    .end local v6    # "n":Ljavafx/scene/Node;
    :cond_9
    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxRightWidth:D

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLabelWidth:D

    add-double/2addr v7, v9

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxGraphicWidth:D

    add-double/2addr v7, v9

    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->maxLeftWidth:D

    add-double/2addr v7, v9

    move-wide v1, v7

    .line 230
    .local v1, "newWidth":D
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v7}, Ljavafx/scene/control/ContextMenu;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v7

    move-object v3, v7

    .line 231
    .local v3, "ownerWindow":Ljavafx/stage/Window;
    move-object v7, v3

    instance-of v7, v7, Ljavafx/scene/control/ContextMenu;

    if-eqz v7, :cond_a

    .line 232
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v7}, Ljavafx/scene/control/ContextMenu;->getX()D

    move-result-wide v7

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/stage/Window;->getX()D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_a

    .line 233
    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->oldWidth:D

    move-wide v9, v1

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_a

    .line 234
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v8}, Ljavafx/scene/control/ContextMenu;->getX()D

    move-result-wide v8

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->oldWidth:D

    add-double/2addr v8, v10

    move-wide v10, v1

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/ContextMenu;->setX(D)V

    .line 239
    :cond_a
    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->oldWidth:D

    .line 240
    return-void
.end method

.method private createSubmenu()V
    .locals 6

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    if-nez v1, :cond_0

    .line 851
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ContextMenu;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljavafx/scene/control/ContextMenu;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    .line 852
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 871
    :cond_0
    return-void
.end method

.method private disposeBinds()V
    .locals 4

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->updateMenuShowingListeners(Ljava/util/List;Z)V

    .line 781
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenuItemsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 782
    return-void
.end method

.method private disposeVisualItems()V
    .locals 8

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v1, v6

    .line 286
    .local v1, "itemsContainerChilder":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    move v3, v6

    .local v3, "max":I
    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 287
    move-object v6, v1

    move v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v4, v6

    .line 289
    .local v4, "n":Ljavafx/scene/Node;
    move-object v6, v4

    instance-of v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v6, :cond_0

    .line 290
    move-object v6, v4

    check-cast v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    move-object v5, v6

    .line 291
    .local v5, "container":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 292
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->dispose()V

    .line 286
    .end local v5    # "container":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v4    # "n":Ljavafx/scene/Node;
    :cond_1
    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->clear()V

    .line 296
    return-void
.end method

.method private ensureFocusedMenuItemIsVisible(Ljavafx/scene/Node;)V
    .locals 10

    .prologue
    .line 423
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, p1

    .local v2, "node":Ljavafx/scene/Node;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 435
    :goto_0
    return-void

    .line 425
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Node;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v5

    move-object v3, v5

    .line 426
    .local v3, "nodeBounds":Ljavafx/geometry/Bounds;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v5

    move-object v4, v5

    .line 428
    .local v4, "clipBounds":Ljavafx/geometry/Bounds;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v5

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_2

    .line 430
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v6

    neg-double v6, v6

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->scroll(D)V

    .line 435
    :cond_1
    :goto_1
    goto :goto_0

    .line 431
    :cond_2
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v5

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_1

    .line 433
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    neg-double v6, v6

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->scroll(D)V

    goto :goto_1
.end method

.method private findFocusedIndex()I
    .locals 5

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 446
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    move-object v2, v3

    .line 447
    .local v2, "n":Ljavafx/scene/Node;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    move v3, v1

    move v0, v3

    .line 451
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    .end local v2    # "n":Ljavafx/scene/Node;
    :goto_1
    return v0

    .line 445
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    .restart local v2    # "n":Ljavafx/scene/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v2    # "n":Ljavafx/scene/Node;
    :cond_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method private findNext(I)I
    .locals 6

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move v1, p1

    .local v1, "from":I
    move v4, v1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 688
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 689
    .local v3, "n":Ljavafx/scene/Node;
    move-object v4, v3

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v4, :cond_0

    .line 690
    move v4, v2

    move v0, v4

    .line 700
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    .end local v3    # "n":Ljavafx/scene/Node;
    :goto_1
    return v0

    .line 687
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    .restart local v3    # "n":Ljavafx/scene/Node;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 694
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    :goto_2
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_3

    .line 695
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 696
    .restart local v3    # "n":Ljavafx/scene/Node;
    move-object v4, v3

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v4, :cond_2

    .line 697
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 694
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 700
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_3
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method private findPrevious(I)I
    .locals 6

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move v1, p1

    .local v1, "from":I
    move v4, v1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 727
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 728
    .local v3, "n":Ljavafx/scene/Node;
    move-object v4, v3

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v4, :cond_0

    .line 729
    move v4, v2

    move v0, v4

    .line 738
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    .end local v3    # "n":Ljavafx/scene/Node;
    :goto_1
    return v0

    .line 726
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    .restart local v3    # "n":Ljavafx/scene/Node;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 732
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_2
    move v4, v2

    move v5, v1

    if-le v4, v5, :cond_3

    .line 733
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 734
    .restart local v3    # "n":Ljavafx/scene/Node;
    move-object v4, v3

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v4, :cond_2

    .line 735
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 732
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 738
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_3
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
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
    .line 977
    # getter for: Lcom/sun/javafx/scene/control/skin/ContextMenuContent$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$StyleableProperties;->access$1200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getContentHeight()D
    .locals 12

    .prologue
    .line 412
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 413
    .local v2, "h":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 414
    .local v5, "i":Ljavafx/scene/Node;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 415
    move-wide v6, v2

    move-object v8, v1

    move-object v9, v5

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v2, v6

    .line 417
    :cond_0
    goto :goto_0

    .line 418
    .end local v5    # "i":Ljavafx/scene/Node;
    :cond_1
    move-wide v6, v2

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-wide v1
.end method

.method private getScreenHeight()D
    .locals 4

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 403
    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-nez v1, :cond_1

    .line 404
    :cond_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move-wide v0, v1

    .line 406
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 407
    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    .line 406
    invoke-static {v2}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Ljavafx/stage/Screen;->getVisualBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v2

    .line 406
    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v1

    move-wide v0, v1

    goto :goto_0
.end method

.method private hideAllMenus(Ljavafx/scene/control/MenuItem;)V
    .locals 6

    .prologue
    .line 893
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 896
    :cond_0
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "parentMenu":Ljavafx/scene/control/Menu;
    if-eqz v3, :cond_1

    .line 897
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->hide()V

    .line 898
    move-object v3, v2

    move-object v1, v3

    goto :goto_0

    .line 900
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 901
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->getParentPopup()Ljavafx/scene/control/ContextMenu;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 903
    :cond_2
    return-void
.end method

.method private hideSubmenu()V
    .locals 3

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    if-nez v1, :cond_0

    .line 890
    :goto_0
    return-void

    .line 883
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 884
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->openSubmenu:Ljavafx/scene/control/Menu;

    .line 888
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->disposeContextMenu(Ljavafx/scene/control/ContextMenu;)V

    .line 889
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    .line 890
    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 471
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    sget-object v2, Ljavafx/scene/control/Menu;->ON_SHOWN:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ContextMenu;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 493
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$1;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->setOnKeyPressed(Ljavafx/event/EventHandler;)V

    .line 567
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 606
    return-void
.end method

.method private synthetic lambda$initialize$328(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    .line 466
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->requestFocus()V

    .line 468
    :cond_0
    return-void
.end method

.method private synthetic lambda$initialize$329(Ljavafx/event/Event;)V
    .locals 7

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v3, v5

    .line 473
    .local v3, "child":Ljavafx/scene/Node;
    move-object v5, v3

    instance-of v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v5, :cond_1

    .line 474
    move-object v5, v3

    check-cast v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$1000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/control/MenuItem;

    move-result-object v5

    move-object v4, v5

    .line 477
    .local v4, "item":Ljavafx/scene/control/MenuItem;
    const-string v5, "choice-box-menu-item"

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 478
    move-object v5, v4

    check-cast v5, Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v5}, Ljavafx/scene/control/RadioMenuItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 479
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->requestFocus()V

    .line 480
    .line 486
    .end local v3    # "child":Ljavafx/scene/Node;
    .end local v4    # "item":Ljavafx/scene/control/MenuItem;
    :cond_0
    return-void

    .line 485
    .restart local v3    # "child":Ljavafx/scene/Node;
    :cond_1
    goto :goto_0
.end method

.method private synthetic lambda$initialize$330(Ljavafx/scene/input/ScrollEvent;)V
    .locals 14

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/ScrollEvent;
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaY()D

    move-result-wide v9

    move-wide v2, v9

    .line 573
    .local v2, "textDeltaY":D
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v9

    move-wide v4, v9

    .line 574
    .local v4, "deltaY":D
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    move-wide v9, v2

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_1

    move-wide v9, v4

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_1

    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    .line 575
    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    move-wide v9, v2

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_1

    move-wide v9, v4

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_2

    .line 577
    :cond_1
    sget-object v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$3;->$SwitchMap$javafx$scene$input$ScrollEvent$VerticalTextScrollUnits:[I

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent;->getTextDeltaYUnits()Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 603
    :goto_0
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/ScrollEvent;->consume()V

    .line 605
    :cond_2
    return-void

    .line 583
    :pswitch_0
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->findFocusedIndex()I

    move-result v9

    move v6, v9

    .line 584
    .local v6, "focusedIndex":I
    move v9, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 585
    const/4 v9, 0x0

    move v6, v9

    .line 587
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v6

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v9

    move-wide v7, v9

    .line 588
    .local v7, "rowHeight":D
    move-object v9, v0

    move-wide v10, v2

    move-wide v12, v7

    mul-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->scroll(D)V

    .line 589
    goto :goto_0

    .line 594
    .end local v6    # "focusedIndex":I
    .end local v7    # "rowHeight":D
    :pswitch_1
    move-object v9, v0

    move-wide v10, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getHeight()D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->scroll(D)V

    .line 595
    goto :goto_0

    .line 600
    :pswitch_2
    move-object v9, v0

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->scroll(D)V

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic lambda$new$327(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "arg0":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->updateItems()V

    .line 99
    return-void
.end method

.method private synthetic lambda$new$331(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 785
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "wasShowing":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "isShowing":Ljava/lang/Boolean;
    move-object v6, v1

    check-cast v6, Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-object v4, v6

    .line 786
    .local v4, "isShowingProperty":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->getBean()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Menu;

    move-object v5, v6

    .line 788
    .local v5, "menu":Ljavafx/scene/control/Menu;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 790
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->hideSubmenu()V

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 793
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->showSubmenu(Ljavafx/scene/control/Menu;)V

    goto :goto_0
.end method

.method private synthetic lambda$new$332(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->updateMenuShowingListeners(Ljava/util/List;Z)V

    .line 806
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->updateMenuShowingListeners(Ljava/util/List;Z)V

    goto :goto_0

    .line 810
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsDirty:Z

    .line 811
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->updateItems()V

    .line 812
    return-void
.end method

.method private synthetic lambda$new$333(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->requestLayout()V

    .line 817
    return-void
.end method

.method private moveToNextSibling()V
    .locals 6

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 708
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->findNext(I)I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    .line 714
    :cond_0
    :goto_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 715
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    move-object v1, v2

    .line 716
    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->selectedBackground:Ljavafx/scene/layout/Region;

    .line 717
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->requestFocus()V

    .line 718
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ensureFocusedMenuItemIsVisible(Ljavafx/scene/Node;)V

    .line 720
    .end local v1    # "n":Ljavafx/scene/Node;
    :cond_1
    return-void

    .line 709
    :cond_2
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 710
    :cond_3
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->findNext(I)I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    goto :goto_0
.end method

.method private moveToPreviousSibling()V
    .locals 6

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 746
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->findPrevious(I)I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    .line 752
    :cond_0
    :goto_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 753
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    move-object v1, v2

    .line 754
    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->selectedBackground:Ljavafx/scene/layout/Region;

    .line 755
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->requestFocus()V

    .line 756
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ensureFocusedMenuItemIsVisible(Ljavafx/scene/Node;)V

    .line 758
    .end local v1    # "n":Ljavafx/scene/Node;
    :cond_1
    return-void

    .line 747
    :cond_2
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    if-nez v2, :cond_0

    .line 748
    :cond_3
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->findPrevious(I)I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    goto :goto_0
.end method

.method private processLeftKey(Ljavafx/scene/input/KeyEvent;)V
    .locals 7

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "ke":Ljavafx/scene/input/KeyEvent;
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 610
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v2, v5

    .line 611
    .local v2, "n":Ljavafx/scene/Node;
    move-object v5, v2

    instance-of v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v5, :cond_0

    .line 612
    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$1000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/control/MenuItem;

    move-result-object v5

    move-object v3, v5

    .line 613
    .local v3, "item":Ljavafx/scene/control/MenuItem;
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/control/Menu;

    if-eqz v5, :cond_0

    .line 614
    move-object v5, v3

    check-cast v5, Ljavafx/scene/control/Menu;

    move-object v4, v5

    .line 617
    .local v4, "menu":Ljavafx/scene/control/Menu;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->openSubmenu:Ljavafx/scene/control/Menu;

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v5}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 618
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->hideSubmenu()V

    .line 619
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 624
    .end local v2    # "n":Ljavafx/scene/Node;
    .end local v3    # "item":Ljavafx/scene/control/MenuItem;
    .end local v4    # "menu":Ljavafx/scene/control/Menu;
    :cond_0
    return-void
.end method

.method private processRightKey(Ljavafx/scene/input/KeyEvent;)V
    .locals 7

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "ke":Ljavafx/scene/input/KeyEvent;
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 628
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v2, v5

    .line 629
    .local v2, "n":Ljavafx/scene/Node;
    move-object v5, v2

    instance-of v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v5, :cond_2

    .line 630
    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$1000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/control/MenuItem;

    move-result-object v5

    move-object v3, v5

    .line 631
    .local v3, "item":Ljavafx/scene/control/MenuItem;
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/control/Menu;

    if-eqz v5, :cond_2

    .line 632
    move-object v5, v3

    check-cast v5, Ljavafx/scene/control/Menu;

    move-object v4, v5

    .line 633
    .local v4, "menu":Ljavafx/scene/control/Menu;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->isDisable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    .end local v2    # "n":Ljavafx/scene/Node;
    .end local v3    # "item":Ljavafx/scene/control/MenuItem;
    .end local v4    # "menu":Ljavafx/scene/control/Menu;
    :goto_0
    return-void

    .line 634
    .restart local v2    # "n":Ljavafx/scene/Node;
    .restart local v3    # "item":Ljavafx/scene/control/MenuItem;
    .restart local v4    # "menu":Ljavafx/scene/control/Menu;
    :cond_0
    move-object v5, v0

    move-object v6, v2

    check-cast v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->selectedBackground:Ljavafx/scene/layout/Region;

    .line 639
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->openSubmenu:Ljavafx/scene/control/Menu;

    move-object v6, v4

    if-ne v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v5}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 640
    goto :goto_0

    .line 643
    :cond_1
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->showMenu(Ljavafx/scene/control/Menu;)V

    .line 644
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 648
    .end local v2    # "n":Ljavafx/scene/Node;
    .end local v3    # "item":Ljavafx/scene/control/MenuItem;
    .end local v4    # "menu":Ljavafx/scene/control/Menu;
    :cond_2
    goto :goto_0
.end method

.method private selectMenuItem()V
    .locals 6

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 666
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v1, v4

    .line 667
    .local v1, "n":Ljavafx/scene/Node;
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v4, :cond_2

    .line 668
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$1000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/control/MenuItem;

    move-result-object v4

    move-object v2, v4

    .line 669
    .local v2, "item":Ljavafx/scene/control/MenuItem;
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_3

    .line 670
    move-object v4, v2

    check-cast v4, Ljavafx/scene/control/Menu;

    move-object v3, v4

    .line 671
    .local v3, "menu":Ljavafx/scene/control/Menu;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->openSubmenu:Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_0

    .line 672
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->hideSubmenu()V

    .line 674
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->isDisable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 682
    .end local v1    # "n":Ljavafx/scene/Node;
    .end local v2    # "item":Ljavafx/scene/control/MenuItem;
    .end local v3    # "menu":Ljavafx/scene/control/Menu;
    :goto_0
    return-void

    .line 675
    .restart local v1    # "n":Ljavafx/scene/Node;
    .restart local v2    # "item":Ljavafx/scene/control/MenuItem;
    .restart local v3    # "menu":Ljavafx/scene/control/Menu;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->selectedBackground:Ljavafx/scene/layout/Region;

    .line 676
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->show()V

    .line 677
    .line 682
    .end local v1    # "n":Ljavafx/scene/Node;
    .end local v2    # "item":Ljavafx/scene/control/MenuItem;
    .end local v3    # "menu":Ljavafx/scene/control/Menu;
    :cond_2
    :goto_1
    goto :goto_0

    .line 678
    .restart local v1    # "n":Ljavafx/scene/Node;
    .restart local v2    # "item":Ljavafx/scene/control/MenuItem;
    :cond_3
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->doSelect()V

    goto :goto_1
.end method

.method private setUpBinds()V
    .locals 4

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->updateMenuShowingListeners(Ljava/util/List;Z)V

    .line 776
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenuItemsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 777
    return-void
.end method

.method private showMenu(Ljavafx/scene/control/Menu;)V
    .locals 5

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/Menu;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->show()V

    .line 653
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v2, v3

    .line 654
    .local v2, "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 655
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 656
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->requestFocus()V

    .line 657
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->requestFocus()V

    goto :goto_0
.end method

.method private showSubmenu(Ljavafx/scene/control/Menu;)V
    .locals 10

    .prologue
    .line 874
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, p1

    .local v2, "menu":Ljavafx/scene/control/Menu;
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->openSubmenu:Ljavafx/scene/control/Menu;

    .line 875
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->createSubmenu()V

    .line 876
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    .line 877
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->selectedBackground:Ljavafx/scene/layout/Region;

    sget-object v5, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;Ljavafx/geometry/Side;DD)V

    .line 878
    return-void
.end method

.method private updateItems()V
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsDirty:Z

    if-eqz v1, :cond_0

    .line 156
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->updateVisualItems()V

    .line 157
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsDirty:Z

    .line 159
    :cond_0
    return-void
.end method

.method private updateMenuShowingListeners(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/MenuItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "items":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/MenuItem;>;"
    move v2, p2

    .local v2, "addListeners":Z
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/MenuItem;

    move-object v4, v6

    .line 821
    .local v4, "item":Ljavafx/scene/control/MenuItem;
    move-object v6, v4

    instance-of v6, v6, Ljavafx/scene/control/Menu;

    if-eqz v6, :cond_0

    .line 822
    move-object v6, v4

    check-cast v6, Ljavafx/scene/control/Menu;

    move-object v5, v6

    .line 824
    .local v5, "menu":Ljavafx/scene/control/Menu;
    move v6, v2

    if-eqz v6, :cond_1

    .line 825
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/Menu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->menuShowingListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 832
    .end local v5    # "menu":Ljavafx/scene/control/Menu;
    :cond_0
    :goto_1
    move v6, v2

    if-eqz v6, :cond_2

    .line 833
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->menuItemVisibleListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 837
    :goto_2
    goto :goto_0

    .line 827
    .restart local v5    # "menu":Ljavafx/scene/control/Menu;
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/Menu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->menuShowingListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    goto :goto_1

    .line 835
    .end local v5    # "menu":Ljavafx/scene/control/Menu;
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->menuItemVisibleListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    goto :goto_2

    .line 838
    .end local v4    # "item":Ljavafx/scene/control/MenuItem;
    :cond_3
    return-void
.end method

.method private updateVisualItems()V
    .locals 10

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v1, v5

    .line 245
    .local v1, "itemsContainerChilder":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->disposeVisualItems()V

    .line 247
    const/4 v5, 0x0

    move v2, v5

    .local v2, "row":I
    :goto_0
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 248
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuItem;

    move-object v3, v5

    .line 249
    .local v3, "item":Ljavafx/scene/control/MenuItem;
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Ljavafx/scene/control/CustomMenuItem;

    invoke-virtual {v5}, Ljavafx/scene/control/CustomMenuItem;->getContent()Ljavafx/scene/Node;

    move-result-object v5

    if-nez v5, :cond_0

    .line 250
    .line 247
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_0
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/control/SeparatorMenuItem;

    if-eqz v5, :cond_1

    .line 258
    move-object v5, v3

    check-cast v5, Ljavafx/scene/control/CustomMenuItem;

    invoke-virtual {v5}, Ljavafx/scene/control/CustomMenuItem;->getContent()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 259
    .local v4, "node":Ljavafx/scene/Node;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Node;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 260
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 264
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    const-class v6, Ljavafx/scene/control/MenuItem;

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 265
    goto :goto_1

    .line 266
    .end local v4    # "node":Ljavafx/scene/Node;
    :cond_1
    new-instance v5, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;-><init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/MenuItem;)V

    move-object v4, v5

    .line 267
    .local v4, "menuItemContainer":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/MenuItem;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 268
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 274
    .end local v3    # "item":Ljavafx/scene/control/MenuItem;
    .end local v4    # "menuItemContainer":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 275
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuItem;

    move-object v2, v5

    .line 276
    .local v2, "item":Ljavafx/scene/control/MenuItem;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    const-class v6, Ljavafx/scene/control/Menu;

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 280
    .end local v2    # "item":Ljavafx/scene/control/MenuItem;
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->impl_reapplyCSS()V

    .line 281
    return-void
.end method


# virtual methods
.method protected computeMaxHeight(D)D
    .locals 7

    .prologue
    .line 398
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getScreenHeight()D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-wide v1
.end method

.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 394
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-wide v2, p1

    .local v2, "width":D
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-wide v1
.end method

.method protected computePrefHeight(D)D
    .locals 17

    .prologue
    .line 383
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    if-nez v12, :cond_0

    const-wide/16 v12, 0x0

    move-wide v1, v12

    .line 390
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    :goto_0
    return-wide v1

    .line 384
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    :cond_0
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getScreenHeight()D

    move-result-wide v12

    move-wide v4, v12

    .line 385
    .local v4, "screenHeight":D
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getContentHeight()D

    move-result-wide v12

    move-wide v6, v12

    .line 386
    .local v6, "contentHeight":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snappedTopInset()D

    move-result-wide v12

    move-object v14, v1

    move-wide v15, v6

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snappedBottomInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v8, v12

    .line 389
    .local v8, "totalHeight":D
    move-wide v12, v4

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_1

    move-wide v12, v8

    :goto_1
    move-wide v10, v12

    .line 390
    .local v10, "prefHeight":D
    move-wide v12, v10

    move-wide v1, v12

    goto :goto_0

    .line 389
    .end local v10    # "prefHeight":D
    :cond_1
    move-wide v12, v8

    move-wide v14, v4

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    goto :goto_1
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 372
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v8, v1

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->computeVisualMetrics()V

    .line 373
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 374
    .local v4, "prefWidth":D
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    if-nez v8, :cond_0

    const-wide/16 v8, 0x0

    move-wide v1, v8

    .line 379
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    :goto_0
    return-wide v1

    .line 375
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v7, v8

    .line 376
    .local v7, "n":Ljavafx/scene/Node;
    move-object v8, v7

    invoke-virtual {v8}, Ljavafx/scene/Node;->isVisible()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 377
    :cond_1
    move-wide v8, v4

    move-object v10, v1

    move-object v11, v7

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v4, v8

    .line 378
    goto :goto_1

    .line 379
    .end local v7    # "n":Ljavafx/scene/Node;
    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snappedLeftInset()D

    move-result-wide v8

    move-object v10, v1

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snappedRightInset()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v1, v8

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->disposeBinds()V

    .line 305
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->disposeVisualItems()V

    .line 307
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->disposeContextMenu(Ljavafx/scene/control/ContextMenu;)V

    .line 308
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    .line 309
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->openSubmenu:Ljavafx/scene/control/Menu;

    .line 310
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->selectedBackground:Ljavafx/scene/layout/Region;

    .line 311
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    if-eqz v1, :cond_0

    .line 312
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 313
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 315
    :cond_0
    return-void
.end method

.method public disposeContextMenu(Ljavafx/scene/control/ContextMenu;)V
    .locals 5

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/ContextMenu;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 327
    :goto_0
    return-void

    .line 320
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v4

    move-object v2, v4

    .line 321
    .local v2, "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 323
    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v3, v4

    .line 324
    .local v3, "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v4, v3

    if-nez v4, :cond_2

    goto :goto_0

    .line 326
    :cond_2
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->dispose()V

    .line 327
    goto :goto_0
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
    .line 985
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method getCurrentFocusIndex()I
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return v0
.end method

.method protected getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method public getItemsContainer()Ljavafx/scene/layout/VBox;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method protected getLabelAt(I)Ljavafx/scene/control/Label;
    .locals 4

    .prologue
    .line 989
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->getLabel()Ljavafx/scene/control/Label;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method getMenuYOffset(I)D
    .locals 13

    .prologue
    .line 765
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move v2, p1

    .local v2, "menuIndex":I
    const-wide/16 v6, 0x0

    move-wide v3, v6

    .line 766
    .local v3, "offset":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    move v7, v2

    if-le v6, v7, :cond_0

    .line 767
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snappedTopInset()D

    move-result-wide v6

    move-wide v3, v6

    .line 768
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 769
    .local v5, "menuitem":Ljavafx/scene/Node;
    move-wide v6, v3

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v8

    move-object v10, v5

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v3, v6

    .line 771
    .end local v5    # "menuitem":Ljavafx/scene/Node;
    :cond_0
    move-wide v6, v3

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-wide v1
.end method

.method getOpenSubMenu()Ljavafx/scene/control/Menu;
    .locals 2

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->openSubmenu:Ljavafx/scene/control/Menu;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method getSubMenu()Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->submenu:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    return-object v0
.end method

.method protected layoutChildren()V
    .locals 28

    .prologue
    .line 330
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->size()I

    move-result v14

    if-nez v14, :cond_0

    .line 369
    :goto_0
    return-void

    .line 331
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snappedLeftInset()D

    move-result-wide v14

    move-wide v2, v14

    .line 332
    .local v2, "x":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snappedTopInset()D

    move-result-wide v14

    move-wide v4, v14

    .line 333
    .local v4, "y":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getWidth()D

    move-result-wide v14

    move-wide/from16 v16, v2

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snappedRightInset()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v6, v14

    .line 334
    .local v6, "w":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getHeight()D

    move-result-wide v14

    move-wide/from16 v16, v4

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snappedBottomInset()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v8, v14

    .line 335
    .local v8, "h":D
    move-object v14, v1

    move-object v15, v1

    invoke-direct {v15}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getContentHeight()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v14

    move-wide v10, v14

    .line 337
    .local v10, "contentHeight":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    move-wide v15, v6

    move-wide/from16 v17, v10

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->resize(DD)V

    .line 338
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->relocate(DD)V

    .line 340
    move-object v14, v1

    iget-boolean v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->isFirstShow:Z

    if-eqz v14, :cond_3

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ty:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_3

    .line 341
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->setVisible(Z)V

    .line 342
    move-object v14, v1

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->isFirstShow:Z

    .line 346
    :goto_1
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-object v15, v1

    iget-wide v15, v15, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ty:D

    move-wide/from16 v17, v10

    add-double v15, v15, v17

    move-wide/from16 v17, v4

    move-wide/from16 v19, v8

    add-double v17, v17, v19

    cmpl-double v15, v15, v17

    if-lez v15, :cond_5

    const/4 v15, 0x1

    :goto_2
    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->setVisible(Z)V

    .line 348
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    const-wide/16 v15, 0x0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 349
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    const-wide/16 v15, 0x0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 350
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-wide v15, v6

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 351
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-wide v15, v8

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 353
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 354
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->prefHeight(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v14

    move-wide v12, v14

    .line 355
    .local v12, "prefHeight":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Rectangle;->getHeight()D

    move-result-wide v16

    move-wide/from16 v18, v12

    sub-double v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 356
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Rectangle;->getY()D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v15

    move-wide/from16 v17, v12

    add-double v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 357
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->prefWidth(D)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v15

    move-wide/from16 v17, v12

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->resize(DD)V

    .line 358
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 362
    .end local v12    # "prefHeight":D
    :cond_1
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 363
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->prefHeight(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v14

    move-wide v12, v14

    .line 364
    .restart local v12    # "prefHeight":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Rectangle;->getHeight()D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v15

    move-wide/from16 v17, v12

    sub-double v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 365
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->prefWidth(D)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->snapSize(D)D

    move-result-wide v15

    move-wide/from16 v17, v12

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->resize(DD)V

    .line 366
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    add-double v18, v18, v20

    move-wide/from16 v20, v12

    sub-double v18, v18, v20

    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 369
    .end local v12    # "prefHeight":D
    :cond_2
    goto/16 :goto_0

    .line 344
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->upArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    move-object v15, v1

    iget-wide v15, v15, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ty:D

    move-wide/from16 v17, v4

    cmpg-double v15, v15, v17

    if-gez v15, :cond_4

    move-object v15, v1

    iget-wide v15, v15, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ty:D

    const-wide/16 v17, 0x0

    cmpg-double v15, v15, v17

    if-gez v15, :cond_4

    const/4 v15, 0x1

    :goto_3
    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->setVisible(Z)V

    goto/16 :goto_1

    :cond_4
    const/4 v15, 0x0

    goto :goto_3

    .line 346
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2
.end method

.method scroll(D)V
    .locals 13

    .prologue
    .line 915
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-wide v2, p1

    .local v2, "delta":D
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ty:D

    move-wide v8, v2

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 916
    .local v4, "newTy":D
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ty:D

    move-wide v8, v4

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 936
    :goto_0
    return-void

    .line 920
    :cond_0
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 921
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 930
    :cond_1
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getHeight()D

    move-result-wide v6

    move-wide v8, v4

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getHeight()D

    move-result-wide v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->getHeight()D

    move-result-wide v10

    sub-double/2addr v8, v10

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 931
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getHeight()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getHeight()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->downArrow:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->getHeight()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 934
    :cond_2
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->ty:D

    .line 935
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->requestLayout()V

    .line 936
    goto :goto_0
.end method

.method setCurrentFocusedIndex(I)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 150
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->currentFocusedIndex:I

    .line 152
    :cond_0
    return-void
.end method
