.class public abstract Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;
.super Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;
.source "MenuButtonBehaviorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/MenuButton;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior",
        "<TC;>;"
    }
.end annotation


# static fields
.field protected static final BASE_MENU_BUTTON_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field

.field protected static final CLOSE_ACTION:Ljava/lang/String; = "Close"

.field protected static final OPEN_ACTION:Ljava/lang/String; = "Open"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->BASE_MENU_BUTTON_BINDINGS:Ljava/util/List;

    .line 82
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->BASE_MENU_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->BASE_MENU_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->BASE_MENU_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseLeft"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->BASE_MENU_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseRight"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->BASE_MENU_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Close"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->BASE_MENU_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->CANCEL:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Close"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/MenuButton;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "menuButton":Ljavafx/scene/control/MenuButton;, "TC;"
    move-object v2, p2

    .local v2, "bindings":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/behavior/KeyBinding;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;-><init>(Ljavafx/scene/control/ButtonBase;Ljava/util/List;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuButton;

    move-object v2, v4

    .line 97
    .local v2, "button":Ljavafx/scene/control/MenuButton;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->getPopupSide()Ljavafx/geometry/Side;

    move-result-object v4

    move-object v3, v4

    .line 99
    .local v3, "popupSide":Ljavafx/geometry/Side;
    const-string v4, "Close"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->hide()V

    .line 122
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v4, "Open"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->hide()V

    goto :goto_0

    .line 105
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->show()V

    goto :goto_0

    .line 107
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "TraverseUp"

    move-object v5, v1

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v3

    sget-object v5, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-eq v4, v5, :cond_6

    :cond_3
    const-string v4, "TraverseDown"

    move-object v5, v1

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v3

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-eq v4, v5, :cond_6

    move-object v4, v3

    sget-object v5, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-eq v4, v5, :cond_6

    :cond_4
    const-string v4, "TraverseLeft"

    move-object v5, v1

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v3

    sget-object v5, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-eq v4, v5, :cond_6

    move-object v4, v3

    sget-object v5, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-eq v4, v5, :cond_6

    :cond_5
    const-string v4, "TraverseRight"

    move-object v5, v1

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v3

    sget-object v5, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-eq v4, v5, :cond_6

    move-object v4, v3

    sget-object v5, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-ne v4, v5, :cond_7

    .line 118
    :cond_6
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->show()V

    goto :goto_0

    .line 120
    :cond_7
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;Z)V
    .locals 6

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move v2, p2

    .local v2, "behaveLikeButton":Z
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuButton;

    move-object v3, v4

    .line 148
    .local v3, "control":Ljavafx/scene/control/MenuButton;, "TC;"
    move v4, v2

    if-eqz v4, :cond_2

    .line 149
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->hide()V

    .line 152
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->isFocused()Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->isFocusTraversable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->requestFocus()V

    .line 157
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->hide()V

    goto :goto_0

    .line 160
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v4, v5, :cond_1

    .line 161
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->show()V

    goto :goto_0
.end method

.method public mouseReleased(Ljavafx/scene/input/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljavafx/scene/input/MouseEvent;

    .prologue
    .line 171
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase<TC;>;"
    return-void
.end method

.method public mouseReleased(Ljavafx/scene/input/MouseEvent;Z)V
    .locals 8

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move v2, p2

    .local v2, "behaveLikeButton":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 181
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->mouseReleased(Ljavafx/scene/input/MouseEvent;)V

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/control/MenuButton;->contains(DD)Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->hide()V

    .line 186
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->disarm()V

    goto :goto_0
.end method
