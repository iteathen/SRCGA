.class public Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "ToolBarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/ToolBar;",
        ">;"
    }
.end annotation


# static fields
.field private static final CTRL_F5:Ljava/lang/String; = "Ctrl_F5"

.field protected static final TOOLBAR_BINDINGS:Ljava/util/List;
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
    .locals 6

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;->TOOLBAR_BINDINGS:Ljava/util/List;

    .line 53
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;->TOOLBAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->F5:Ljavafx/scene/input/KeyCode;

    const-string v4, "Ctrl_F5"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 54
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ToolBar;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;
    move-object v1, p1

    .local v1, "toolbar":Ljavafx/scene/control/ToolBar;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;->TOOLBAR_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v3, "Ctrl_F5"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ToolBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ToolBar;

    move-object v2, v3

    .line 59
    .local v2, "toolbar":Ljavafx/scene/control/ToolBar;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ToolBar;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->requestFocus()V

    .line 62
    .line 65
    .end local v2    # "toolbar":Ljavafx/scene/control/ToolBar;
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method
