.class public Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;,
        Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;,
        Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;,
        Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;,
        Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;,
        Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties;,
        Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;,
        Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/TabPane;",
        "Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED:D = 150.0

.field private static final BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field static CLOSE_BTN_SIZE:I = 0x0

.field private static final DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final SPACER:I = 0xa

.field private static final TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private clipRect:Ljavafx/scene/shape/Rectangle;

.field private closeTabAnimation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private isSelectingTab:Z

.field private maxh:D

.field private maxw:D

.field private openTabAnimation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Ljavafx/scene/control/Tab;

.field private tabContentRegions:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;",
            ">;"
        }
    .end annotation
.end field

.field private tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

.field private tabHeaderAreaClipRect:Ljavafx/scene/shape/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1098
    const/16 v0, 0x10

    sput v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->CLOSE_BTN_SIZE:I

    .line 1522
    const-string v0, "selected"

    .line 1523
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1524
    const-string v0, "top"

    .line 1525
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1526
    const-string v0, "bottom"

    .line 1527
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1528
    const-string v0, "left"

    .line 1529
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1530
    const-string v0, "right"

    .line 1531
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1532
    const-string v0, "disabled"

    .line 1533
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 1532
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TabPane;)V
    .locals 13

    .prologue
    .line 183
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v2, p1

    .local v2, "tabPane":Ljavafx/scene/control/TabPane;
    move-object v5, v1

    move-object v6, v2

    new-instance v7, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;-><init>(Ljavafx/scene/control/TabPane;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 108
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;->GROW:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->openTabAnimation:Ljavafx/beans/property/ObjectProperty;

    .line 122
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;->GROW:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->closeTabAnimation:Ljavafx/beans/property/ObjectProperty;

    .line 482
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxw:D

    .line 498
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxh:D

    .line 185
    move-object v5, v1

    new-instance v6, Ljavafx/scene/shape/Rectangle;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TabPane;->getWidth()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/TabPane;->getHeight()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/shape/Rectangle;-><init>(DD)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    .line 186
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TabPane;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TabPane;->setClip(Ljavafx/scene/Node;)V

    .line 188
    move-object v5, v1

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    .line 190
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TabPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

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

    check-cast v5, Ljavafx/scene/control/Tab;

    move-object v4, v5

    .line 191
    .local v4, "tab":Ljavafx/scene/control/Tab;
    move-object v5, v1

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->addTabContent(Ljavafx/scene/control/Tab;)V

    .line 192
    goto :goto_0

    .line 194
    .end local v4    # "tab":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v5, v1

    new-instance v6, Ljavafx/scene/shape/Rectangle;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderAreaClipRect:Ljavafx/scene/shape/Rectangle;

    .line 195
    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    .line 196
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderAreaClipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setClip(Ljavafx/scene/Node;)V

    .line 197
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 198
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TabPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 199
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setVisible(Z)V

    .line 202
    :cond_1
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->initializeTabListener()V

    .line 204
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/SingleSelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v6

    const-string v7, "SELECTED_TAB"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 205
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->sideProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "SIDE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 206
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    const-string v7, "WIDTH"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 207
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    const-string v7, "HEIGHT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 209
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Tab;

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->selectedTab:Ljavafx/scene/control/Tab;

    .line 211
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->selectedTab:Ljavafx/scene/control/Tab;

    if-nez v5, :cond_2

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TabPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 212
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TabPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    .line 213
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Tab;

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->selectedTab:Ljavafx/scene/control/Tab;

    .line 215
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->selectedTab:Ljavafx/scene/control/Tab;

    if-nez v5, :cond_3

    .line 217
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TabPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/SingleSelectionModel;->selectFirst()V

    .line 219
    :cond_3
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Tab;

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->selectedTab:Ljavafx/scene/control/Tab;

    .line 220
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isSelectingTab:Z

    .line 222
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->initializeSwipeHandlers()V

    .line 223
    return-void
.end method

.method static synthetic access$1600(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->openTabAnimation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return-object v0
.end method

.method static synthetic access$1700(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->closeTabAnimation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return-object v0
.end method

.method static synthetic access$2200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return-object v0
.end method

.method static synthetic access$2400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isSelectingTab:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return v0
.end method

.method static synthetic access$2402(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Z)Z
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isSelectingTab:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return v0
.end method

.method static synthetic access$2800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isHorizontal()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return v0
.end method

.method static synthetic access$2900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/scene/control/Tab;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->selectedTab:Ljavafx/scene/control/Tab;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return-object v0
.end method

.method static synthetic access$3100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isFloatingStyleClass()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return v0
.end method

.method static synthetic access$3500()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$3600()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$3700()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$3800()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$3900()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$4000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$4500(Ljavafx/scene/Node;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->clone(Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->lambda$removeTabs$483(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->lambda$addTabs$484(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->lambda$initializeTabListener$485(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/input/SwipeEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->lambda$initializeSwipeHandlers$486(Ljavafx/scene/input/SwipeEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/input/SwipeEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->lambda$initializeSwipeHandlers$487(Ljavafx/scene/input/SwipeEvent;)V

    return-void
.end method

.method private addTabContent(Ljavafx/scene/control/Tab;)V
    .locals 8

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    new-instance v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/control/Tab;)V

    move-object v2, v3

    .line 425
    .local v2, "tabContentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v3, v2

    new-instance v4, Ljavafx/scene/shape/Rectangle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljavafx/scene/shape/Rectangle;-><init>()V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->setClip(Ljavafx/scene/Node;)V

    .line 426
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 428
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 429
    return-void
.end method

.method private addTabs(Ljava/util/List;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/Tab;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 313
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object/from16 v1, p1

    .local v1, "addedList":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/Tab;>;"
    move/from16 v2, p2

    .local v2, "from":I
    const/4 v9, 0x0

    move v3, v9

    .line 316
    .local v3, "i":I
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljavafx/scene/layout/StackPane;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v9

    .line 317
    .local v4, "headers":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_0
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    move-object v6, v9

    .line 318
    .local v6, "n":Ljavafx/scene/Node;
    move-object v9, v6

    check-cast v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v7, v9

    .line 319
    .local v7, "header":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v9, v7

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    move-result-object v9

    sget-object v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;->HIDING:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    if-ne v9, v10, :cond_0

    .line 320
    move-object v9, v0

    move-object v10, v7

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/control/Tab;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->stopCurrentAnimation(Ljavafx/scene/control/Tab;)V

    .line 322
    :cond_0
    goto :goto_0

    .line 325
    .end local v6    # "n":Ljavafx/scene/Node;
    .end local v7    # "header":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_1
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/Tab;

    move-object v6, v9

    .line 326
    .local v6, "tab":Ljavafx/scene/control/Tab;
    move-object v9, v0

    move-object v10, v6

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->stopCurrentAnimation(Ljavafx/scene/control/Tab;)V

    .line 328
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->isVisible()Z

    move-result v9

    if-nez v9, :cond_2

    .line 329
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setVisible(Z)V

    .line 331
    :cond_2
    move v9, v2

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v9, v10

    move v7, v9

    .line 332
    .local v7, "index":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v10, v6

    move v11, v7

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$1100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;I)V

    .line 333
    move-object v9, v0

    move-object v10, v6

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->addTabContent(Ljavafx/scene/control/Tab;)V

    .line 334
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v10, v6

    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-result-object v9

    move-object v8, v9

    .line 335
    .local v8, "tabRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v9, v8

    if-eqz v9, :cond_3

    .line 336
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->openTabAnimation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v9}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;->GROW:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;

    if-ne v9, v10, :cond_4

    .line 337
    move-object v9, v8

    sget-object v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;->SHOWING:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$702(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    move-result-object v9

    .line 338
    move-object v9, v8

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 339
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setVisible(Z)V

    .line 340
    move-object v9, v8

    move-object v10, v0

    move-object v11, v8

    const-wide v12, 0x4062c00000000000L    # 150.0

    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v15, v8

    invoke-static {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/event/EventHandler;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->createTimeline(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/util/Duration;DLjavafx/event/EventHandler;)Ljavafx/animation/Timeline;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$802(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/animation/Timeline;)Ljavafx/animation/Timeline;

    move-result-object v9

    .line 345
    move-object v9, v8

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/animation/Timeline;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/animation/Timeline;->play()V

    .line 351
    :cond_3
    :goto_2
    goto/16 :goto_1

    .line 347
    :cond_4
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setVisible(Z)V

    .line 348
    move-object v9, v8

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    goto :goto_2

    .line 352
    .end local v6    # "tab":Ljavafx/scene/control/Tab;
    .end local v7    # "index":I
    .end local v8    # "tabRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_5
    return-void
.end method

.method private static clone(Ljavafx/scene/Node;)Ljavafx/scene/Node;
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "n":Ljavafx/scene/Node;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 157
    const/4 v3, 0x0

    move-object v0, v3

    .line 170
    .end local v0    # "n":Ljavafx/scene/Node;
    .local v1, "l":Ljavafx/scene/control/Label;
    .local v2, "label":Ljavafx/scene/control/Label;
    :goto_0
    return-object v0

    .line 159
    .end local v1    # "l":Ljavafx/scene/control/Label;
    .end local v2    # "label":Ljavafx/scene/control/Label;
    .restart local v0    # "n":Ljavafx/scene/Node;
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/image/ImageView;

    if-eqz v3, :cond_1

    .line 160
    move-object v3, v0

    check-cast v3, Ljavafx/scene/image/ImageView;

    move-object v1, v3

    .line 161
    .local v1, "iv":Ljavafx/scene/image/ImageView;
    new-instance v3, Ljavafx/scene/image/ImageView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/scene/image/ImageView;-><init>()V

    move-object v2, v3

    .line 162
    .local v2, "imageview":Ljavafx/scene/image/ImageView;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/image/ImageView;->setImage(Ljavafx/scene/image/Image;)V

    .line 163
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 165
    .end local v1    # "iv":Ljavafx/scene/image/ImageView;
    .end local v2    # "imageview":Ljavafx/scene/image/ImageView;
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/control/Label;

    if-eqz v3, :cond_2

    .line 166
    move-object v3, v0

    check-cast v3, Ljavafx/scene/control/Label;

    move-object v1, v3

    .line 167
    .local v1, "l":Ljavafx/scene/control/Label;
    new-instance v3, Ljavafx/scene/control/Label;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/Label;->getGraphic()Ljavafx/scene/Node;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    move-object v2, v3

    .line 168
    .local v2, "label":Ljavafx/scene/control/Label;
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 170
    .end local v1    # "l":Ljavafx/scene/control/Label;
    .end local v2    # "label":Ljavafx/scene/control/Label;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private createTimeline(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/util/Duration;DLjavafx/event/EventHandler;)Ljavafx/animation/Timeline;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;",
            "Ljavafx/util/Duration;",
            "D",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)",
            "Ljavafx/animation/Timeline;"
        }
    .end annotation

    .prologue
    .line 449
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object/from16 v2, p1

    .local v2, "tabRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object/from16 v3, p2

    .local v3, "duration":Ljavafx/util/Duration;
    move-wide/from16 v4, p3

    .local v4, "endValue":D
    move-object/from16 v6, p5

    .local v6, "func":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    new-instance v9, Ljavafx/animation/Timeline;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljavafx/animation/Timeline;-><init>()V

    move-object v7, v9

    .line 450
    .local v7, "timeline":Ljavafx/animation/Timeline;
    move-object v9, v7

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 452
    new-instance v9, Ljavafx/animation/KeyValue;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v2

    invoke-static {v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v11

    move-wide v12, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    sget-object v13, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-direct {v10, v11, v12, v13}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    move-object v8, v9

    .line 453
    .local v8, "keyValue":Ljavafx/animation/KeyValue;
    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->clear()V

    .line 454
    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v9

    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v3

    const/4 v13, 0x1

    new-array v13, v13, [Ljavafx/animation/KeyValue;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v8

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 456
    move-object v9, v7

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 457
    move-object v9, v7

    move-object v1, v9

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return-object v1
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
    .line 670
    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties;->access$1800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getRotation(Ljavafx/geometry/Side;)I
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "pos":Ljavafx/geometry/Side;
    sget-object v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$3;->$SwitchMap$javafx$geometry$Side:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/geometry/Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 147
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "pos":Ljavafx/geometry/Side;
    :goto_0
    return v0

    .line 139
    .restart local v0    # "pos":Ljavafx/geometry/Side;
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 141
    :pswitch_1
    const/16 v1, 0xb4

    move v0, v1

    goto :goto_0

    .line 143
    :pswitch_2
    const/16 v1, -0x5a

    move v0, v1

    goto :goto_0

    .line 145
    :pswitch_3
    const/16 v1, 0x5a

    move v0, v1

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeSwipeHandlers()V
    .locals 4

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    sget-boolean v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->IS_TOUCH_SUPPORTED:Z

    if-eqz v1, :cond_0

    .line 467
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane;

    sget-object v2, Ljavafx/scene/input/SwipeEvent;->SWIPE_LEFT:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TabPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 471
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane;

    sget-object v2, Ljavafx/scene/input/SwipeEvent;->SWIPE_RIGHT:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TabPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 475
    :cond_0
    return-void
.end method

.method private initializeTabListener()V
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane;

    invoke-virtual {v1}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 421
    return-void
.end method

.method private isFloatingStyleClass()Z
    .locals 3

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane;

    invoke-virtual {v1}, Ljavafx/scene/control/TabPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "floating"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return v0
.end method

.method private isHorizontal()Z
    .locals 4

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TabPane;

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v2

    move-object v1, v2

    .line 462
    .local v1, "tabPosition":Ljavafx/geometry/Side;
    sget-object v2, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$addTabs$484(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "tabRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;->NONE:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$702(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    move-result-object v2

    .line 342
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setVisible(Z)V

    .line 343
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 344
    return-void
.end method

.method private synthetic lambda$initializeSwipeHandlers$486(Ljavafx/scene/input/SwipeEvent;)V
    .locals 3

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/input/SwipeEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->selectNextTab()V

    .line 469
    return-void
.end method

.method private synthetic lambda$initializeSwipeHandlers$487(Ljavafx/scene/input/SwipeEvent;)V
    .locals 3

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/input/SwipeEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->selectPreviousTab()V

    .line 473
    return-void
.end method

.method private synthetic lambda$initializeTabListener$485(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 20

    .prologue
    .line 356
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object/from16 v3, p1

    .local v3, "c":Ljavafx/collections/ListChangeListener$Change;
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v15

    .line 357
    .local v4, "tabsToRemove":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/Tab;>;"
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v15

    .line 358
    .local v5, "tabsToAdd":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/Tab;>;"
    const/4 v15, -0x1

    move v6, v15

    .line 360
    .local v6, "insertPos":I
    :cond_0
    :goto_0
    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 361
    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 362
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TabPane;

    move-object v7, v15

    .line 363
    .local v7, "tabPane":Ljavafx/scene/control/TabPane;
    move-object v15, v7

    invoke-virtual {v15}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v15

    move-object v8, v15

    .line 369
    .local v8, "tabs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/Tab;>;"
    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v15

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v16

    sub-int v15, v15, v16

    move v9, v15

    .line 370
    .local v9, "size":I
    move-object v15, v7

    invoke-virtual {v15}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v15

    invoke-virtual {v15}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/Tab;

    move-object v10, v15

    .line 371
    .local v10, "selTab":Ljavafx/scene/control/Tab;
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move/from16 v17, v9

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v15

    .line 372
    .local v11, "permutatedTabs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/Tab;>;"
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TabPane;

    invoke-virtual {v15}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v15

    invoke-virtual {v15}, Ljavafx/scene/control/SingleSelectionModel;->clearSelection()V

    .line 376
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->openTabAnimation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v15}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;

    move-object v12, v15

    .line 377
    .local v12, "prevOpenAnimation":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->closeTabAnimation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v15}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;

    move-object v13, v15

    .line 378
    .local v13, "prevCloseAnimation":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->openTabAnimation:Ljavafx/beans/property/ObjectProperty;

    sget-object v16, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;->NONE:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;

    invoke-virtual/range {v15 .. v16}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 379
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->closeTabAnimation:Ljavafx/beans/property/ObjectProperty;

    sget-object v16, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;->NONE:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;

    invoke-virtual/range {v15 .. v16}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 380
    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v15

    move v14, v15

    .local v14, "i":I
    :goto_1
    move v15, v14

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 381
    move-object v15, v11

    move-object/from16 v16, v8

    move/from16 v17, v14

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 380
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 384
    :cond_1
    move-object v15, v2

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->removeTabs(Ljava/util/List;)V

    .line 385
    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->addTabs(Ljava/util/List;I)V

    .line 386
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->openTabAnimation:Ljavafx/beans/property/ObjectProperty;

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 387
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->closeTabAnimation:Ljavafx/beans/property/ObjectProperty;

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 388
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TabPane;

    invoke-virtual {v15}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    .line 391
    .end local v7    # "tabPane":Ljavafx/scene/control/TabPane;
    .end local v8    # "tabs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/Tab;>;"
    .end local v9    # "size":I
    .end local v10    # "selTab":Ljavafx/scene/control/Tab;
    .end local v11    # "permutatedTabs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/Tab;>;"
    .end local v12    # "prevOpenAnimation":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;
    .end local v13    # "prevCloseAnimation":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;
    .end local v14    # "i":I
    :cond_2
    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 392
    move-object v15, v4

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v15

    .line 395
    :cond_3
    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 396
    move-object v15, v5

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v15

    .line 397
    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v15

    move v6, v15

    goto/16 :goto_0

    .line 402
    :cond_4
    move-object v15, v4

    move-object/from16 v16, v5

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v15

    .line 403
    move-object v15, v2

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->removeTabs(Ljava/util/List;)V

    .line 406
    move-object v15, v5

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 407
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    invoke-interface {v15}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v7, v15

    :goto_2
    move-object v15, v7

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    move-object v8, v15

    .line 408
    .local v8, "tabContentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v15, v8

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v15

    move-object v9, v15

    .line 409
    .local v9, "tab":Ljavafx/scene/control/Tab;
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v16, v9

    invoke-static/range {v15 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-result-object v15

    move-object v10, v15

    .line 410
    .local v10, "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v15, v10

    invoke-static {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object v15, v5

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 411
    move-object v15, v5

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v15

    .line 413
    :cond_5
    goto :goto_2

    .line 415
    .end local v8    # "tabContentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    .end local v9    # "tab":Ljavafx/scene/control/Tab;
    .end local v10    # "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_6
    move-object v15, v2

    move-object/from16 v16, v5

    move/from16 v17, v6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljavafx/collections/ObservableList;->size()I

    move-result v17

    :goto_3
    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->addTabs(Ljava/util/List;I)V

    .line 419
    :cond_7
    move-object v15, v2

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TabPane;

    invoke-virtual {v15}, Ljavafx/scene/control/TabPane;->requestLayout()V

    .line 420
    return-void

    .line 415
    :cond_8
    move/from16 v17, v6

    goto :goto_3
.end method

.method private synthetic lambda$removeTabs$483(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, p1

    .local v1, "tabRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v2, p2

    .local v2, "tab":Ljavafx/scene/control/Tab;
    move-object v3, p3

    .local v3, "ae":Ljavafx/event/ActionEvent;
    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;->NONE:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$702(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    move-result-object v4

    .line 280
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$4600(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;)V

    .line 281
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->requestLayout()V

    .line 282
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TabPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setVisible(Z)V

    .line 285
    :cond_0
    return-void
.end method

.method private removeTabContent(Ljavafx/scene/control/Tab;)V
    .locals 6

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    move-object v3, v4

    .line 433
    .local v3, "contentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->access$1400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;Ljavafx/scene/control/Tab;)V

    .line 435
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 436
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 437
    .line 440
    .end local v3    # "contentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    :cond_0
    return-void

    .line 439
    .restart local v3    # "contentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    :cond_1
    goto :goto_0
.end method

.method private removeTabs(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object/from16 v1, p1

    .local v1, "removedList":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/Tab;>;"
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v9

    :goto_0
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/Tab;

    move-object v3, v9

    .line 250
    .local v3, "tab":Ljavafx/scene/control/Tab;
    move-object v9, v0

    move-object v10, v3

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->stopCurrentAnimation(Ljavafx/scene/control/Tab;)V

    .line 252
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-result-object v9

    move-object v4, v9

    .line 253
    .local v4, "tabRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 254
    move-object v9, v4

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$302(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Z)Z

    move-result v9

    .line 256
    move-object v9, v4

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;)V

    .line 257
    move-object v9, v0

    move-object v10, v3

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->removeTabContent(Ljavafx/scene/control/Tab;)V

    .line 260
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$500(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$600(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;)Ljavafx/scene/control/ContextMenu;

    move-result-object v9

    move-object v5, v9

    .line 261
    .local v5, "popupMenu":Ljavafx/scene/control/ContextMenu;
    const/4 v9, 0x0

    move-object v6, v9

    .line 262
    .local v6, "tabItem":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    move-object v9, v5

    if-eqz v9, :cond_0

    .line 263
    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_1
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/MenuItem;

    move-object v8, v9

    .line 264
    .local v8, "item":Ljavafx/scene/control/MenuItem;
    move-object v9, v8

    check-cast v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;

    move-object v6, v9

    .line 265
    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 266
    .line 271
    .end local v8    # "item":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v9, v6

    if-eqz v9, :cond_1

    .line 272
    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->dispose()V

    .line 273
    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v6

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 277
    :cond_1
    move-object v9, v0

    move-object v10, v4

    move-object v11, v3

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;)Ljavafx/event/EventHandler;

    move-result-object v9

    move-object v7, v9

    .line 287
    .local v7, "cleanup":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->closeTabAnimation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v9}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;->GROW:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;

    if-ne v9, v10, :cond_4

    .line 288
    move-object v9, v4

    sget-object v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;->HIDING:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$702(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    move-result-object v9

    .line 289
    move-object v9, v4

    move-object v10, v0

    move-object v11, v4

    const-wide v12, 0x4062c00000000000L    # 150.0

    .line 290
    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    const-wide/16 v13, 0x0

    move-object v15, v7

    invoke-direct/range {v10 .. v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->createTimeline(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/util/Duration;DLjavafx/event/EventHandler;)Ljavafx/animation/Timeline;

    move-result-object v10

    .line 289
    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$802(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/animation/Timeline;)Ljavafx/animation/Timeline;

    move-result-object v9

    move-object v8, v9

    .line 291
    .local v8, "closedTabTimeline":Ljavafx/animation/Timeline;
    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/animation/Timeline;->play()V

    .line 292
    .line 296
    .end local v5    # "popupMenu":Ljavafx/scene/control/ContextMenu;
    .end local v6    # "tabItem":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    .end local v7    # "cleanup":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    .end local v8    # "closedTabTimeline":Ljavafx/animation/Timeline;
    :cond_2
    :goto_2
    goto/16 :goto_0

    .line 268
    .restart local v5    # "popupMenu":Ljavafx/scene/control/ContextMenu;
    .restart local v6    # "tabItem":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    .local v8, "item":Ljavafx/scene/control/MenuItem;
    :cond_3
    const/4 v9, 0x0

    move-object v6, v9

    .line 269
    goto :goto_1

    .line 293
    .end local v8    # "item":Ljavafx/scene/control/MenuItem;
    .restart local v7    # "cleanup":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_4
    move-object v9, v7

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    goto :goto_2

    .line 297
    .end local v3    # "tab":Ljavafx/scene/control/Tab;
    .end local v4    # "tabRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    .end local v5    # "popupMenu":Ljavafx/scene/control/ContextMenu;
    .end local v6    # "tabItem":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    .end local v7    # "cleanup":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :cond_5
    return-void
.end method

.method private stopCurrentAnimation(Ljavafx/scene/control/Tab;)V
    .locals 6

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-result-object v4

    move-object v2, v4

    .line 301
    .local v2, "tabRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 303
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/animation/Timeline;

    move-result-object v4

    move-object v3, v4

    .line 304
    .local v3, "timeline":Ljavafx/animation/Timeline;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v4

    sget-object v5, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v4, v5, :cond_0

    .line 305
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 306
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->stop()V

    .line 307
    move-object v4, v2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$802(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/animation/Timeline;)Ljavafx/animation/Timeline;

    move-result-object v4

    .line 310
    .end local v3    # "timeline":Ljavafx/animation/Timeline;
    :cond_0
    return-void
.end method

.method private updateTabPosition()V
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$1500(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;D)V

    .line 444
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane;

    invoke-virtual {v1}, Ljavafx/scene/control/TabPane;->applyCss()V

    .line 445
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane;

    invoke-virtual {v1}, Ljavafx/scene/control/TabPane;->requestLayout()V

    .line 446
    return-void
.end method


# virtual methods
.method public computeBaselineOffset(DDDD)D
    .locals 15

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-wide/from16 v1, p1

    .local v1, "topInset":D
    move-wide/from16 v3, p3

    .local v3, "rightInset":D
    move-wide/from16 v5, p5

    .local v5, "bottomInset":D
    move-wide/from16 v7, p7

    .local v7, "leftInset":D
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TabPane;

    invoke-virtual {v10}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v10

    move-object v9, v10

    .line 516
    .local v9, "tabPosition":Ljavafx/geometry/Side;
    move-object v10, v9

    sget-object v11, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-ne v10, v11, :cond_0

    .line 517
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getBaselineOffset()D

    move-result-wide v10

    move-wide v12, v1

    add-double/2addr v10, v12

    move-wide v0, v10

    .line 519
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    :cond_0
    const-wide/16 v10, 0x0

    move-wide v0, v10

    goto :goto_0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 27

    .prologue
    .line 501
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-wide/from16 v5, p1

    .local v5, "width":D
    move-wide/from16 v7, p3

    .local v7, "topInset":D
    move-wide/from16 v9, p5

    .local v9, "rightInset":D
    move-wide/from16 v11, p7

    .local v11, "bottomInset":D
    move-wide/from16 v13, p9

    .local v13, "leftInset":D
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v15, v20

    :goto_0
    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    move-object/from16 v16, v20

    .line 502
    .local v16, "contentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxh:D

    move-wide/from16 v21, v0

    move-object/from16 v23, v4

    move-object/from16 v24, v16

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->prefHeight(D)D

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->snapSize(D)D

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(DD)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxh:D

    .line 503
    goto :goto_0

    .line 505
    .end local v16    # "contentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    :cond_0
    move-object/from16 v20, v4

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isHorizontal()Z

    move-result v20

    move/from16 v15, v20

    .line 506
    .local v15, "isHorizontal":Z
    move-object/from16 v20, v4

    move/from16 v21, v15

    if-eqz v21, :cond_1

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 507
    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->prefHeight(D)D

    move-result-wide v21

    .line 506
    :goto_1
    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 509
    .local v16, "tabHeaderAreaSize":D
    move/from16 v20, v15

    if-eqz v20, :cond_2

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxh:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v4

    move-wide/from16 v23, v16

    .line 510
    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->snapSize(D)D

    move-result-wide v22

    add-double v20, v20, v22

    :goto_2
    move-wide/from16 v18, v20

    .line 511
    .local v18, "prefHeight":D
    move-object/from16 v20, v4

    move-wide/from16 v21, v18

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v22, v7

    add-double v20, v20, v22

    move-wide/from16 v22, v11

    add-double v20, v20, v22

    move-wide/from16 v4, v20

    .end local v4    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return-wide v4

    .line 507
    .end local v16    # "tabHeaderAreaSize":D
    .end local v18    # "prefHeight":D
    .restart local v4    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    :cond_1
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->prefWidth(D)D

    move-result-wide v21

    goto :goto_1

    .line 510
    .restart local v16    # "tabHeaderAreaSize":D
    :cond_2
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxh:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v16

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    goto :goto_2
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 27

    .prologue
    .line 485
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-wide/from16 v5, p1

    .local v5, "height":D
    move-wide/from16 v7, p3

    .local v7, "topInset":D
    move-wide/from16 v9, p5

    .local v9, "rightInset":D
    move-wide/from16 v11, p7

    .local v11, "bottomInset":D
    move-wide/from16 v13, p9

    .local v13, "leftInset":D
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v15, v20

    :goto_0
    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    move-object/from16 v16, v20

    .line 486
    .local v16, "contentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxw:D

    move-wide/from16 v21, v0

    move-object/from16 v23, v4

    move-object/from16 v24, v16

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->prefWidth(D)D

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->snapSize(D)D

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(DD)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxw:D

    .line 487
    goto :goto_0

    .line 489
    .end local v16    # "contentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    :cond_0
    move-object/from16 v20, v4

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isHorizontal()Z

    move-result v20

    move/from16 v15, v20

    .line 490
    .local v15, "isHorizontal":Z
    move-object/from16 v20, v4

    move/from16 v21, v15

    if-eqz v21, :cond_1

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 491
    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->prefWidth(D)D

    move-result-wide v21

    .line 490
    :goto_1
    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 493
    .local v16, "tabHeaderAreaSize":D
    move/from16 v20, v15

    if-eqz v20, :cond_2

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxw:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v16

    .line 494
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    :goto_2
    move-wide/from16 v18, v20

    .line 495
    .local v18, "prefWidth":D
    move-object/from16 v20, v4

    move-wide/from16 v21, v18

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v22, v9

    add-double v20, v20, v22

    move-wide/from16 v22, v13

    add-double v20, v20, v22

    move-wide/from16 v4, v20

    .end local v4    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return-wide v4

    .line 491
    .end local v16    # "tabHeaderAreaSize":D
    .end local v18    # "prefWidth":D
    .restart local v4    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    :cond_1
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v21, v0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->prefHeight(D)D

    move-result-wide v21

    goto :goto_1

    .line 494
    .restart local v16    # "tabHeaderAreaSize":D
    :cond_2
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->maxw:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v16

    add-double v20, v20, v22

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
    .line 677
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    return-object v0
.end method

.method public getSelectedTabContentRegion()Ljavafx/scene/layout/StackPane;
    .locals 5

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

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

    check-cast v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    move-object v2, v3

    .line 227
    .local v2, "contentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->selectedTab:Ljavafx/scene/control/Tab;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    move-object v3, v2

    move-object v0, v3

    .line 231
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    :goto_1
    return-object v0

    .line 230
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    :cond_0
    goto :goto_0

    .line 231
    .end local v2    # "contentRegion":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 235
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v2, p1

    .local v2, "property":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 236
    const-string v3, "SELECTED_TAB"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isSelectingTab:Z

    .line 238
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TabPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Tab;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->selectedTab:Ljavafx/scene/control/Tab;

    .line 239
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->requestLayout()V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string v3, "SIDE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->updateTabPosition()V

    goto :goto_0

    .line 242
    :cond_2
    const-string v3, "WIDTH"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TabPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    goto :goto_0

    .line 244
    :cond_3
    const-string v3, "HEIGHT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TabPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    goto :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 41

    .prologue
    .line 524
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v31

    check-cast v31, Ljavafx/scene/control/TabPane;

    move-object/from16 v12, v31

    .line 525
    .local v12, "tabPane":Ljavafx/scene/control/TabPane;
    move-object/from16 v31, v12

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v31

    move-object/from16 v13, v31

    .line 527
    .local v13, "tabPosition":Ljavafx/geometry/Side;
    move-object/from16 v31, v3

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v32, v0

    const-wide/high16 v33, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->prefHeight(D)D

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->snapSize(D)D

    move-result-wide v31

    move-wide/from16 v14, v31

    .line 528
    .local v14, "headerHeight":D
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    invoke-virtual/range {v31 .. v32}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    move-wide/from16 v31, v4

    move-wide/from16 v33, v8

    add-double v31, v31, v33

    move-wide/from16 v33, v14

    sub-double v31, v31, v33

    :goto_0
    move-wide/from16 v16, v31

    .line 529
    .local v16, "tabsStartX":D
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual/range {v31 .. v32}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    move-wide/from16 v31, v6

    move-wide/from16 v33, v10

    add-double v31, v31, v33

    move-wide/from16 v33, v14

    sub-double v31, v31, v33

    :goto_1
    move-wide/from16 v18, v31

    .line 531
    .local v18, "tabsStartY":D
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 532
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    move-wide/from16 v32, v8

    move-wide/from16 v34, v14

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->resize(DD)V

    .line 533
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    move-wide/from16 v32, v16

    move-wide/from16 v34, v18

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->relocate(DD)V

    .line 534
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljavafx/collections/ObservableList;->clear()V

    .line 535
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v31

    new-instance v32, Ljavafx/scene/transform/Rotate;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    sget-object v34, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getRotation(Ljavafx/geometry/Side;)I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-direct/range {v33 .. v35}, Ljavafx/scene/transform/Rotate;-><init>(D)V

    invoke-interface/range {v31 .. v32}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v31

    .line 553
    :cond_0
    :goto_2
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderAreaClipRect:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 554
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderAreaClipRect:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 555
    move-object/from16 v31, v3

    invoke-direct/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isHorizontal()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 556
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderAreaClipRect:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v31, v0

    move-wide/from16 v32, v8

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 560
    :goto_3
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderAreaClipRect:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v31, v0

    move-wide/from16 v32, v14

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 566
    const-wide/16 v31, 0x0

    move-wide/from16 v20, v31

    .line 567
    .local v20, "contentStartX":D
    const-wide/16 v31, 0x0

    move-wide/from16 v22, v31

    .line 569
    .local v22, "contentStartY":D
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 570
    move-wide/from16 v31, v4

    move-wide/from16 v20, v31

    .line 571
    move-wide/from16 v31, v6

    move-wide/from16 v33, v14

    add-double v31, v31, v33

    move-wide/from16 v22, v31

    .line 572
    move-object/from16 v31, v3

    invoke-direct/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isFloatingStyleClass()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 574
    move-wide/from16 v31, v22

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    sub-double v31, v31, v33

    move-wide/from16 v22, v31

    .line 599
    :cond_1
    :goto_4
    move-wide/from16 v31, v8

    move-object/from16 v33, v3

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isHorizontal()Z

    move-result v33

    if-eqz v33, :cond_c

    const-wide/16 v33, 0x0

    :goto_5
    sub-double v31, v31, v33

    move-wide/from16 v24, v31

    .line 600
    .local v24, "contentWidth":D
    move-wide/from16 v31, v10

    move-object/from16 v33, v3

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isHorizontal()Z

    move-result v33

    if-eqz v33, :cond_d

    move-wide/from16 v33, v14

    :goto_6
    sub-double v31, v31, v33

    move-wide/from16 v26, v31

    .line 602
    .local v26, "contentHeight":D
    const/16 v31, 0x0

    move/from16 v28, v31

    .local v28, "i":I
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljavafx/collections/ObservableList;->size()I

    move-result v31

    move/from16 v29, v31

    .local v29, "max":I
    :goto_7
    move/from16 v31, v28

    move/from16 v32, v29

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    .line 603
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabContentRegions:Ljavafx/collections/ObservableList;

    move-object/from16 v31, v0

    move/from16 v32, v28

    invoke-interface/range {v31 .. v32}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    move-object/from16 v30, v31

    .line 605
    .local v30, "tabContent":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object/from16 v31, v30

    sget-object v32, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual/range {v31 .. v32}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 606
    move-object/from16 v31, v30

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getClip()Ljavafx/scene/Node;

    move-result-object v31

    if-eqz v31, :cond_2

    .line 607
    move-object/from16 v31, v30

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getClip()Ljavafx/scene/Node;

    move-result-object v31

    check-cast v31, Ljavafx/scene/shape/Rectangle;

    move-wide/from16 v32, v24

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 608
    move-object/from16 v31, v30

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getClip()Ljavafx/scene/Node;

    move-result-object v31

    check-cast v31, Ljavafx/scene/shape/Rectangle;

    move-wide/from16 v32, v26

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 613
    :cond_2
    move-object/from16 v31, v30

    move-wide/from16 v32, v24

    move-wide/from16 v34, v26

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->resize(DD)V

    .line 614
    move-object/from16 v31, v30

    move-wide/from16 v32, v20

    move-wide/from16 v34, v22

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->relocate(DD)V

    .line 602
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 528
    .end local v16    # "tabsStartX":D
    .end local v18    # "tabsStartY":D
    .end local v20    # "contentStartX":D
    .end local v22    # "contentStartY":D
    .end local v24    # "contentWidth":D
    .end local v26    # "contentHeight":D
    .end local v28    # "i":I
    .end local v29    # "max":I
    .end local v30    # "tabContent":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    :cond_3
    move-wide/from16 v31, v4

    goto/16 :goto_0

    .line 529
    .restart local v16    # "tabsStartX":D
    :cond_4
    move-wide/from16 v31, v6

    goto/16 :goto_1

    .line 536
    .restart local v18    # "tabsStartY":D
    :cond_5
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 537
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    move-wide/from16 v32, v8

    move-wide/from16 v34, v14

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->resize(DD)V

    .line 538
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    move-wide/from16 v32, v8

    move-wide/from16 v34, v18

    move-wide/from16 v36, v14

    sub-double v34, v34, v36

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->relocate(DD)V

    .line 539
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljavafx/collections/ObservableList;->clear()V

    .line 540
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v31

    new-instance v32, Ljavafx/scene/transform/Rotate;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    sget-object v34, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getRotation(Ljavafx/geometry/Side;)I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    move-wide/from16 v38, v14

    invoke-direct/range {v33 .. v39}, Ljavafx/scene/transform/Rotate;-><init>(DDD)V

    invoke-interface/range {v31 .. v32}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v31

    goto/16 :goto_2

    .line 541
    :cond_6
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 542
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    move-wide/from16 v32, v10

    move-wide/from16 v34, v14

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->resize(DD)V

    .line 543
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    move-wide/from16 v32, v16

    move-wide/from16 v34, v14

    add-double v32, v32, v34

    move-wide/from16 v34, v10

    move-wide/from16 v36, v14

    sub-double v34, v34, v36

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->relocate(DD)V

    .line 544
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljavafx/collections/ObservableList;->clear()V

    .line 545
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v31

    new-instance v32, Ljavafx/scene/transform/Rotate;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    sget-object v34, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getRotation(Ljavafx/geometry/Side;)I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    move-wide/from16 v38, v14

    invoke-direct/range {v33 .. v39}, Ljavafx/scene/transform/Rotate;-><init>(DDD)V

    invoke-interface/range {v31 .. v32}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v31

    goto/16 :goto_2

    .line 546
    :cond_7
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 547
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    move-wide/from16 v32, v10

    move-wide/from16 v34, v14

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->resize(DD)V

    .line 548
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    move-wide/from16 v32, v16

    move-wide/from16 v34, v6

    move-wide/from16 v36, v14

    sub-double v34, v34, v36

    invoke-virtual/range {v31 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->relocate(DD)V

    .line 549
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljavafx/collections/ObservableList;->clear()V

    .line 550
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v31

    new-instance v32, Ljavafx/scene/transform/Rotate;

    move-object/from16 v40, v32

    move-object/from16 v32, v40

    move-object/from16 v33, v40

    sget-object v34, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getRotation(Ljavafx/geometry/Side;)I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    move-wide/from16 v38, v14

    invoke-direct/range {v33 .. v39}, Ljavafx/scene/transform/Rotate;-><init>(DDD)V

    invoke-interface/range {v31 .. v32}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v31

    goto/16 :goto_2

    .line 558
    :cond_8
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderAreaClipRect:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v31, v0

    move-wide/from16 v32, v10

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    goto/16 :goto_3

    .line 576
    .restart local v20    # "contentStartX":D
    .restart local v22    # "contentStartY":D
    :cond_9
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 577
    move-wide/from16 v31, v4

    move-wide/from16 v20, v31

    .line 578
    move-wide/from16 v31, v6

    move-wide/from16 v22, v31

    .line 579
    move-object/from16 v31, v3

    invoke-direct/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isFloatingStyleClass()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 581
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v31

    goto/16 :goto_4

    .line 583
    :cond_a
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 584
    move-wide/from16 v31, v4

    move-wide/from16 v33, v14

    add-double v31, v31, v33

    move-wide/from16 v20, v31

    .line 585
    move-wide/from16 v31, v6

    move-wide/from16 v22, v31

    .line 586
    move-object/from16 v31, v3

    invoke-direct/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isFloatingStyleClass()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 588
    move-wide/from16 v31, v20

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    sub-double v31, v31, v33

    move-wide/from16 v20, v31

    goto/16 :goto_4

    .line 590
    :cond_b
    move-object/from16 v31, v13

    sget-object v32, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 591
    move-wide/from16 v31, v4

    move-wide/from16 v20, v31

    .line 592
    move-wide/from16 v31, v6

    move-wide/from16 v22, v31

    .line 593
    move-object/from16 v31, v3

    invoke-direct/range {v31 .. v31}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->isFloatingStyleClass()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 595
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v31

    goto/16 :goto_4

    .line 599
    :cond_c
    move-wide/from16 v33, v14

    goto/16 :goto_5

    .line 600
    .restart local v24    # "contentWidth":D
    :cond_d
    const-wide/16 v33, 0x0

    goto/16 :goto_6

    .line 616
    .restart local v26    # "contentHeight":D
    .restart local v28    # "i":I
    .restart local v29    # "max":I
    :cond_e
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1821
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1829
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    :goto_0
    return-object v0

    .line 1822
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->selectedTab:Ljavafx/scene/control/Tab;

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1823
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljavafx/scene/layout/StackPane;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1825
    :pswitch_2
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    .line 1826
    .local v3, "index":Ljava/lang/Integer;
    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 1827
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->tabHeaderArea:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->access$900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljavafx/scene/layout/StackPane;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1821
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
