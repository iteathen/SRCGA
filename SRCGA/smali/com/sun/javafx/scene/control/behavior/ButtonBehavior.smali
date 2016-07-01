.class public Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "ButtonBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/ButtonBase;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<TC;>;"
    }
.end annotation


# static fields
.field protected static final BUTTON_BINDINGS:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->BUTTON_BINDINGS:Ljava/util/List;

    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->BUTTON_BINDINGS:Ljava/util/List;

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

    .line 98
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->BUTTON_BINDINGS:Ljava/util/List;

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

    .line 99
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ButtonBase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/control/ButtonBase;, "TC;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->BUTTON_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ButtonBase;Ljava/util/List;)V
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
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/control/ButtonBase;, "TC;"
    move-object v2, p2

    .local v2, "bindings":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/behavior/KeyBinding;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 60
    return-void
.end method

.method private keyPressed()V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ButtonBase;

    move-object v1, v2

    .line 120
    .local v1, "button":Ljavafx/scene/control/ButtonBase;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->isArmed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyDown:Z

    .line 122
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->arm()V

    .line 124
    :cond_0
    return-void
.end method

.method private keyReleased()V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ButtonBase;

    move-object v1, v2

    .line 132
    .local v1, "button":Ljavafx/scene/control/ButtonBase;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyDown:Z

    if-eqz v2, :cond_0

    .line 133
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyDown:Z

    .line 134
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->isArmed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->disarm()V

    .line 136
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->fire()V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ButtonBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    const-string v2, "Press"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyPressed()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v2, "Release"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyReleased()V

    goto :goto_0

    .line 108
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected focusChanged()V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ButtonBase;

    move-object v1, v2

    .line 72
    .local v1, "button":Ljavafx/scene/control/ButtonBase;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyDown:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyDown:Z

    .line 74
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonBase;->disarm()V

    .line 76
    :cond_0
    return-void
.end method

.method public mouseEntered(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ButtonBase;

    move-object v2, v3

    .line 195
    .local v2, "button":Ljavafx/scene/control/ButtonBase;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseEntered(Ljavafx/scene/input/MouseEvent;)V

    .line 196
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyDown:Z

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBase;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBase;->arm()V

    .line 199
    :cond_0
    return-void
.end method

.method public mouseExited(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ButtonBase;

    move-object v2, v3

    .line 209
    .local v2, "button":Ljavafx/scene/control/ButtonBase;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseExited(Ljavafx/scene/input/MouseEvent;)V

    .line 210
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyDown:Z

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBase;->isArmed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBase;->disarm()V

    .line 213
    :cond_0
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ButtonBase;

    move-object v2, v4

    .line 153
    .local v2, "button":Ljavafx/scene/control/ButtonBase;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 155
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ButtonBase;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ButtonBase;->isFocusTraversable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ButtonBase;->requestFocus()V

    .line 164
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v4, v5, :cond_2

    move-object v4, v1

    .line 165
    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    .line 166
    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 168
    .local v3, "valid":Z
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ButtonBase;->isArmed()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_1

    .line 169
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ButtonBase;->arm()V

    .line 171
    :cond_1
    return-void

    .line 166
    .end local v3    # "valid":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public mouseReleased(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ButtonBase;

    move-object v2, v3

    .line 181
    .local v2, "button":Ljavafx/scene/control/ButtonBase;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->keyDown:Z

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBase;->isArmed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBase;->fire()V

    .line 183
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBase;->disarm()V

    .line 185
    :cond_0
    return-void
.end method
