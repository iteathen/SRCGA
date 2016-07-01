.class public Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "ChoiceBoxBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/ChoiceBox",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field protected static final CHOICE_BUTTON_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->CHOICE_BUTTON_BINDINGS:Ljava/util/List;

    .line 58
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->CHOICE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Press"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->CHOICE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    const-string v5, "Release"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->CHOICE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Press"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->CHOICE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    const-string v5, "Release"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    :cond_0
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->CHOICE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    const-string v5, "Cancel"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->CHOICE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    const-string v5, "Down"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->CHOICE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->CANCEL:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    const-string v5, "Cancel"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ChoiceBox;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ChoiceBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->CHOICE_BUTTON_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 88
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;-><init>(Ljavafx/scene/Node;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    .line 91
    :cond_0
    return-void
.end method

.method private keyPressed()V
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ChoiceBox;

    move-object v1, v2

    .line 146
    .local v1, "choiceButton":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->show()V

    .line 149
    :cond_0
    return-void
.end method

.method private keyReleased()V
    .locals 0

    .prologue
    .line 156
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "Cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->cancel()V

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v2, v1

    const-string v3, "Press"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->keyPressed()V

    goto :goto_0

    .line 80
    :cond_1
    move-object v2, v1

    const-string v3, "Release"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->keyReleased()V

    goto :goto_0

    .line 81
    :cond_2
    move-object v2, v1

    const-string v3, "Down"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->showPopup()V

    goto :goto_0

    .line 82
    :cond_3
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ChoiceBox;

    move-object v1, v2

    .line 164
    .local v1, "choiceButton":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->hide()V

    .line 165
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->hide()V

    .line 107
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->dispose()V

    .line 95
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->dispose()V

    .line 96
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ChoiceBox;

    move-object v2, v3

    .line 119
    .local v2, "choiceButton":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 120
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->isFocusTraversable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->requestFocus()V

    .line 121
    :cond_0
    return-void
.end method

.method public mouseReleased(Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ChoiceBox;

    move-object v2, v3

    .line 130
    .local v2, "choiceButton":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseReleased(Ljavafx/scene/input/MouseEvent;)V

    .line 131
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/control/ChoiceBox;->contains(DD)Z

    move-result v3

    if-nez v3, :cond_2

    .line 132
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->hide()V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v3, v4, :cond_1

    .line 135
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->show()V

    goto :goto_0
.end method

.method public select(I)V
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 100
    .local v2, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SelectionModel;->select(I)V

    .line 103
    goto :goto_0
.end method

.method public showPopup()V
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;, "Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ChoiceBoxBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceBox;->show()V

    .line 111
    return-void
.end method
