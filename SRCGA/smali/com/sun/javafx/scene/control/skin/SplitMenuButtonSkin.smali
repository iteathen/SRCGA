.class public Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;
.super Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;
.source "SplitMenuButtonSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase",
        "<",
        "Ljavafx/scene/control/SplitMenuButton;",
        "Lcom/sun/javafx/scene/control/behavior/SplitMenuButtonBehavior;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/SplitMenuButton;)V
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;
    move-object v1, p1

    .local v1, "splitMenuButton":Ljavafx/scene/control/SplitMenuButton;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/SplitMenuButtonBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/SplitMenuButtonBehavior;-><init>(Ljavafx/scene/control/SplitMenuButton;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;-><init>(Ljavafx/scene/control/MenuButton;Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;)V

    .line 56
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->behaveLikeButton:Z

    .line 59
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin$$Lambda$1;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/layout/StackPane;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 66
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->arrowButton:Ljavafx/scene/layout/StackPane;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/StackPane;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->setLabelFor(Ljavafx/scene/Node;)V

    .line 72
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->lambda$new$476(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->lambda$new$477(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->lambda$new$478(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private static synthetic lambda$new$476(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "event":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 61
    return-void
.end method

.method private synthetic lambda$new$477(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SplitMenuButtonBehavior;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SplitMenuButtonBehavior;->mousePressed(Ljavafx/scene/input/MouseEvent;Z)V

    .line 64
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 65
    return-void
.end method

.method private synthetic lambda$new$478(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SplitMenuButtonBehavior;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SplitMenuButtonBehavior;->mouseReleased(Ljavafx/scene/input/MouseEvent;Z)V

    .line 68
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 69
    return-void
.end method
