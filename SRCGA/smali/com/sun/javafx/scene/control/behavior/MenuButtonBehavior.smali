.class public Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;
.super Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;
.source "MenuButtonBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase",
        "<",
        "Ljavafx/scene/control/MenuButton;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MENU_BUTTON_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;->MENU_BUTTON_BINDINGS:Ljava/util/List;

    .line 66
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;->MENU_BUTTON_BINDINGS:Ljava/util/List;

    sget-object v1, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;->BASE_MENU_BUTTON_BINDINGS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 67
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;->MENU_BUTTON_BINDINGS:Ljava/util/List;

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

    .line 68
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;->MENU_BUTTON_BINDINGS:Ljava/util/List;

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

    .line 69
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/MenuButton;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;
    move-object v1, p1

    .local v1, "menuButton":Ljavafx/scene/control/MenuButton;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehavior;->MENU_BUTTON_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/MenuButtonBehaviorBase;-><init>(Ljavafx/scene/control/MenuButton;Ljava/util/List;)V

    .line 53
    return-void
.end method
