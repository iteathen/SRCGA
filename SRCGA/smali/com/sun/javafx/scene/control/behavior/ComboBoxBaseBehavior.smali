.class public Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "ComboBoxBaseBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/ComboBoxBase",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field protected static final COMBO_BOX_BASE_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRESS_ACTION:Ljava/lang/String; = "Press"

.field private static final RELEASE_ACTION:Ljava/lang/String; = "Release"


# instance fields
.field private keyDown:Z

.field private lastEvent:Ljavafx/scene/input/KeyEvent;

.field private mouseInsideButton:Z

.field private showPopupOnMouseRelease:Z

.field private tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

    .line 117
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->F4:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    const-string v5, "togglePopup"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "togglePopup"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "togglePopup"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 121
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

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

    .line 122
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

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

    .line 124
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

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

    .line 125
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

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

    .line 128
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    const-string v4, "Cancel"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->F10:Ljavafx/scene/input/KeyCode;

    const-string v4, "ToParent"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 130
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ComboBoxBase;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ComboBoxBase",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "comboBox":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v2, p2

    .local v2, "bindings":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/behavior/KeyBinding;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 296
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->showPopupOnMouseRelease:Z

    .line 297
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->mouseInsideButton:Z

    .line 72
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;-><init>(Ljavafx/scene/Node;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    .line 75
    :cond_0
    return-void
.end method

.method private arm(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v3, v4, :cond_1

    move-object v3, v1

    .line 275
    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    .line 276
    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 278
    .local v2, "valid":Z
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->isArmed()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_0

    .line 279
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->arm()V

    .line 281
    :cond_0
    return-void

    .line 276
    .end local v2    # "valid":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getFocus()V
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isFocusTraversable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->requestFocus()V

    .line 271
    :cond_0
    return-void
.end method

.method private keyPressed()V
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->show()V

    .line 166
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->setExternalFocus(Z)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isArmed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->keyDown:Z

    .line 173
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->arm()V

    goto :goto_0
.end method

.method private keyReleased()V
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->keyDown:Z

    if-eqz v1, :cond_0

    .line 185
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->keyDown:Z

    .line 186
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isArmed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->disarm()V

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public arm()V
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->arm()V

    .line 312
    :cond_0
    return-void
.end method

.method protected callAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v2, "Press"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->keyPressed()V

    .line 156
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v2, "Release"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->keyReleased()V

    goto :goto_0

    .line 144
    :cond_1
    const-string v2, "showPopup"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->show()V

    goto :goto_0

    .line 146
    :cond_2
    const-string v2, "togglePopup"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->hide()V

    goto :goto_0

    .line 148
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->show()V

    goto :goto_0

    .line 149
    :cond_4
    const-string v2, "Cancel"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->lastEvent:Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->cancelEdit(Ljavafx/scene/input/KeyEvent;)V

    goto :goto_0

    .line 151
    :cond_5
    const-string v2, "ToParent"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->lastEvent:Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->forwardToParent(Ljavafx/scene/input/KeyEvent;)V

    goto :goto_0

    .line 154
    :cond_6
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected callActionForEvent(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->lastEvent:Ljavafx/scene/input/KeyEvent;

    .line 135
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->showPopupOnMouseRelease:Z

    .line 136
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callActionForEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 137
    return-void
.end method

.method protected cancelEdit(Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ComboBoxBase;

    move-object v2, v4

    .line 205
    .local v2, "comboBoxBase":Ljavafx/scene/control/ComboBoxBase;
    const/4 v4, 0x0

    move-object v3, v4

    .line 206
    .local v3, "textField":Ljavafx/scene/control/TextField;
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/control/DatePicker;

    if-eqz v4, :cond_1

    .line 207
    move-object v4, v2

    check-cast v4, Ljavafx/scene/control/DatePicker;

    invoke-virtual {v4}, Ljavafx/scene/control/DatePicker;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v4

    move-object v3, v4

    .line 212
    :cond_0
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 213
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->cancelEdit()V

    .line 217
    :goto_1
    return-void

    .line 208
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/control/ComboBox;

    if-eqz v4, :cond_0

    .line 209
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBoxBase;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Ljavafx/scene/control/ComboBox;

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBox;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v4

    :goto_2
    move-object v3, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 215
    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->forwardToParent(Ljavafx/scene/input/KeyEvent;)V

    goto :goto_1
.end method

.method public disarm()V
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->keyDown:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isArmed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->disarm()V

    .line 318
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusComboBehavior;->dispose()V

    .line 79
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->dispose()V

    .line 80
    return-void
.end method

.method protected focusChanged()V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    move-object v1, v2

    .line 92
    .local v1, "box":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->keyDown:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->keyDown:Z

    .line 94
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->disarm()V

    .line 96
    :cond_0
    return-void
.end method

.method protected forwardToParent(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 195
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->fireEvent(Ljavafx/event/Event;)V

    .line 197
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->hide()V

    .line 294
    :cond_0
    return-void
.end method

.method public mouseEntered(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseEntered(Ljavafx/scene/input/MouseEvent;)V

    .line 251
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->isEditable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->mouseInsideButton:Z

    .line 258
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->arm()V

    .line 259
    return-void

    .line 255
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    move-object v2, v3

    .line 256
    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/Node;

    if-eqz v4, :cond_1

    const-string v4, "arrow-button"

    move-object v5, v2

    check-cast v5, Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->mouseInsideButton:Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public mouseExited(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseExited(Ljavafx/scene/input/MouseEvent;)V

    .line 263
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->mouseInsideButton:Z

    .line 264
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->disarm()V

    .line 265
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 227
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->arm(Ljavafx/scene/input/MouseEvent;)V

    .line 228
    return-void
.end method

.method public mouseReleased(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseReleased(Ljavafx/scene/input/MouseEvent;)V

    .line 233
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->disarm()V

    .line 240
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->showPopupOnMouseRelease:Z

    if-eqz v2, :cond_0

    .line 241
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->show()V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->showPopupOnMouseRelease:Z

    .line 244
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->hide()V

    goto :goto_0
.end method

.method public onAutoHide()V
    .locals 3

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->hide()V

    .line 305
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->mouseInsideButton:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->showPopupOnMouseRelease:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->showPopupOnMouseRelease:Z

    .line 306
    return-void

    .line 305
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->requestFocus()V

    .line 286
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->show()V

    .line 288
    :cond_0
    return-void
.end method
