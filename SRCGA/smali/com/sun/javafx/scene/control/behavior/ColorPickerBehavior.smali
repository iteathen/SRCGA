.class public Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;
.super Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;
.source "ColorPickerBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior",
        "<",
        "Ljavafx/scene/paint/Color;",
        ">;"
    }
.end annotation


# static fields
.field protected static final CLOSE_ACTION:Ljava/lang/String; = "Close"

.field protected static final COLOR_PICKER_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field

.field protected static final OPEN_ACTION:Ljava/lang/String; = "Open"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;->COLOR_PICKER_BINDINGS:Ljava/util/List;

    .line 74
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;->COLOR_PICKER_BINDINGS:Ljava/util/List;

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

    .line 75
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;->COLOR_PICKER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Open"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;->COLOR_PICKER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Open"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ColorPicker;)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;
    move-object v1, p1

    .local v1, "colorPicker":Ljavafx/scene/control/ColorPicker;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;->COLOR_PICKER_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;-><init>(Ljavafx/scene/control/ComboBoxBase;Ljava/util/List;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v2, "Open"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;->show()V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v2, "Close"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;->hide()V

    goto :goto_0

    .line 86
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAutoHide()V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ColorPickerBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ColorPicker;

    move-object v1, v3

    .line 99
    .local v1, "colorPicker":Ljavafx/scene/control/ColorPicker;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object v2, v3

    .line 100
    .local v2, "cpSkin":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->syncWithAutoUpdate()V

    .line 103
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ColorPicker;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-super {v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->onAutoHide()V

    .line 104
    :cond_0
    return-void
.end method
