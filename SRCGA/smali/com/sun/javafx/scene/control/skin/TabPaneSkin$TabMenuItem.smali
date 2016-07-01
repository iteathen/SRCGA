.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
.super Ljavafx/scene/control/RadioMenuItem;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabMenuItem"
.end annotation


# instance fields
.field private disableListener:Ljavafx/beans/InvalidationListener;

.field tab:Ljavafx/scene/control/Tab;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

.field private weakDisableListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/control/Tab;)V
    .locals 8

    .prologue
    .line 1802
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v2, p2

    .local v2, "tab":Ljavafx/scene/control/Tab;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    .line 1803
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Tab;->getGraphic()Ljavafx/scene/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$4500(Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/RadioMenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 1793
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem$1;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->disableListener:Ljavafx/beans/InvalidationListener;

    .line 1799
    move-object v3, v0

    new-instance v4, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->disableListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v5, v6}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->weakDisableListener:Ljavafx/beans/WeakInvalidationListener;

    .line 1804
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->tab:Ljavafx/scene/control/Tab;

    .line 1805
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->isDisable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->setDisable(Z)V

    .line 1806
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->weakDisableListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1807
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 1808
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 1815
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->tab:Ljavafx/scene/control/Tab;

    invoke-virtual {v1}, Ljavafx/scene/control/Tab;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->weakDisableListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 1816
    return-void
.end method

.method public getTab()Ljavafx/scene/control/Tab;
    .locals 2

    .prologue
    .line 1811
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->tab:Ljavafx/scene/control/Tab;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    return-object v0
.end method
