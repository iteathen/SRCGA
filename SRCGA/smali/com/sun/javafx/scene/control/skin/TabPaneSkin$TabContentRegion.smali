.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
.super Ljavafx/scene/layout/StackPane;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabContentRegion"
.end annotation


# instance fields
.field private direction:Lcom/sun/javafx/scene/traversal/Direction;

.field private engine:Lcom/sun/javafx/scene/traversal/TraversalEngine;

.field private tab:Ljavafx/scene/control/Tab;

.field private tabContentListener:Ljavafx/beans/InvalidationListener;

.field private tabSelectedListener:Ljavafx/beans/InvalidationListener;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

.field private weakTabContentListener:Ljavafx/beans/WeakInvalidationListener;

.field private weakTabSelectedListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/control/Tab;)V
    .locals 9

    .prologue
    .line 1565
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v2, p2

    .local v2, "tab":Ljavafx/scene/control/Tab;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 1544
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->direction:Lcom/sun/javafx/scene/traversal/Direction;

    .line 1547
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->tabContentListener:Ljavafx/beans/InvalidationListener;

    .line 1550
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion$1;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->tabSelectedListener:Ljavafx/beans/InvalidationListener;

    .line 1556
    move-object v3, v0

    new-instance v4, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->tabContentListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v5, v6}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->weakTabContentListener:Ljavafx/beans/WeakInvalidationListener;

    .line 1558
    move-object v3, v0

    new-instance v4, Ljavafx/beans/WeakInvalidationListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->tabSelectedListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v5, v6}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->weakTabSelectedListener:Ljavafx/beans/WeakInvalidationListener;

    .line 1566
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "tab-content-area"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 1567
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->setManaged(Z)V

    .line 1568
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->tab:Ljavafx/scene/control/Tab;

    .line 1569
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->updateContent()V

    .line 1570
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->setVisible(Z)V

    .line 1572
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->selectedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->weakTabSelectedListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1573
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->contentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->weakTabContentListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1574
    return-void
.end method

.method static synthetic access$1400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;Ljavafx/scene/control/Tab;)V
    .locals 4

    .prologue
    .line 1541
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/Tab;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->removeListeners(Ljavafx/scene/control/Tab;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;)Ljavafx/scene/control/Tab;
    .locals 2

    .prologue
    .line 1541
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->tab:Ljavafx/scene/control/Tab;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->lambda$new$491(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$491(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 1548
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->updateContent()V

    .line 1549
    return-void
.end method

.method private removeListeners(Ljavafx/scene/control/Tab;)V
    .locals 4

    .prologue
    .line 1586
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->selectedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->weakTabSelectedListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 1587
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->contentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->weakTabContentListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 1588
    return-void
.end method

.method private updateContent()V
    .locals 8

    .prologue
    .line 1577
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->getContent()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 1578
    .local v1, "newContent":Ljavafx/scene/Node;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1579
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 1583
    :goto_0
    return-void

    .line 1581
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public getTab()Ljavafx/scene/control/Tab;
    .locals 2

    .prologue
    .line 1562
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->tab:Ljavafx/scene/control/Tab;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    return-object v0
.end method
