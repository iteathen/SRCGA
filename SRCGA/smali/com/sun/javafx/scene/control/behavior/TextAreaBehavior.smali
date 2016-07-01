.class public Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;
.source "TextAreaBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior",
        "<",
        "Ljavafx/scene/control/TextArea;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TEXT_AREA_BINDINGS:Ljava/util/List;
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
.field private contextMenu:Ljavafx/scene/control/ContextMenu;

.field private deferClick:Z

.field private focusGainedByMouseClick:Z

.field private shiftDown:Z

.field private skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

.field private tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    .line 64
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "LineStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "LineEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "PreviousLine"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "PreviousLine"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "NextLine"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "NextLine"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "PreviousPage"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "NextPage"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "InsertNewLine"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "TraverseOrInsertTab"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectLineStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectLineEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectPreviousLine"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectPreviousLine"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectNextLine"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectNextLine"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectPreviousPage"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectNextPage"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "LineStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "LineStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "LineEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "LineEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Home"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 90
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Home"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "End"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "End"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectLineStartExtend"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectLineStartExtend"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectLineEndExtend"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectLineEndExtend"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectHomeExtend"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectHomeExtend"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectEndExtend"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectEndExtend"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "ParagraphStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "ParagraphStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "ParagraphEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "ParagraphEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectParagraphStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectParagraphStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectParagraphEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectParagraphEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    :goto_0
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    sget-object v1, Lcom/sun/javafx/scene/control/behavior/TextInputControlBindings;->BINDINGS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 126
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "Consume"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 127
    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "ParagraphStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "ParagraphStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "ParagraphEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "ParagraphEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectParagraphStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectParagraphStart"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectParagraphEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "SelectParagraphEnd"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljavafx/scene/control/TextArea;)V
    .locals 7

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v1, p1

    .local v1, "textArea":Ljavafx/scene/control/TextArea;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->TEXT_AREA_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;-><init>(Ljavafx/scene/control/TextInputControl;Ljava/util/List;)V

    .line 311
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->focusGainedByMouseClick:Z

    .line 312
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->shiftDown:Z

    .line 313
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->deferClick:Z

    .line 140
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ContextMenu;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavafx/scene/control/ContextMenu;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 141
    sget-boolean v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->IS_TOUCH_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 142
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "text-input-context-menu"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 146
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextArea;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;-><init>(Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 188
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;-><init>(Ljavafx/scene/Node;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    .line 191
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;)Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->focusGainedByMouseClick:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    return v0
.end method

.method static synthetic access$002(Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;Z)Z
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->focusGainedByMouseClick:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    return v0
.end method

.method private insertNewLine()V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextArea;

    move-object v1, v2

    .line 264
    .local v1, "textArea":Ljavafx/scene/control/TextArea;
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextArea;->replaceSelection(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private insertTab()V
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextArea;

    move-object v1, v2

    .line 269
    .local v1, "textArea":Ljavafx/scene/control/TextArea;
    move-object v2, v1

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextArea;->replaceSelection(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private lineEnd(ZZ)V
    .locals 6

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move v1, p1

    .local v1, "select":Z
    move v2, p2

    .local v2, "extendSelection":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lineEnd(ZZ)V

    .line 295
    return-void
.end method

.method private lineStart(ZZ)V
    .locals 6

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move v1, p1

    .local v1, "select":Z
    move v2, p2

    .local v2, "extendSelection":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->lineStart(ZZ)V

    .line 291
    return-void
.end method


# virtual methods
.method public callAction(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextArea;

    move-object v2, v4

    .line 210
    .local v2, "textInputControl":Ljavafx/scene/control/TextArea;
    const/4 v4, 0x0

    move v3, v4

    .line 212
    .local v3, "done":Z
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TextArea;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->setEditing(Z)V

    .line 216
    const/4 v4, 0x1

    move v3, v4

    .line 217
    const-string v4, "InsertNewLine"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->insertNewLine()V

    .line 222
    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->setEditing(Z)V

    .line 225
    :cond_0
    move v4, v3

    if-nez v4, :cond_1

    .line 226
    const/4 v4, 0x1

    move v3, v4

    .line 227
    const-string v4, "LineStart"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->lineStart(ZZ)V

    .line 257
    :cond_1
    :goto_1
    move v4, v3

    if-nez v4, :cond_2

    .line 258
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->callAction(Ljava/lang/String;)V

    .line 260
    :cond_2
    return-void

    .line 218
    :cond_3
    const-string v4, "TraverseOrInsertTab"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->insertTab()V

    goto :goto_0

    .line 220
    :cond_4
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 228
    :cond_5
    const-string v4, "LineEnd"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->lineEnd(ZZ)V

    goto :goto_1

    .line 229
    :cond_6
    const-string v4, "SelectLineStart"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->lineStart(ZZ)V

    goto :goto_1

    .line 230
    :cond_7
    const-string v4, "SelectLineStartExtend"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->lineStart(ZZ)V

    goto :goto_1

    .line 231
    :cond_8
    const-string v4, "SelectLineEnd"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->lineEnd(ZZ)V

    goto :goto_1

    .line 232
    :cond_9
    const-string v4, "SelectLineEndExtend"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->lineEnd(ZZ)V

    goto :goto_1

    .line 233
    :cond_a
    const-string v4, "PreviousLine"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->previousLine(Z)V

    goto :goto_1

    .line 234
    :cond_b
    const-string v4, "NextLine"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->nextLine(Z)V

    goto/16 :goto_1

    .line 235
    :cond_c
    const-string v4, "SelectPreviousLine"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->previousLine(Z)V

    goto/16 :goto_1

    .line 236
    :cond_d
    const-string v4, "SelectNextLine"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->nextLine(Z)V

    goto/16 :goto_1

    .line 238
    :cond_e
    const-string v4, "ParagraphStart"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphStart(ZZ)V

    goto/16 :goto_1

    .line 239
    :cond_f
    const-string v4, "ParagraphEnd"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphEnd(ZZZ)V

    goto/16 :goto_1

    .line 240
    :cond_10
    const-string v4, "SelectParagraphStart"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphStart(ZZ)V

    goto/16 :goto_1

    .line 241
    :cond_11
    const-string v4, "SelectParagraphEnd"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphEnd(ZZZ)V

    goto/16 :goto_1

    .line 243
    :cond_12
    const-string v4, "PreviousPage"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->previousPage(Z)V

    goto/16 :goto_1

    .line 244
    :cond_13
    const-string v4, "NextPage"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->nextPage(Z)V

    goto/16 :goto_1

    .line 245
    :cond_14
    const-string v4, "SelectPreviousPage"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->previousPage(Z)V

    goto/16 :goto_1

    .line 246
    :cond_15
    const-string v4, "SelectNextPage"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->nextPage(Z)V

    goto/16 :goto_1

    .line 247
    :cond_16
    const-string v4, "TraverseOrInsertTab"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 249
    const-string v4, "TraverseNext"

    move-object v1, v4

    .line 250
    const/4 v4, 0x0

    move v3, v4

    goto/16 :goto_1

    .line 252
    :cond_17
    const/4 v4, 0x0

    move v3, v4

    goto/16 :goto_1
.end method

.method public contextMenuRequested(Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 27

    .prologue
    .line 418
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object/from16 v2, p1

    .local v2, "e":Ljavafx/scene/input/ContextMenuEvent;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    move-object/from16 v3, v18

    .line 420
    .local v3, "textArea":Ljavafx/scene/control/TextArea;
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 421
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 474
    :cond_0
    :goto_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/ContextMenuEvent;->consume()V

    .line 475
    return-void

    .line 422
    :cond_1
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v18

    if-nez v18, :cond_0

    .line 423
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/ContextMenuEvent;->getScreenX()D

    move-result-wide v18

    move-wide/from16 v4, v18

    .line 424
    .local v4, "screenX":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/ContextMenuEvent;->getScreenY()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 425
    .local v6, "screenY":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/ContextMenuEvent;->getSceneX()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 427
    .local v8, "sceneX":D
    sget-boolean v18, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->IS_TOUCH_SUPPORTED:Z

    if-eqz v18, :cond_3

    .line 429
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v18

    if-nez v18, :cond_4

    .line 430
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/ContextMenuEvent;->getX()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/ContextMenuEvent;->getY()D

    move-result-wide v22

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    .line 431
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getMenuPosition()Ljavafx/geometry/Point2D;

    move-result-object v18

    move-object/from16 v10, v18

    .line 440
    .local v10, "menuPos":Ljavafx/geometry/Point2D;
    :cond_2
    :goto_1
    move-object/from16 v18, v10

    if-eqz v18, :cond_3

    .line 441
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/control/TextArea;->localToScene(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v18

    move-object/from16 v11, v18

    .line 442
    .local v11, "p":Ljavafx/geometry/Point2D;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getScene()Ljavafx/scene/Scene;

    move-result-object v18

    move-object/from16 v12, v18

    .line 443
    .local v12, "scene":Ljavafx/scene/Scene;
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v18

    move-object/from16 v13, v18

    .line 444
    .local v13, "window":Ljavafx/stage/Window;
    new-instance v18, Ljavafx/geometry/Point2D;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/stage/Window;->getX()D

    move-result-wide v20

    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v13

    .line 445
    invoke-virtual/range {v22 .. v22}, Ljavafx/stage/Window;->getY()D

    move-result-wide v22

    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v24

    add-double v22, v22, v24

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v24

    add-double v22, v22, v24

    invoke-direct/range {v19 .. v23}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v14, v18

    .line 446
    .local v14, "location":Ljavafx/geometry/Point2D;
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-wide/from16 v4, v18

    .line 447
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 448
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 452
    .end local v10    # "menuPos":Ljavafx/geometry/Point2D;
    .end local v11    # "p":Ljavafx/geometry/Point2D;
    .end local v12    # "scene":Ljavafx/scene/Scene;
    .end local v13    # "window":Ljavafx/stage/Window;
    .end local v14    # "location":Ljavafx/geometry/Point2D;
    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->populateContextMenu(Ljavafx/scene/control/ContextMenu;)V

    .line 453
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/ContextMenu;->prefWidth(D)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 454
    .local v10, "menuWidth":D
    move-wide/from16 v18, v4

    sget-boolean v20, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->IS_TOUCH_SUPPORTED:Z

    if-eqz v20, :cond_6

    move-wide/from16 v20, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    :goto_2
    sub-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 455
    .local v12, "menuX":D
    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/util/Utils;->getScreenForPoint(DD)Ljavafx/stage/Screen;

    move-result-object v18

    move-object/from16 v14, v18

    .line 456
    .local v14, "currentScreen":Ljavafx/stage/Screen;
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v18

    move-object/from16 v15, v18

    .line 458
    .local v15, "bounds":Ljavafx/geometry/Rectangle2D;
    move-wide/from16 v18, v12

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_7

    .line 459
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCREEN_X"

    move-wide/from16 v20, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 460
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCENE_X"

    move-wide/from16 v20, v8

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 461
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v19

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v20

    move-wide/from16 v22, v6

    invoke-virtual/range {v18 .. v23}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;DD)V

    goto/16 :goto_0

    .line 433
    .end local v10    # "menuWidth":D
    .end local v12    # "menuX":D
    .end local v14    # "currentScreen":Ljavafx/stage/Screen;
    .end local v15    # "bounds":Ljavafx/geometry/Rectangle2D;
    :cond_4
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getMenuPosition()Ljavafx/geometry/Point2D;

    move-result-object v18

    move-object/from16 v10, v18

    .line 434
    .local v10, "menuPos":Ljavafx/geometry/Point2D;
    move-object/from16 v18, v10

    if-eqz v18, :cond_2

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-lez v18, :cond_5

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_2

    .line 435
    :cond_5
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/ContextMenuEvent;->getX()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/ContextMenuEvent;->getY()D

    move-result-wide v22

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    .line 436
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getMenuPosition()Ljavafx/geometry/Point2D;

    move-result-object v18

    move-object/from16 v10, v18

    goto/16 :goto_1

    .line 454
    .local v10, "menuWidth":D
    :cond_6
    const-wide/16 v20, 0x0

    goto/16 :goto_2

    .line 462
    .restart local v12    # "menuX":D
    .restart local v14    # "currentScreen":Ljavafx/stage/Screen;
    .restart local v15    # "bounds":Ljavafx/geometry/Rectangle2D;
    :cond_7
    move-wide/from16 v18, v4

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-lez v18, :cond_8

    .line 463
    move-wide/from16 v18, v10

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    move-wide/from16 v22, v4

    sub-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 464
    .local v16, "leftOver":D
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCREEN_X"

    move-wide/from16 v20, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 465
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCENE_X"

    move-wide/from16 v20, v8

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 466
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v19

    move-wide/from16 v20, v4

    move-wide/from16 v22, v16

    sub-double v20, v20, v22

    move-wide/from16 v22, v6

    invoke-virtual/range {v18 .. v23}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;DD)V

    .line 467
    goto/16 :goto_0

    .line 468
    .end local v16    # "leftOver":D
    :cond_8
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCREEN_X"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 469
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextArea;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextArea;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCENE_X"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 470
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v19

    move-wide/from16 v20, v12

    move-wide/from16 v22, v6

    invoke-virtual/range {v18 .. v23}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;DD)V

    goto/16 :goto_0
.end method

.method protected deleteChar(Z)V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move v1, p1

    .local v1, "previous":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->deleteChar(Z)V

    .line 274
    return-void
.end method

.method protected deleteFromLineStart()V
    .locals 8

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextArea;

    move-object v1, v4

    .line 278
    .local v1, "textArea":Ljavafx/scene/control/TextArea;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v4

    move v2, v4

    .line 280
    .local v2, "end":I
    move v4, v2

    if-lez v4, :cond_0

    .line 281
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->lineStart(ZZ)V

    .line 282
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v4

    move v3, v4

    .line 283
    .local v3, "start":I
    move v4, v2

    move v5, v3

    if-le v4, v5, :cond_0

    .line 284
    move-object v4, v0

    move v5, v3

    move v6, v2

    const-string v7, ""

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->replaceText(IILjava/lang/String;)V

    .line 287
    .end local v3    # "start":I
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->dispose()V

    .line 195
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->dispose()V

    .line 196
    return-void
.end method

.method protected mouseDoubleClick(Lcom/sun/javafx/scene/text/HitInfo;)V
    .locals 4

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v1, p1

    .local v1, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextArea;

    move-object v2, v3

    .line 483
    .local v2, "textArea":Ljavafx/scene/control/TextArea;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->previousWord()V

    .line 484
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->selectNextWord()V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->selectEndOfNextWord()V

    goto :goto_0
.end method

.method public mouseDragged(Ljavafx/scene/input/MouseEvent;)V
    .locals 10

    .prologue
    .line 388
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextArea;

    move-object v3, v4

    .line 391
    .local v3, "textArea":Ljavafx/scene/control/TextArea;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TextArea;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v4, v5, :cond_0

    move-object v4, v2

    .line 393
    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    .line 394
    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 395
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    .line 398
    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->deferClick:Z

    .line 399
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 12

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TextArea;

    move-object v2, v7

    .line 317
    .local v2, "textArea":Ljavafx/scene/control/TextArea;
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 319
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->isDisabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 324
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->isFocused()Z

    move-result v7

    if-nez v7, :cond_0

    .line 325
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->focusGainedByMouseClick:Z

    .line 326
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->requestFocus()V

    .line 330
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->setCaretAnimating(Z)V

    .line 335
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v7, v8, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v7

    if-nez v7, :cond_3

    .line 336
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v7

    move-object v3, v7

    .line 337
    .local v3, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TextArea;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sun/javafx/scene/control/skin/Utils;->getHitInsertionIndex(Lcom/sun/javafx/scene/text/HitInfo;Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 339
    .local v4, "i":I
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->getAnchor()I

    move-result v7

    move v5, v7

    .line 340
    .local v5, "anchor":I
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v7

    move v6, v7

    .line 341
    .local v6, "caretPosition":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_5

    move-object v7, v1

    .line 342
    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v5

    move v8, v6

    if-eq v7, v8, :cond_5

    move v7, v4

    move v8, v5

    if-le v7, v8, :cond_1

    move v7, v4

    move v8, v6

    if-lt v7, v8, :cond_2

    :cond_1
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_5

    move v7, v4

    move v8, v6

    if-le v7, v8, :cond_5

    .line 351
    :cond_2
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->deferClick:Z

    .line 381
    .end local v3    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .end local v4    # "i":I
    .end local v5    # "anchor":I
    .end local v6    # "caretPosition":I
    :cond_3
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v7}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 382
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v7}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 385
    :cond_4
    return-void

    .line 355
    .restart local v3    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .restart local v4    # "i":I
    .restart local v5    # "anchor":I
    .restart local v6    # "caretPosition":I
    :cond_5
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isShortcutDown()Z

    move-result v7

    if-nez v7, :cond_6

    .line 356
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 359
    goto :goto_0

    .line 357
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    goto :goto_0

    .line 358
    :pswitch_1
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->mouseDoubleClick(Lcom/sun/javafx/scene/text/HitInfo;)V

    goto :goto_0

    .line 359
    :pswitch_2
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->mouseTripleClick(Lcom/sun/javafx/scene/text/HitInfo;)V

    goto :goto_0

    .line 362
    :cond_6
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isShortcutDown()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 364
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->shiftDown:Z

    .line 371
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 372
    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TextArea;->extendSelection(I)V

    goto/16 :goto_0

    .line 374
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    goto/16 :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public mouseReleased(Ljavafx/scene/input/MouseEvent;)V
    .locals 10

    .prologue
    .line 402
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextArea;

    move-object v3, v4

    .line 403
    .local v3, "textArea":Ljavafx/scene/control/TextArea;
    move-object v4, v1

    move-object v5, v2

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->mouseReleased(Ljavafx/scene/input/MouseEvent;)V

    .line 406
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TextArea;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->setCaretAnimating(Z)V

    .line 408
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->deferClick:Z

    if-eqz v4, :cond_0

    .line 409
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->deferClick:Z

    .line 410
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v5

    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->shiftDown:Z

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;ZZ)V

    .line 411
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->shiftDown:Z

    .line 413
    :cond_0
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->setCaretAnimating(Z)V

    .line 415
    :cond_1
    return-void
.end method

.method protected mouseTripleClick(Lcom/sun/javafx/scene/text/HitInfo;)V
    .locals 6

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v1, p1

    .local v1, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphStart(ZZ)V

    .line 494
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    const/4 v3, 0x0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->paragraphEnd(ZZZ)V

    .line 495
    return-void
.end method

.method protected replaceText(IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, p3

    .local v3, "txt":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextArea;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/control/TextArea;->replaceText(IILjava/lang/String;)V

    .line 305
    return-void
.end method

.method protected scrollCharacterToVisible(I)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->scrollCharacterToVisible(I)V

    .line 301
    return-void
.end method

.method protected setCaretAnimating(Z)V
    .locals 4

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move v1, p1

    .local v1, "play":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->setCaretAnimating(Z)V

    .line 479
    return-void
.end method

.method public setTextAreaSkin(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v1, p1

    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    .line 201
    return-void
.end method
