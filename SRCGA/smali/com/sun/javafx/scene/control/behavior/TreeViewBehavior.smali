.class public Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "TreeViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/TreeView",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field protected static final TREE_VIEW_BINDINGS:Ljava/util/List;
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
.field private isShiftDown:Z

.field private isShortcutDown:Z

.field private onFocusNextRow:Ljava/lang/Runnable;

.field private onFocusPreviousRow:Ljava/lang/Runnable;

.field private onMoveToFirstCell:Ljava/lang/Runnable;

.field private onMoveToLastCell:Ljava/lang/Runnable;

.field private onScrollPageDown:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onScrollPageUp:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectNextRow:Ljava/lang/Runnable;

.field private onSelectPreviousRow:Ljava/lang/Runnable;

.field private final selectedIndicesListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectionChanging:Z

.field private final selectionModelListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final weakSelectedIndicesListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectFirstRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectLastRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectAllToFirstRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectAllToLastRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectAllPageUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectAllPageDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectAllToFocus"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectAllToFocusAndSetAnchor"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusFirstRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusLastRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "ScrollUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "ScrollDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    const-string v4, "toggleFocusOwnerSelection"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    const-string v4, "toggleFocusOwnerSelection"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    :goto_0
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->A:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectAll"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusPageUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusPageDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectPageUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectPageDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectAllToFirstRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectAllToLastRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "CollapseRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "CollapseRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 107
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "ExpandRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "ExpandRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->MULTIPLY:Ljavafx/scene/input/KeyCode;

    const-string v4, "ExpandAll"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->ADD:Ljavafx/scene/input/KeyCode;

    const-string v4, "ExpandRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 112
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SUBTRACT:Ljavafx/scene/input/KeyCode;

    const-string v4, "CollapseRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 121
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 122
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 124
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    const-string v4, "Edit"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->F2:Ljavafx/scene/input/KeyCode;

    const-string v4, "Edit"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 126
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    const-string v4, "CancelEdit"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 127
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    const-string v4, "toggleFocusOwnerSelection"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljavafx/scene/control/TreeView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->TREE_VIEW_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 200
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    .line 201
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShortcutDown:Z

    .line 231
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionChanging:Z

    .line 233
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectedIndicesListener:Ljavafx/collections/ListChangeListener;

    .line 263
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior$1;-><init>(Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionModelListener:Ljavafx/beans/value/ChangeListener;

    .line 277
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectedIndicesListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->weakSelectedIndicesListener:Ljavafx/collections/WeakListChangeListener;

    .line 279
    move-object v2, v0

    new-instance v3, Ljavafx/beans/value/WeakChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionModelListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v4, v5}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;

    .line 286
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 287
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->weakSelectedIndicesListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 290
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->weakSelectedIndicesListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->lambda$new$266(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;Ljavafx/scene/control/TreeItem;)Ljava/lang/Integer;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->lambda$expandRow$267(Ljavafx/scene/control/TreeItem;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private alsoSelectNextRow()V
    .locals 9

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeView;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v1, v5

    .line 450
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 477
    :goto_0
    return-void

    .line 452
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeView;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v2, v5

    .line 453
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 455
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v5, :cond_5

    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 456
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 457
    .local v3, "newRow":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v5

    move v4, v5

    .line 459
    .local v4, "anchor":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->hasAnchor()Z

    move-result v5

    if-nez v5, :cond_2

    .line 460
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 463
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 464
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->clearSelectionOutsideRange(II)V

    .line 467
    :cond_3
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_4

    .line 468
    move-object v5, v2

    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 472
    .line 476
    .end local v3    # "newRow":I
    .end local v4    # "anchor":I
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onSelectNextRow:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 477
    goto :goto_0

    .line 470
    .restart local v3    # "newRow":I
    .restart local v4    # "anchor":I
    :cond_4
    move-object v5, v2

    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    goto :goto_1

    .line 473
    .end local v3    # "newRow":I
    .end local v4    # "anchor":I
    :cond_5
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModel;->selectNext()V

    goto :goto_1
.end method

.method private alsoSelectPreviousRow()V
    .locals 9

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeView;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v1, v5

    .line 417
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 446
    :goto_0
    return-void

    .line 419
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeView;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v2, v5

    .line 420
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v5, :cond_6

    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 423
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 424
    .local v3, "newRow":I
    move v5, v3

    if-gez v5, :cond_2

    goto :goto_0

    .line 426
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v5

    move v4, v5

    .line 428
    .local v4, "anchor":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->hasAnchor()Z

    move-result v5

    if-nez v5, :cond_3

    .line 429
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 432
    :cond_3
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    .line 433
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->clearSelectionOutsideRange(II)V

    .line 436
    :cond_4
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_5

    .line 437
    move-object v5, v2

    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 441
    .line 445
    .end local v3    # "newRow":I
    .end local v4    # "anchor":I
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onSelectPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 446
    goto :goto_0

    .line 439
    .restart local v3    # "newRow":I
    .restart local v4    # "anchor":I
    :cond_5
    move-object v5, v2

    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    goto :goto_1

    .line 442
    .end local v3    # "newRow":I
    .end local v4    # "anchor":I
    :cond_6
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModel;->selectPrevious()V

    goto :goto_1
.end method

.method private cancelEdit()V
    .locals 3

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeView;->edit(Ljavafx/scene/control/TreeItem;)V

    .line 751
    return-void
.end method

.method private clearSelection()V
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 325
    return-void
.end method

.method private clearSelectionOutsideRange(II)V
    .locals 13

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeView;

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 481
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v9, v3

    if-nez v9, :cond_0

    .line 496
    :goto_0
    return-void

    .line 483
    :cond_0
    move v9, v1

    move v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v4, v9

    .line 484
    .local v4, "min":I
    move v9, v1

    move v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v5, v9

    .line 486
    .local v5, "max":I
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v3

    invoke-virtual {v11}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v9

    .line 488
    .local v6, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionChanging:Z

    .line 489
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 490
    move-object v9, v6

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v8, v9

    .line 491
    .local v8, "index":I
    move v9, v8

    move v10, v4

    if-lt v9, v10, :cond_1

    move v9, v8

    move v10, v5

    if-le v9, v10, :cond_2

    .line 492
    :cond_1
    move-object v9, v3

    move v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection(I)V

    .line 489
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 495
    .end local v8    # "index":I
    :cond_3
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionChanging:Z

    .line 496
    goto :goto_0
.end method

.method private collapseRow()V
    .locals 5

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    move-object v1, v2

    .line 679
    .local v1, "control":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->isShowRoot()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->collapseRow(Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/scene/control/TreeItem;Z)V

    .line 680
    return-void
.end method

.method static collapseRow(Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/scene/control/TreeItem;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v2, p2

    .local v2, "isShowRoot":Z
    move-object v4, v0

    if-nez v4, :cond_0

    .line 747
    :goto_0
    return-void

    .line 723
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeItem;

    move-object v3, v4

    .line 724
    .local v3, "selectedItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v3

    if-nez v4, :cond_1

    goto :goto_0

    .line 725
    :cond_1
    move-object v4, v1

    if-nez v4, :cond_2

    goto :goto_0

    .line 729
    :cond_2
    move v4, v2

    if-nez v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 730
    goto :goto_0

    .line 735
    :cond_3
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 736
    :cond_4
    goto :goto_0

    .line 741
    :cond_5
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v4

    if-nez v4, :cond_6

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_7

    .line 742
    :cond_6
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 743
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MultipleSelectionModel;->select(Ljava/lang/Object;)V

    .line 747
    :goto_1
    goto :goto_0

    .line 745
    :cond_7
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    goto :goto_1
.end method

.method private discontinuousSelectAllToFirstRow()V
    .locals 7

    .prologue
    .line 862
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 863
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 873
    :goto_0
    return-void

    .line 865
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 866
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 868
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    move v3, v4

    .line 869
    .local v3, "index":I
    move-object v4, v1

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 870
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 872
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 873
    :cond_2
    goto :goto_0
.end method

.method private discontinuousSelectAllToLastRow()V
    .locals 7

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 877
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 886
    :goto_0
    return-void

    .line 879
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 880
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 882
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 883
    .local v3, "index":I
    move-object v4, v1

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 885
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 886
    :cond_2
    goto :goto_0
.end method

.method private discontinuousSelectNextRow()V
    .locals 10

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v1, v6

    .line 812
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 835
    :goto_0
    return-void

    .line 814
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    if-eq v6, v7, :cond_1

    .line 815
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectNextRow()V

    .line 816
    goto :goto_0

    .line 819
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v2, v6

    .line 820
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v2

    if-nez v6, :cond_2

    goto :goto_0

    .line 822
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    move v3, v6

    .line 823
    .local v3, "focusIndex":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 824
    .local v4, "newFocusIndex":I
    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TreeView;

    invoke-virtual {v7}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v7

    if-lt v6, v7, :cond_3

    goto :goto_0

    .line 826
    :cond_3
    move v6, v3

    move v5, v6

    .line 827
    .local v5, "startIndex":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v6, :cond_4

    .line 828
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v6, v3

    :goto_1
    move v5, v6

    .line 831
    :cond_4
    move-object v6, v1

    move v7, v5

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 832
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 834
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 835
    :cond_5
    goto :goto_0

    .line 828
    :cond_6
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v6

    goto :goto_1
.end method

.method private discontinuousSelectPageDown()V
    .locals 9

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeView;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v1, v5

    .line 851
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 859
    :goto_0
    return-void

    .line 853
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeView;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v2, v5

    .line 854
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 856
    :cond_1
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v5

    move v3, v5

    .line 857
    .local v3, "anchor":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    .line 858
    .local v4, "leadSelectedIndex":I
    move-object v5, v1

    move v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 859
    goto :goto_0
.end method

.method private discontinuousSelectPageUp()V
    .locals 9

    .prologue
    .line 838
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeView;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v1, v5

    .line 839
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 847
    :goto_0
    return-void

    .line 841
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TreeView;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v2, v5

    .line 842
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 844
    :cond_1
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v5

    move v3, v5

    .line 845
    .local v3, "anchor":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    .line 846
    .local v4, "leadSelectedIndex":I
    move-object v5, v1

    move v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 847
    goto :goto_0
.end method

.method private discontinuousSelectPreviousRow()V
    .locals 10

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v1, v6

    .line 785
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 808
    :goto_0
    return-void

    .line 787
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    if-eq v6, v7, :cond_1

    .line 788
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectPreviousRow()V

    .line 789
    goto :goto_0

    .line 792
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v2, v6

    .line 793
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v2

    if-nez v6, :cond_2

    goto :goto_0

    .line 795
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    move v3, v6

    .line 796
    .local v3, "focusIndex":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 797
    .local v4, "newFocusIndex":I
    move v6, v4

    if-gez v6, :cond_3

    goto :goto_0

    .line 799
    :cond_3
    move v6, v3

    move v5, v6

    .line 800
    .local v5, "startIndex":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v6, :cond_4

    .line 801
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v6, v3

    :goto_1
    move v5, v6

    .line 804
    :cond_4
    move-object v6, v1

    move v7, v4

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 805
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 807
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 808
    :cond_5
    goto :goto_0

    .line 801
    :cond_6
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v6

    goto :goto_1
.end method

.method private edit()V
    .locals 4

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeItem;

    move-object v1, v2

    .line 755
    .local v1, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 758
    :goto_0
    return-void

    .line 757
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView;->edit(Ljavafx/scene/control/TreeItem;)V

    .line 758
    goto :goto_0
.end method

.method private expandAll()V
    .locals 2

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->expandAll(Ljavafx/scene/control/TreeItem;)V

    .line 675
    return-void
.end method

.method static expandAll(Ljavafx/scene/control/TreeItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 703
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->expandChildren(Ljavafx/scene/control/TreeItem;)V

    .line 704
    goto :goto_0
.end method

.method private static expandChildren(Ljavafx/scene/control/TreeItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v0

    if-nez v4, :cond_0

    .line 718
    :goto_0
    return-void

    .line 708
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v1, v4

    .line 709
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v1

    if-nez v4, :cond_1

    goto :goto_0

    .line 711
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 712
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeItem;

    move-object v3, v4

    .line 713
    .local v3, "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 711
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 715
    :cond_3
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 716
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->expandChildren(Ljavafx/scene/control/TreeItem;)V

    goto :goto_2

    .line 718
    .end local v3    # "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_4
    goto :goto_0
.end method

.method private expandRow()V
    .locals 4

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;)Ljavafx/util/Callback;

    move-result-object v2

    move-object v1, v2

    .line 670
    .local v1, "getIndex":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljava/lang/Integer;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->expandRow(Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/util/Callback;)V

    .line 671
    return-void
.end method

.method static expandRow(Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/util/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v1, p1

    .local v1, "getIndex":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljava/lang/Integer;>;"
    move-object v4, v0

    if-nez v4, :cond_0

    .line 697
    :goto_0
    return-void

    .line 685
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeItem;

    move-object v2, v4

    .line 686
    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    goto :goto_0

    .line 688
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 690
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v3, v4

    .line 691
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 692
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 694
    .line 697
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :cond_3
    :goto_1
    goto :goto_0

    .line 695
    :cond_4
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    goto :goto_1
.end method

.method private focusFirstRow()V
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move-object v1, v2

    .line 353
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 356
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 357
    :cond_1
    goto :goto_0
.end method

.method private focusLastRow()V
    .locals 5

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move-object v1, v2

    .line 361
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 364
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 365
    :cond_1
    goto :goto_0
.end method

.method private focusNextRow()V
    .locals 5

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v1, v3

    .line 385
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 397
    :goto_0
    return-void

    .line 387
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 388
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->focusNext()V

    .line 392
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShortcutDown:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 393
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 396
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 397
    :cond_4
    goto :goto_0
.end method

.method private focusPageDown()V
    .locals 5

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 410
    .local v1, "newFocusIndex":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v2, v3

    .line 411
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 413
    goto :goto_0
.end method

.method private focusPageUp()V
    .locals 5

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 402
    .local v1, "newFocusIndex":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v2, v3

    .line 403
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 405
    goto :goto_0
.end method

.method private focusPreviousRow()V
    .locals 5

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v1, v3

    .line 369
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 381
    :goto_0
    return-void

    .line 371
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 372
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->focusPrevious()V

    .line 376
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShortcutDown:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 377
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 380
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 381
    :cond_4
    goto :goto_0
.end method

.method private getAnchor()I
    .locals 3

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    return v0
.end method

.method private hasAnchor()Z
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->hasNonDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    return v0
.end method

.method private synthetic lambda$expandRow$267(Ljavafx/scene/control/TreeItem;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "p":Ljavafx/scene/control/TreeItem;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeView;->getRow(Ljavafx/scene/control/TreeItem;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    return-object v0
.end method

.method private synthetic lambda$new$266(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 10

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 235
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->hasDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 237
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->removeAnchor(Ljavafx/scene/control/Control;)V

    .line 241
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v8

    sub-int/2addr v7, v8

    :goto_1
    move v2, v7

    .line 243
    .local v2, "shift":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TreeView;

    invoke-virtual {v7}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v7

    move-object v3, v7

    .line 246
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionChanging:Z

    if-nez v7, :cond_1

    .line 247
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/MultipleSelectionModel;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 248
    move-object v7, v0

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 254
    :cond_1
    :goto_2
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v7

    move v4, v7

    .line 255
    .local v4, "addedSize":I
    move v7, v4

    if-lez v7, :cond_2

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->hasAnchor()Z

    move-result v7

    if-nez v7, :cond_2

    .line 256
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 257
    .local v5, "addedSubList":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Integer;>;"
    move-object v7, v5

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v6, v7

    .line 258
    .local v6, "index":I
    move-object v7, v0

    move v8, v6

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 260
    .end local v5    # "addedSubList":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Integer;>;"
    .end local v6    # "index":I
    :cond_2
    goto :goto_0

    .line 241
    .end local v2    # "shift":I
    .end local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    .end local v4    # "addedSize":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 249
    .restart local v2    # "shift":I
    .restart local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :cond_4
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->hasAnchor()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v8

    move v9, v2

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->isSelected(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 250
    move-object v7, v0

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    goto :goto_2

    .line 261
    .end local v2    # "shift":I
    .end local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :cond_5
    return-void
.end method

.method private scrollDown()V
    .locals 5

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    const/4 v3, -0x1

    move v1, v3

    .line 341
    .local v1, "newSelectedIndex":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    if-eqz v3, :cond_0

    .line 342
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 344
    :cond_0
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 347
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    .line 348
    :cond_2
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 349
    goto :goto_0
.end method

.method private scrollUp()V
    .locals 5

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    const/4 v3, -0x1

    move v1, v3

    .line 329
    .local v1, "newSelectedIndex":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    if-eqz v3, :cond_0

    .line 330
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 332
    :cond_0
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 335
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    .line 336
    :cond_2
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 337
    goto :goto_0
.end method

.method private selectAll()V
    .locals 2

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/MultipleSelectionModel;->selectAll()V

    .line 589
    return-void
.end method

.method private selectAllPageDown()V
    .locals 10

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v1, v6

    .line 621
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 645
    :goto_0
    return-void

    .line 623
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    move v2, v6

    .line 624
    .local v2, "leadIndex":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v6, :cond_1

    .line 625
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    move v6, v2

    :goto_1
    move v2, v6

    .line 626
    move-object v6, v0

    move v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 629
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v3, v6

    .line 632
    .local v3, "leadSelectedIndex":I
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 634
    .local v4, "adjust":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v5, v6

    .line 635
    .local v5, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v5

    if-nez v6, :cond_4

    goto :goto_0

    .line 625
    .end local v3    # "leadSelectedIndex":I
    .end local v4    # "adjust":I
    .end local v5    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v6

    goto :goto_1

    .line 632
    .restart local v3    # "leadSelectedIndex":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    .line 637
    .restart local v4    # "adjust":I
    .restart local v5    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :cond_4
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionChanging:Z

    .line 638
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v6, v7, :cond_5

    .line 639
    move-object v6, v5

    move v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    .line 644
    :goto_3
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionChanging:Z

    .line 645
    goto :goto_0

    .line 641
    :cond_5
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 642
    move-object v6, v5

    move v7, v2

    move v8, v3

    move v9, v4

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    goto :goto_3
.end method

.method private selectAllPageUp()V
    .locals 10

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v1, v6

    .line 593
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 617
    :goto_0
    return-void

    .line 595
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    move v2, v6

    .line 596
    .local v2, "leadIndex":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v6, :cond_1

    .line 597
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    move v6, v2

    :goto_1
    move v2, v6

    .line 598
    move-object v6, v0

    move v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 601
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v3, v6

    .line 604
    .local v3, "leadSelectedIndex":I
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 606
    .local v4, "adjust":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v5, v6

    .line 607
    .local v5, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v5

    if-nez v6, :cond_4

    goto :goto_0

    .line 597
    .end local v3    # "leadSelectedIndex":I
    .end local v4    # "adjust":I
    .end local v5    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v6

    goto :goto_1

    .line 604
    .restart local v3    # "leadSelectedIndex":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    .line 609
    .restart local v4    # "adjust":I
    .restart local v5    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :cond_4
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionChanging:Z

    .line 610
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v6, v7, :cond_5

    .line 611
    move-object v6, v5

    move v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    .line 616
    :goto_3
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectionChanging:Z

    .line 617
    goto :goto_0

    .line 613
    :cond_5
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 614
    move-object v6, v5

    move v7, v2

    move v8, v3

    move v9, v4

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    goto :goto_3
.end method

.method private selectAllToFirstRow()V
    .locals 7

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 540
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 562
    :goto_0
    return-void

    .line 542
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 543
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 545
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    move v3, v4

    .line 547
    .local v3, "leadIndex":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v4, :cond_2

    .line 548
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->hasAnchor()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v4

    :goto_1
    move v3, v4

    .line 551
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 552
    move-object v4, v1

    move v5, v3

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 555
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 557
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v4, :cond_3

    .line 558
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 561
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 562
    :cond_4
    goto :goto_0

    .line 548
    :cond_5
    move v4, v3

    goto :goto_1
.end method

.method private selectAllToFocus(Z)V
    .locals 12

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move v1, p1

    .local v1, "setAnchorToFocusIndex":Z
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TreeView;

    move-object v2, v9

    .line 650
    .local v2, "treeView":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getEditingItem()Ljavafx/scene/control/TreeItem;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 666
    :goto_0
    return-void

    .line 652
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 653
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v9, v3

    if-nez v9, :cond_1

    goto :goto_0

    .line 655
    :cond_1
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v9

    move-object v4, v9

    .line 656
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v9, v4

    if-nez v9, :cond_2

    goto :goto_0

    .line 658
    :cond_2
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v9

    move v5, v9

    .line 659
    .local v5, "focusIndex":I
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v9

    move v6, v9

    .line 661
    .local v6, "anchor":I
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 662
    move v9, v6

    move v7, v9

    .line 663
    .local v7, "startPos":I
    move v9, v6

    move v10, v5

    if-le v9, v10, :cond_3

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_1
    move v8, v9

    .line 664
    .local v8, "endPos":I
    move-object v9, v3

    move v10, v7

    move v11, v8

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 665
    move-object v9, v0

    move v10, v1

    if-eqz v10, :cond_4

    move v10, v5

    :goto_2
    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 666
    goto :goto_0

    .line 663
    .end local v8    # "endPos":I
    :cond_3
    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 665
    .restart local v8    # "endPos":I
    :cond_4
    move v10, v6

    goto :goto_2
.end method

.method private selectAllToLastRow()V
    .locals 7

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 566
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 585
    :goto_0
    return-void

    .line 568
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 569
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 571
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    move v3, v4

    .line 573
    .local v3, "leadIndex":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v4, :cond_2

    .line 574
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->hasAnchor()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getAnchor()I

    move-result v4

    :goto_1
    move v3, v4

    .line 577
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 578
    move-object v4, v1

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeView;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 580
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    if-eqz v4, :cond_3

    .line 581
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 584
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 585
    :cond_4
    goto :goto_0

    .line 574
    :cond_5
    move v4, v3

    goto :goto_1
.end method

.method private selectFirstRow()V
    .locals 3

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 528
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 529
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 531
    :cond_0
    return-void
.end method

.method private selectLastRow()V
    .locals 4

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 535
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 536
    return-void
.end method

.method private selectNextRow()V
    .locals 6

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v1, v3

    .line 514
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 524
    :goto_0
    return-void

    .line 516
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v3

    move v2, v3

    .line 517
    .local v2, "focusIndex":I
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getExpandedItemCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 518
    goto :goto_0

    .line 521
    :cond_1
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 522
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 523
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onSelectNextRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 524
    goto :goto_0
.end method

.method private selectPreviousRow()V
    .locals 6

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v1, v3

    .line 500
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 510
    :goto_0
    return-void

    .line 502
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v3

    move v2, v3

    .line 503
    .local v2, "focusIndex":I
    move v3, v2

    if-gtz v3, :cond_1

    .line 504
    goto :goto_0

    .line 507
    :cond_1
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 508
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 509
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onSelectPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 510
    goto :goto_0
.end method

.method private setAnchor(I)V
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move v1, p1

    .local v1, "anchor":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    move v3, v1

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 299
    return-void

    .line 298
    :cond_0
    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method private toggleFocusOwnerSelection()V
    .locals 6

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 762
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 777
    :goto_0
    return-void

    .line 764
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 765
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 767
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    move v3, v4

    .line 769
    .local v3, "focusedIndex":I
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MultipleSelectionModel;->isSelected(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 770
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection(I)V

    .line 771
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 776
    :goto_1
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 777
    goto :goto_0

    .line 773
    :cond_2
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    goto :goto_1
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v2, "SelectPreviousRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectPreviousRow()V

    .line 184
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v2, "SelectNextRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectNextRow()V

    goto :goto_0

    .line 148
    :cond_1
    const-string v2, "SelectFirstRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectFirstRow()V

    goto :goto_0

    .line 149
    :cond_2
    const-string v2, "SelectLastRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectLastRow()V

    goto :goto_0

    .line 150
    :cond_3
    const-string v2, "SelectAllPageUp"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectAllPageUp()V

    goto :goto_0

    .line 151
    :cond_4
    const-string v2, "SelectAllPageDown"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectAllPageDown()V

    goto :goto_0

    .line 152
    :cond_5
    const-string v2, "SelectAllToFirstRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectAllToFirstRow()V

    goto :goto_0

    .line 153
    :cond_6
    const-string v2, "SelectAllToLastRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectAllToLastRow()V

    goto :goto_0

    .line 154
    :cond_7
    const-string v2, "AlsoSelectNextRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->alsoSelectNextRow()V

    goto :goto_0

    .line 155
    :cond_8
    const-string v2, "AlsoSelectPreviousRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->alsoSelectPreviousRow()V

    goto :goto_0

    .line 156
    :cond_9
    const-string v2, "ClearSelection"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->clearSelection()V

    goto/16 :goto_0

    .line 157
    :cond_a
    const-string v2, "SelectAll"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectAll()V

    goto/16 :goto_0

    .line 158
    :cond_b
    const-string v2, "ScrollUp"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->scrollUp()V

    goto/16 :goto_0

    .line 159
    :cond_c
    const-string v2, "ScrollDown"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->scrollDown()V

    goto/16 :goto_0

    .line 160
    :cond_d
    const-string v2, "ExpandRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->expandRow()V

    goto/16 :goto_0

    .line 161
    :cond_e
    const-string v2, "CollapseRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->collapseRow()V

    goto/16 :goto_0

    .line 162
    :cond_f
    const-string v2, "ExpandAll"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->expandAll()V

    goto/16 :goto_0

    .line 164
    :cond_10
    const-string v2, "Edit"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->edit()V

    goto/16 :goto_0

    .line 165
    :cond_11
    const-string v2, "CancelEdit"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->cancelEdit()V

    goto/16 :goto_0

    .line 166
    :cond_12
    const-string v2, "FocusFirstRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->focusFirstRow()V

    goto/16 :goto_0

    .line 167
    :cond_13
    const-string v2, "FocusLastRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->focusLastRow()V

    goto/16 :goto_0

    .line 168
    :cond_14
    const-string v2, "toggleFocusOwnerSelection"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->toggleFocusOwnerSelection()V

    goto/16 :goto_0

    .line 170
    :cond_15
    const-string v2, "SelectAllToFocus"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectAllToFocus(Z)V

    goto/16 :goto_0

    .line 171
    :cond_16
    const-string v2, "SelectAllToFocusAndSetAnchor"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->selectAllToFocus(Z)V

    goto/16 :goto_0

    .line 173
    :cond_17
    const-string v2, "FocusPageUp"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->focusPageUp()V

    goto/16 :goto_0

    .line 174
    :cond_18
    const-string v2, "FocusPageDown"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->focusPageDown()V

    goto/16 :goto_0

    .line 175
    :cond_19
    const-string v2, "FocusPreviousRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->focusPreviousRow()V

    goto/16 :goto_0

    .line 176
    :cond_1a
    const-string v2, "FocusNextRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->focusNextRow()V

    goto/16 :goto_0

    .line 177
    :cond_1b
    const-string v2, "DiscontinuousSelectNextRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->discontinuousSelectNextRow()V

    goto/16 :goto_0

    .line 178
    :cond_1c
    const-string v2, "DiscontinuousSelectPreviousRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->discontinuousSelectPreviousRow()V

    goto/16 :goto_0

    .line 179
    :cond_1d
    const-string v2, "DiscontinuousSelectPageUp"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->discontinuousSelectPageUp()V

    goto/16 :goto_0

    .line 180
    :cond_1e
    const-string v2, "DiscontinuousSelectPageDown"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->discontinuousSelectPageDown()V

    goto/16 :goto_0

    .line 181
    :cond_1f
    const-string v2, "DiscontinuousSelectAllToLastRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->discontinuousSelectAllToLastRow()V

    goto/16 :goto_0

    .line 182
    :cond_20
    const-string v2, "DiscontinuousSelectAllToFirstRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->discontinuousSelectAllToFirstRow()V

    goto/16 :goto_0

    .line 183
    :cond_21
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected callActionForEvent(Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShiftDown:Z

    .line 191
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isShortcutDown()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->isShortcutDown:Z

    .line 193
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callActionForEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 194
    return-void

    .line 190
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 191
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/behavior/TreeCellBehavior;->removeAnchor(Ljavafx/scene/control/Control;)V

    .line 294
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->dispose()V

    .line 295
    return-void
.end method

.method protected matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 131
    .local v2, "action":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_1

    .line 136
    const-string v3, "CollapseRow"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_2

    .line 137
    :cond_0
    const-string v3, "ExpandRow"

    move-object v2, v3

    .line 142
    :cond_1
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    return-object v0

    .line 138
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    :cond_2
    const-string v3, "ExpandRow"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    if-eq v3, v4, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_1

    .line 139
    :cond_3
    const-string v3, "CollapseRow"

    move-object v2, v3

    goto :goto_0
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 312
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndex()I

    move-result v3

    move v2, v3

    .line 314
    .local v2, "index":I
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->setAnchor(I)V

    .line 317
    .end local v2    # "index":I
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->isFocusTraversable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->requestFocus()V

    .line 320
    :cond_1
    return-void
.end method

.method public setOnFocusNextRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnFocusPreviousRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnMoveToFirstCell(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnMoveToLastCell(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnScrollPageDown(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    return-void
.end method

.method public setOnScrollPageUp(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    return-void
.end method

.method public setOnSelectNextRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onSelectNextRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnSelectPreviousRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TreeViewBehavior;->onSelectPreviousRow:Ljava/lang/Runnable;

    return-void
.end method
