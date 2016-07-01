.class public Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;
.super Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;
.source "MenuButtonSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase",
        "<",
        "Ljavafx/scene/control/MenuButton;",
        "Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;",
        ">;"
    }
.end annotation


# static fields
.field static final AUTOHIDE:Ljava/lang/String; = "autoHide"


# direct methods
.method public constructor <init>(Ljavafx/scene/control/MenuButton;)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;
    move-object v1, p1

    .local v1, "menuButton":Ljavafx/scene/control/MenuButton;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;-><init>(Ljavafx/scene/control/MenuButton;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;-><init>(Ljavafx/scene/control/MenuButton;Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;)V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;->popup:Ljavafx/scene/control/ContextMenu;

    new-instance v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ContextMenu;->setOnAutoHide(Ljavafx/event/EventHandler;)V

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;->popup:Ljavafx/scene/control/ContextMenu;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ContextMenu;->setOnShown(Ljavafx/event/EventHandler;)V

    .line 72
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->getOnAction()Ljavafx/event/EventHandler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 73
    move-object v2, v1

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/MenuButton;)Ljavafx/event/EventHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MenuButton;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 78
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;->label:Lcom/sun/javafx/scene/control/skin/LabeledImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;->setLabelFor(Ljavafx/scene/Node;)V

    .line 79
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;Ljavafx/stage/WindowEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;->lambda$new$411(Ljavafx/stage/WindowEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/MenuButton;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;->lambda$new$412(Ljavafx/scene/control/MenuButton;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private synthetic lambda$new$411(Ljavafx/stage/WindowEvent;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/stage/WindowEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;->popup:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v2, v3

    .line 69
    .local v2, "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->requestFocus()V

    .line 70
    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$412(Ljavafx/scene/control/MenuButton;Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "menuButton":Ljavafx/scene/control/MenuButton;
    move-object v1, p1

    .local v1, "e":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->show()V

    .line 75
    return-void
.end method
