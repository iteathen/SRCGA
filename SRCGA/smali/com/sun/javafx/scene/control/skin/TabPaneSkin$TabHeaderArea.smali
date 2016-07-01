.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
.super Ljavafx/scene/layout/StackPane;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabHeaderArea"
.end annotation


# instance fields
.field private controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

.field private headerBackground:Ljavafx/scene/layout/StackPane;

.field private headerClip:Ljavafx/scene/shape/Rectangle;

.field private headersRegion:Ljavafx/scene/layout/StackPane;

.field private measureClosingTabs:Z

.field private removeTab:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;",
            ">;"
        }
    .end annotation
.end field

.field private scrollOffset:D

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V
    .locals 12

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 691
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->measureClosingTabs:Z

    .line 882
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->removeTab:Ljava/util/List;

    .line 696
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string v10, "tab-header-area"

    aput-object v10, v8, v9

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v6

    .line 697
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setManaged(Z)V

    .line 698
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    move-object v2, v6

    .line 700
    .local v2, "tabPane":Ljavafx/scene/control/TabPane;
    move-object v6, v0

    new-instance v7, Ljavafx/scene/shape/Rectangle;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerClip:Ljavafx/scene/shape/Rectangle;

    .line 702
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$1;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    .line 789
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string v10, "headers-region"

    aput-object v10, v8, v9

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v6

    .line 790
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerClip:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/StackPane;->setClip(Ljavafx/scene/Node;)V

    .line 792
    move-object v6, v0

    new-instance v7, Ljavafx/scene/layout/StackPane;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerBackground:Ljavafx/scene/layout/StackPane;

    .line 793
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerBackground:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string v10, "tab-header-background"

    aput-object v10, v8, v9

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v6

    .line 795
    const/4 v6, 0x0

    move v3, v6

    .line 796
    .local v3, "i":I
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Tab;

    move-object v5, v6

    .line 797
    .local v5, "tab":Ljavafx/scene/control/Tab;
    move-object v6, v0

    move-object v7, v5

    move v8, v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->addTab(Ljavafx/scene/control/Tab;I)V

    .line 798
    goto :goto_0

    .line 800
    .end local v5    # "tab":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    .line 801
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->setVisible(Z)V

    .line 802
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 803
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->setVisible(Z)V

    .line 805
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljavafx/scene/Node;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerBackground:Ljavafx/scene/layout/StackPane;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    aput-object v10, v8, v9

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v6

    .line 809
    move-object v6, v0

    sget-object v7, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    move-object v8, v0

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 825
    return-void
.end method

.method static synthetic access$1100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;I)V
    .locals 6

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/Tab;
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->addTab(Ljavafx/scene/control/Tab;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;D)V
    .locals 7

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setScrollOffset(D)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Z
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->measureClosingTabs:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/Tab;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTabHeaderSkin(Ljavafx/scene/control/Tab;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return-object v0
.end method

.method static synthetic access$2000(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Z
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->tabsFit()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return v0
.end method

.method static synthetic access$2100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljava/util/List;
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->removeTab:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return-object v0
.end method

.method static synthetic access$2300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)D
    .locals 3

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->firstTabIndent()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return-wide v0
.end method

.method static synthetic access$2500(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)V
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->ensureSelectedTabIsVisible()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)V
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->validateScrollOffset()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)V
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->updateHeaderClip()V

    return-void
.end method

.method static synthetic access$4600(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/control/Tab;)V
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/Tab;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->removeTab(Ljavafx/scene/control/Tab;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;Ljavafx/scene/input/ScrollEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->lambda$new$488(Ljavafx/scene/input/ScrollEvent;)V

    return-void
.end method

.method private addTab(Ljavafx/scene/control/Tab;I)V
    .locals 9

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move v2, p2

    .local v2, "addToIndex":I
    new-instance v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/control/Tab;)V

    move-object v3, v4

    .line 879
    .local v3, "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 880
    return-void
.end method

.method private ensureSelectedTabIsVisible()V
    .locals 30

    .prologue
    .line 916
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v25

    check-cast v25, Ljavafx/scene/control/TabPane;

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TabPane;->getWidth()D

    move-result-wide v25

    :goto_0
    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v24

    move-wide/from16 v4, v24

    .line 917
    .local v4, "tabPaneWidth":D
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->getWidth()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v24

    move-wide/from16 v6, v24

    .line 918
    .local v6, "controlTabWidth":D
    move-wide/from16 v24, v4

    move-wide/from16 v26, v6

    sub-double v24, v24, v26

    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->firstTabIndent()D

    move-result-wide v26

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    sub-double v24, v24, v26

    move-wide/from16 v8, v24

    .line 921
    .local v8, "visibleWidth":D
    const-wide/16 v24, 0x0

    move-wide/from16 v10, v24

    .line 922
    .local v10, "offset":D
    const-wide/16 v24, 0x0

    move-wide/from16 v12, v24

    .line 923
    .local v12, "selectedTabOffset":D
    const-wide/16 v24, 0x0

    move-wide/from16 v14, v24

    .line 924
    .local v14, "selectedTabWidth":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v16, v24

    :goto_1
    move-object/from16 v24, v16

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v24, v16

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/Node;

    move-object/from16 v17, v24

    .line 925
    .local v17, "node":Ljavafx/scene/Node;
    move-object/from16 v24, v17

    check-cast v24, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v18, v24

    .line 927
    .local v18, "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object/from16 v24, v3

    move-object/from16 v25, v18

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v25 .. v27}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->prefWidth(D)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v24

    move-wide/from16 v19, v24

    .line 929
    .local v19, "tabHeaderPrefWidth":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/scene/control/Tab;

    move-result-object v24

    if-eqz v24, :cond_0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/scene/control/Tab;

    move-result-object v24

    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 930
    move-wide/from16 v24, v10

    move-wide/from16 v12, v24

    .line 931
    move-wide/from16 v24, v19

    move-wide/from16 v14, v24

    .line 933
    :cond_0
    move-wide/from16 v24, v10

    move-wide/from16 v26, v19

    add-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 934
    goto :goto_1

    .line 916
    .end local v4    # "tabPaneWidth":D
    .end local v6    # "controlTabWidth":D
    .end local v8    # "visibleWidth":D
    .end local v10    # "offset":D
    .end local v12    # "selectedTabOffset":D
    .end local v14    # "selectedTabWidth":D
    .end local v17    # "node":Ljavafx/scene/Node;
    .end local v18    # "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    .end local v19    # "tabHeaderPrefWidth":D
    :cond_1
    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v25

    check-cast v25, Ljavafx/scene/control/TabPane;

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/TabPane;->getHeight()D

    move-result-wide v25

    goto/16 :goto_0

    .line 936
    .restart local v4    # "tabPaneWidth":D
    .restart local v6    # "controlTabWidth":D
    .restart local v8    # "visibleWidth":D
    .restart local v10    # "offset":D
    .restart local v12    # "selectedTabOffset":D
    .restart local v14    # "selectedTabWidth":D
    :cond_2
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getScrollOffset()D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 937
    .local v16, "scrollOffset":D
    move-wide/from16 v24, v12

    move-wide/from16 v18, v24

    .line 938
    .local v18, "selectedTabStartX":D
    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    add-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 940
    .local v20, "selectedTabEndX":D
    move-wide/from16 v24, v8

    move-wide/from16 v22, v24

    .line 942
    .local v22, "visibleAreaEndX":D
    move-wide/from16 v24, v18

    move-wide/from16 v26, v16

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_4

    .line 943
    move-object/from16 v24, v3

    move-wide/from16 v25, v18

    move-wide/from16 v0, v25

    neg-double v0, v0

    move-wide/from16 v25, v0

    invoke-direct/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setScrollOffset(D)V

    .line 947
    :cond_3
    :goto_2
    return-void

    .line 944
    :cond_4
    move-wide/from16 v24, v20

    move-wide/from16 v26, v22

    move-wide/from16 v28, v16

    sub-double v26, v26, v28

    cmpl-double v24, v24, v26

    if-lez v24, :cond_3

    .line 945
    move-object/from16 v24, v3

    move-wide/from16 v25, v22

    move-wide/from16 v27, v20

    sub-double v25, v25, v27

    invoke-direct/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setScrollOffset(D)V

    goto :goto_2
.end method

.method private firstTabIndent()D
    .locals 4

    .prologue
    .line 994
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$3;->$SwitchMap$javafx$geometry$Side:[I

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/geometry/Side;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1002
    const-wide/16 v2, 0x0

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    :goto_0
    return-wide v1

    .line 997
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    :pswitch_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedLeftInset()D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0

    .line 1000
    :pswitch_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedTopInset()D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0

    .line 994
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getTabHeaderSkin(Ljavafx/scene/control/Tab;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    .locals 7

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v3, v5

    .line 899
    .local v3, "child":Ljavafx/scene/Node;
    move-object v5, v3

    check-cast v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v4, v5

    .line 900
    .local v4, "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 901
    move-object v5, v4

    move-object v0, v5

    .line 904
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    .end local v3    # "child":Ljavafx/scene/Node;
    .end local v4    # "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :goto_1
    return-object v0

    .line 903
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    .restart local v3    # "child":Ljavafx/scene/Node;
    .restart local v4    # "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_0
    goto :goto_0

    .line 904
    .end local v3    # "child":Ljavafx/scene/Node;
    .end local v4    # "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method private synthetic lambda$new$488(Ljavafx/scene/input/ScrollEvent;)V
    .locals 8

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/ScrollEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v3

    move-object v2, v3

    .line 811
    .local v2, "side":Ljavafx/geometry/Side;
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    :goto_0
    move-object v2, v3

    .line 812
    sget-object v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$3;->$SwitchMap$javafx$geometry$Side:[I

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Side;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 816
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->scrollOffset:D

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setScrollOffset(D)V

    .line 817
    .line 824
    :goto_1
    return-void

    .line 811
    :cond_0
    move-object v3, v2

    goto :goto_0

    .line 820
    :pswitch_0
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->scrollOffset:D

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/ScrollEvent;->getDeltaY()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setScrollOffset(D)V

    goto :goto_1

    .line 812
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeTab(Ljavafx/scene/control/Tab;)V
    .locals 5

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getTabHeaderSkin(Ljavafx/scene/control/Tab;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-result-object v3

    move-object v2, v3

    .line 885
    .local v2, "tabHeaderSkin":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 886
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->tabsFit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->removeTab:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 892
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;)V

    goto :goto_0
.end method

.method private setScrollOffset(D)V
    .locals 25

    .prologue
    .line 959
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-wide/from16 v5, p1

    .local v5, "newScrollOffset":D
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v21

    check-cast v21, Ljavafx/scene/control/TabPane;

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/control/TabPane;->getWidth()D

    move-result-wide v21

    :goto_0
    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v7, v20

    .line 960
    .local v7, "tabPaneWidth":D
    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->getWidth()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v9, v20

    .line 961
    .local v9, "controlTabWidth":D
    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    sub-double v20, v20, v22

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->firstTabIndent()D

    move-result-wide v22

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    sub-double v20, v20, v22

    move-wide/from16 v11, v20

    .line 964
    .local v11, "visibleWidth":D
    const-wide/16 v20, 0x0

    move-wide/from16 v13, v20

    .line 965
    .local v13, "offset":D
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v15, v20

    :goto_1
    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v20, v15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v16, v20

    .line 966
    .local v16, "node":Ljavafx/scene/Node;
    move-object/from16 v20, v16

    check-cast v20, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v17, v20

    .line 967
    .local v17, "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object/from16 v20, v4

    move-object/from16 v21, v17

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->prefWidth(D)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 968
    .local v18, "tabHeaderPrefWidth":D
    move-wide/from16 v20, v13

    move-wide/from16 v22, v18

    add-double v20, v20, v22

    move-wide/from16 v13, v20

    .line 969
    goto :goto_1

    .line 959
    .end local v7    # "tabPaneWidth":D
    .end local v9    # "controlTabWidth":D
    .end local v11    # "visibleWidth":D
    .end local v13    # "offset":D
    .end local v16    # "node":Ljavafx/scene/Node;
    .end local v17    # "tabHeader":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    .end local v18    # "tabHeaderPrefWidth":D
    :cond_0
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v21

    check-cast v21, Ljavafx/scene/control/TabPane;

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/control/TabPane;->getHeight()D

    move-result-wide v21

    goto/16 :goto_0

    .line 973
    .restart local v7    # "tabPaneWidth":D
    .restart local v9    # "controlTabWidth":D
    .restart local v11    # "visibleWidth":D
    .restart local v13    # "offset":D
    :cond_1
    move-wide/from16 v20, v11

    move-wide/from16 v22, v5

    sub-double v20, v20, v22

    move-wide/from16 v22, v13

    cmpl-double v20, v20, v22

    if-lez v20, :cond_3

    move-wide/from16 v20, v5

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_3

    .line 978
    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    sub-double v20, v20, v22

    move-wide/from16 v15, v20

    .line 987
    .local v15, "actualNewScrollOffset":D
    :goto_2
    move-wide/from16 v20, v15

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->scrollOffset:D

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_2

    .line 988
    move-object/from16 v20, v4

    move-wide/from16 v21, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->scrollOffset:D

    .line 989
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 991
    :cond_2
    return-void

    .line 979
    .end local v15    # "actualNewScrollOffset":D
    :cond_3
    move-wide/from16 v20, v5

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_4

    .line 982
    const-wide/16 v20, 0x0

    move-wide/from16 v15, v20

    .restart local v15    # "actualNewScrollOffset":D
    goto :goto_2

    .line 984
    .end local v15    # "actualNewScrollOffset":D
    :cond_4
    move-wide/from16 v20, v5

    move-wide/from16 v15, v20

    .restart local v15    # "actualNewScrollOffset":D
    goto :goto_2
.end method

.method private tabsFit()Z
    .locals 12

    .prologue
    .line 908
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v8

    move-wide v2, v8

    .line 909
    .local v2, "headerPrefWidth":D
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->prefWidth(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v8

    move-wide v4, v8

    .line 910
    .local v4, "controlTabWidth":D
    move-wide v8, v2

    move-wide v10, v4

    add-double/2addr v8, v10

    move-object v10, v1

    invoke-direct {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->firstTabIndent()D

    move-result-wide v10

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 911
    .local v6, "visibleWidth":D
    move-wide v8, v6

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getWidth()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v1, v8

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private updateHeaderClip()V
    .locals 30

    .prologue
    .line 828
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v26

    check-cast v26, Ljavafx/scene/control/TabPane;

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v26

    move-object/from16 v4, v26

    .line 830
    .local v4, "tabPosition":Ljavafx/geometry/Side;
    const-wide/16 v26, 0x0

    move-wide/from16 v5, v26

    .line 831
    .local v5, "x":D
    const-wide/16 v26, 0x0

    move-wide/from16 v7, v26

    .line 832
    .local v7, "y":D
    const-wide/16 v26, 0x0

    move-wide/from16 v9, v26

    .line 833
    .local v9, "clipWidth":D
    const-wide/16 v26, 0x0

    move-wide/from16 v11, v26

    .line 834
    .local v11, "clipHeight":D
    const-wide/16 v26, 0x0

    move-wide/from16 v13, v26

    .line 835
    .local v13, "maxWidth":D
    const-wide/16 v26, 0x0

    move-wide/from16 v15, v26

    .line 836
    .local v15, "shadowRadius":D
    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->firstTabIndent()D

    move-result-wide v26

    move-wide/from16 v17, v26

    .line 837
    .local v17, "clipOffset":D
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->prefWidth(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v19, v26

    .line 839
    .local v19, "controlButtonPrefWidth":D
    move-object/from16 v26, v3

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->measureClosingTabs:Z

    .line 840
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v21, v26

    .line 841
    .local v21, "headersPrefWidth":D
    move-object/from16 v26, v3

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->measureClosingTabs:Z

    .line 843
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v23, v26

    .line 846
    .local v23, "headersPrefHeight":D
    move-wide/from16 v26, v19

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-lez v26, :cond_0

    .line 847
    move-wide/from16 v26, v19

    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    add-double v26, v26, v28

    move-wide/from16 v19, v26

    .line 850
    :cond_0
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/StackPane;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljavafx/scene/effect/DropShadow;

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 851
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/StackPane;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v26

    check-cast v26, Ljavafx/scene/effect/DropShadow;

    move-object/from16 v25, v26

    .line 852
    .local v25, "shadow":Ljavafx/scene/effect/DropShadow;
    move-object/from16 v26, v25

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/effect/DropShadow;->getRadius()D

    move-result-wide v26

    move-wide/from16 v15, v26

    .line 855
    .end local v25    # "shadow":Ljavafx/scene/effect/DropShadow;
    :cond_1
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getWidth()D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v28, v19

    sub-double v26, v26, v28

    move-wide/from16 v28, v17

    sub-double v26, v26, v28

    move-wide/from16 v13, v26

    .line 856
    move-object/from16 v26, v4

    sget-object v27, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    invoke-virtual/range {v26 .. v27}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    move-object/from16 v26, v4

    sget-object v27, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual/range {v26 .. v27}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 857
    :cond_2
    move-wide/from16 v26, v21

    move-wide/from16 v28, v13

    cmpg-double v26, v26, v28

    if-gez v26, :cond_3

    .line 858
    move-wide/from16 v26, v21

    move-wide/from16 v28, v15

    add-double v26, v26, v28

    move-wide/from16 v9, v26

    .line 863
    :goto_0
    move-wide/from16 v26, v23

    move-wide/from16 v11, v26

    .line 871
    :goto_1
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v26, v0

    move-wide/from16 v27, v5

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 872
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v26, v0

    move-wide/from16 v27, v7

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 873
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v26, v0

    move-wide/from16 v27, v9

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 874
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v26, v0

    move-wide/from16 v27, v11

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 875
    return-void

    .line 860
    :cond_3
    move-wide/from16 v26, v21

    move-wide/from16 v28, v13

    sub-double v26, v26, v28

    move-wide/from16 v5, v26

    .line 861
    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    add-double v26, v26, v28

    move-wide/from16 v9, v26

    goto :goto_0

    .line 866
    :cond_4
    move-wide/from16 v26, v15

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v5, v26

    .line 867
    move-wide/from16 v26, v21

    move-wide/from16 v28, v13

    cmpg-double v26, v26, v28

    if-gez v26, :cond_5

    move-wide/from16 v26, v21

    :goto_2
    move-wide/from16 v28, v15

    add-double v26, v26, v28

    move-wide/from16 v9, v26

    .line 868
    move-wide/from16 v26, v23

    move-wide/from16 v11, v26

    goto :goto_1

    .line 867
    :cond_5
    move-wide/from16 v26, v13

    goto :goto_2
.end method

.method private validateScrollOffset()V
    .locals 4

    .prologue
    .line 954
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getScrollOffset()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->setScrollOffset(D)V

    .line 955
    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 11

    .prologue
    .line 1015
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 1016
    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedTopInset()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedBottomInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 1017
    :goto_0
    move-wide v4, v6

    .line 1018
    .local v4, "padding":D
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v6

    move-wide v8, v4

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return-wide v1

    .line 1016
    .end local v4    # "padding":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    :cond_0
    move-object v6, v1

    .line 1017
    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedLeftInset()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedRightInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    goto :goto_0
.end method

.method protected computePrefWidth(D)D
    .locals 11

    .prologue
    .line 1007
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 1008
    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedLeftInset()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedRightInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 1009
    :goto_0
    move-wide v4, v6

    .line 1010
    .local v4, "padding":D
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->prefWidth(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-object v8, v1

    .line 1011
    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->firstTabIndent()D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    add-double/2addr v6, v8

    move-wide v8, v4

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return-wide v1

    .line 1008
    .end local v4    # "padding":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    :cond_0
    move-object v6, v1

    .line 1009
    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedTopInset()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedBottomInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    goto :goto_0
.end method

.method public getBaselineOffset()D
    .locals 6

    .prologue
    .line 1022
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TabPane;

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-ne v2, v3, :cond_0

    .line 1023
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getBaselineOffset()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedTopInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-wide v1, v2

    .line 1025
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v1, v2

    goto :goto_0
.end method

.method public getScrollOffset()D
    .locals 3

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->scrollOffset:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    return-wide v0
.end method

.method protected layoutChildren()V
    .locals 48

    .prologue
    .line 1029
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedLeftInset()D

    move-result-wide v34

    move-wide/from16 v3, v34

    .line 1030
    .local v3, "leftInset":D
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedRightInset()D

    move-result-wide v34

    move-wide/from16 v5, v34

    .line 1031
    .local v5, "rightInset":D
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedTopInset()D

    move-result-wide v34

    move-wide/from16 v7, v34

    .line 1032
    .local v7, "topInset":D
    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snappedBottomInset()D

    move-result-wide v34

    move-wide/from16 v9, v34

    .line 1033
    .local v9, "bottomInset":D
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getWidth()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z

    move-result v36

    if-eqz v36, :cond_2

    move-wide/from16 v36, v3

    move-wide/from16 v38, v5

    add-double v36, v36, v38

    :goto_0
    sub-double v34, v34, v36

    move-wide/from16 v11, v34

    .line 1035
    .local v11, "w":D
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getHeight()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z

    move-result v36

    if-eqz v36, :cond_3

    move-wide/from16 v36, v7

    move-wide/from16 v38, v9

    add-double v36, v36, v38

    :goto_1
    sub-double v34, v34, v36

    move-wide/from16 v13, v34

    .line 1037
    .local v13, "h":D
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v35 .. v37}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->prefHeight(D)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v15, v34

    .line 1038
    .local v15, "tabBackgroundHeight":D
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v35, v0

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v35 .. v37}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v17, v34

    .line 1039
    .local v17, "headersPrefWidth":D
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v35, v0

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v35 .. v37}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v19, v34

    .line 1041
    .local v19, "headersPrefHeight":D
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object/from16 v34, v0

    move-object/from16 v35, v2

    invoke-direct/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->tabsFit()Z

    move-result v35

    if-nez v35, :cond_4

    const/16 v35, 0x1

    :goto_2
    invoke-static/range {v34 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->access$3000(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;Z)V

    .line 1043
    move-object/from16 v34, v2

    invoke-direct/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->updateHeaderClip()V

    .line 1044
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 1047
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object/from16 v35, v0

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v35 .. v37}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->prefWidth(D)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v21, v34

    .line 1048
    .local v21, "btnWidth":D
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object/from16 v34, v0

    move-wide/from16 v35, v21

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->prefHeight(D)D

    move-result-wide v34

    move-wide/from16 v23, v34

    .line 1049
    .local v23, "btnHeight":D
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object/from16 v34, v0

    move-wide/from16 v35, v21

    move-wide/from16 v37, v23

    invoke-virtual/range {v34 .. v38}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;->resize(DD)V

    .line 1052
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    move-wide/from16 v35, v17

    move-wide/from16 v37, v19

    invoke-virtual/range {v34 .. v38}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1054
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 1055
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerBackground:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 1061
    :goto_3
    const-wide/16 v34, 0x0

    move-wide/from16 v25, v34

    .line 1062
    .local v25, "startX":D
    const-wide/16 v34, 0x0

    move-wide/from16 v27, v34

    .line 1063
    .local v27, "startY":D
    const-wide/16 v34, 0x0

    move-wide/from16 v29, v34

    .line 1064
    .local v29, "controlStartX":D
    const-wide/16 v34, 0x0

    move-wide/from16 v31, v34

    .line 1065
    .local v31, "controlStartY":D
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v34

    check-cast v34, Ljavafx/scene/control/TabPane;

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v34

    move-object/from16 v33, v34

    .line 1067
    .local v33, "tabPosition":Ljavafx/geometry/Side;
    move-object/from16 v34, v33

    sget-object v35, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    invoke-virtual/range {v34 .. v35}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 1068
    move-wide/from16 v34, v3

    move-wide/from16 v25, v34

    .line 1069
    move-wide/from16 v34, v15

    move-wide/from16 v36, v19

    sub-double v34, v34, v36

    move-wide/from16 v36, v9

    sub-double v34, v34, v36

    move-wide/from16 v27, v34

    .line 1070
    move-wide/from16 v34, v11

    move-wide/from16 v36, v21

    sub-double v34, v34, v36

    move-wide/from16 v36, v3

    add-double v34, v34, v36

    move-wide/from16 v29, v34

    .line 1071
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getHeight()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v36, v23

    sub-double v34, v34, v36

    move-wide/from16 v36, v9

    sub-double v34, v34, v36

    move-wide/from16 v31, v34

    .line 1088
    :cond_0
    :goto_4
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerBackground:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 1089
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerBackground:Ljavafx/scene/layout/StackPane;

    move-object/from16 v35, v0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    move-object/from16 v40, v2

    move-object/from16 v41, v2

    .line 1090
    invoke-virtual/range {v41 .. v41}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getWidth()D

    move-result-wide v41

    invoke-virtual/range {v40 .. v42}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v40

    move-object/from16 v42, v2

    move-object/from16 v43, v2

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getHeight()D

    move-result-wide v43

    invoke-virtual/range {v42 .. v44}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v42

    const-wide/16 v44, 0x0

    sget-object v46, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v47, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    .line 1089
    invoke-virtual/range {v34 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1092
    :cond_1
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headersRegion:Ljavafx/scene/layout/StackPane;

    move-object/from16 v35, v0

    move-wide/from16 v36, v25

    move-wide/from16 v38, v27

    move-wide/from16 v40, v11

    move-wide/from16 v42, v13

    const-wide/16 v44, 0x0

    sget-object v46, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    sget-object v47, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v34 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1093
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->controlButtons:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabControlButtons;

    move-object/from16 v35, v0

    move-wide/from16 v36, v29

    move-wide/from16 v38, v31

    move-wide/from16 v40, v21

    move-wide/from16 v42, v23

    const-wide/16 v44, 0x0

    sget-object v46, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v47, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v34 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1095
    return-void

    .line 1033
    .end local v11    # "w":D
    .end local v13    # "h":D
    .end local v15    # "tabBackgroundHeight":D
    .end local v17    # "headersPrefWidth":D
    .end local v19    # "headersPrefHeight":D
    .end local v21    # "btnWidth":D
    .end local v23    # "btnHeight":D
    .end local v25    # "startX":D
    .end local v27    # "startY":D
    .end local v29    # "controlStartX":D
    .end local v31    # "controlStartY":D
    .end local v33    # "tabPosition":Ljavafx/geometry/Side;
    :cond_2
    move-wide/from16 v36, v7

    move-wide/from16 v38, v9

    add-double v36, v36, v38

    goto/16 :goto_0

    .line 1035
    .restart local v11    # "w":D
    :cond_3
    move-wide/from16 v36, v3

    move-wide/from16 v38, v5

    add-double v36, v36, v38

    goto/16 :goto_1

    .line 1041
    .restart local v13    # "h":D
    .restart local v15    # "tabBackgroundHeight":D
    .restart local v17    # "headersPrefWidth":D
    .restart local v19    # "headersPrefHeight":D
    :cond_4
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 1057
    .restart local v21    # "btnWidth":D
    .restart local v23    # "btnHeight":D
    :cond_5
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerBackground:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getWidth()D

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v35

    move-object/from16 v37, v2

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getHeight()D

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v37

    invoke-virtual/range {v34 .. v38}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1058
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->headerBackground:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    goto/16 :goto_3

    .line 1072
    .restart local v25    # "startX":D
    .restart local v27    # "startY":D
    .restart local v29    # "controlStartX":D
    .restart local v31    # "controlStartY":D
    .restart local v33    # "tabPosition":Ljavafx/geometry/Side;
    :cond_6
    move-object/from16 v34, v33

    sget-object v35, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    invoke-virtual/range {v34 .. v35}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 1073
    move-wide/from16 v34, v7

    move-wide/from16 v25, v34

    .line 1074
    move-wide/from16 v34, v15

    move-wide/from16 v36, v19

    sub-double v34, v34, v36

    move-wide/from16 v36, v3

    sub-double v34, v34, v36

    move-wide/from16 v27, v34

    .line 1075
    move-wide/from16 v34, v11

    move-wide/from16 v36, v21

    sub-double v34, v34, v36

    move-wide/from16 v36, v7

    add-double v34, v34, v36

    move-wide/from16 v29, v34

    .line 1076
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getHeight()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v36, v23

    sub-double v34, v34, v36

    move-wide/from16 v36, v3

    sub-double v34, v34, v36

    move-wide/from16 v31, v34

    goto/16 :goto_4

    .line 1077
    :cond_7
    move-object/from16 v34, v33

    sget-object v35, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual/range {v34 .. v35}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 1078
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getWidth()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v36, v17

    sub-double v34, v34, v36

    move-wide/from16 v36, v3

    sub-double v34, v34, v36

    move-wide/from16 v25, v34

    .line 1079
    move-wide/from16 v34, v15

    move-wide/from16 v36, v19

    sub-double v34, v34, v36

    move-wide/from16 v36, v7

    sub-double v34, v34, v36

    move-wide/from16 v27, v34

    .line 1080
    move-wide/from16 v34, v5

    move-wide/from16 v29, v34

    .line 1081
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getHeight()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v36, v23

    sub-double v34, v34, v36

    move-wide/from16 v36, v7

    sub-double v34, v34, v36

    move-wide/from16 v31, v34

    goto/16 :goto_4

    .line 1082
    :cond_8
    move-object/from16 v34, v33

    sget-object v35, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    invoke-virtual/range {v34 .. v35}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 1083
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getWidth()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v36, v17

    sub-double v34, v34, v36

    move-wide/from16 v36, v7

    sub-double v34, v34, v36

    move-wide/from16 v25, v34

    .line 1084
    move-wide/from16 v34, v15

    move-wide/from16 v36, v19

    sub-double v34, v34, v36

    move-wide/from16 v36, v5

    sub-double v34, v34, v36

    move-wide/from16 v27, v34

    .line 1085
    move-wide/from16 v34, v3

    move-wide/from16 v29, v34

    .line 1086
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->getHeight()D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderArea;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v36, v23

    sub-double v34, v34, v36

    move-wide/from16 v36, v5

    sub-double v34, v34, v36

    move-wide/from16 v31, v34

    goto/16 :goto_4
.end method
