.class public Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "ListViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/ListView",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field protected static final LIST_VIEW_BINDINGS:Ljava/util/List;
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

.field private final itemsListListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final itemsListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation
.end field

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
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;

.field private final weakItemsListListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final weakItemsListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
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
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    .line 65
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectFirstRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectLastRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 68
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 69
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 72
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 75
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "ScrollUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "ScrollDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    const-string v4, "Activate"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    const-string v4, "Activate"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->F2:Ljavafx/scene/input/KeyCode;

    const-string v4, "Activate"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    const-string v4, "CancelEdit"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 84
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 85
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 86
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 87
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 89
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

    .line 96
    :goto_0
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 107
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectPageUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 112
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectPageDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 113
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectAllToFirstRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectAllToLastRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 121
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 122
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 126
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 127
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 130
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 133
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$ListViewKeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->BACK_SLASH:Ljavafx/scene/input/KeyCode;

    const-string v4, "ClearSelection"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

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

.method public constructor <init>(Ljavafx/scene/control/ListView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->LIST_VIEW_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 223
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    .line 224
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShortcutDown:Z

    .line 244
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionChanging:Z

    .line 246
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectedIndicesListener:Ljavafx/collections/ListChangeListener;

    .line 276
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->itemsListListener:Ljavafx/collections/ListChangeListener;

    .line 286
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$1;-><init>(Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->itemsListener:Ljavafx/beans/value/ChangeListener;

    .line 299
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior$2;-><init>(Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionModelListener:Ljavafx/beans/value/ChangeListener;

    .line 313
    move-object v2, v0

    new-instance v3, Ljavafx/beans/value/WeakChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->itemsListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v4, v5}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakItemsListener:Ljavafx/beans/value/WeakChangeListener;

    .line 315
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectedIndicesListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakSelectedIndicesListener:Ljavafx/collections/WeakListChangeListener;

    .line 317
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->itemsListListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakItemsListListener:Ljavafx/collections/WeakListChangeListener;

    .line 319
    move-object v2, v0

    new-instance v3, Ljavafx/beans/value/WeakChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionModelListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v4, v5}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;

    .line 327
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakItemsListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 328
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 329
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakItemsListListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 333
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakSelectionModelListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 334
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 335
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakSelectedIndicesListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 339
    :cond_1
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;-><init>(Ljavafx/scene/Node;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;

    .line 342
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakItemsListListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->weakSelectedIndicesListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->lambda$new$177(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->lambda$new$178(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private activate()V
    .locals 4

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v2

    move v1, v2

    .line 736
    .local v1, "focusedIndex":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    .line 737
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 740
    move v2, v1

    if-ltz v2, :cond_0

    .line 741
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->edit(I)V

    .line 743
    :cond_0
    return-void
.end method

.method private alsoSelectNextRow()V
    .locals 9

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v1, v5

    .line 506
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 533
    :goto_0
    return-void

    .line 508
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v2, v5

    .line 509
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 511
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v5, :cond_5

    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 512
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 513
    .local v3, "newRow":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v5

    move v4, v5

    .line 515
    .local v4, "anchor":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->hasAnchor()Z

    move-result v5

    if-nez v5, :cond_2

    .line 516
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 519
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 520
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->clearSelectionOutsideRange(II)V

    .line 523
    :cond_3
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_4

    .line 524
    move-object v5, v2

    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 528
    .line 532
    .end local v3    # "newRow":I
    .end local v4    # "anchor":I
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onSelectNextRow:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 533
    goto :goto_0

    .line 526
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

    .line 529
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
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v1, v5

    .line 473
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 502
    :goto_0
    return-void

    .line 475
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v2, v5

    .line 476
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 478
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v5, :cond_6

    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 479
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 480
    .local v3, "newRow":I
    move v5, v3

    if-gez v5, :cond_2

    goto :goto_0

    .line 482
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v5

    move v4, v5

    .line 484
    .local v4, "anchor":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->hasAnchor()Z

    move-result v5

    if-nez v5, :cond_3

    .line 485
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 488
    :cond_3
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    .line 489
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->clearSelectionOutsideRange(II)V

    .line 492
    :cond_4
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_5

    .line 493
    move-object v5, v2

    move v6, v4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 497
    .line 501
    .end local v3    # "newRow":I
    .end local v4    # "anchor":I
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onSelectPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 502
    goto :goto_0

    .line 495
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

    .line 498
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
    .line 731
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ListView;->edit(I)V

    .line 732
    return-void
.end method

.method private clearSelection()V
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListView;

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 381
    return-void
.end method

.method private clearSelectionOutsideRange(II)V
    .locals 13

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListView;

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 537
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v9, v3

    if-nez v9, :cond_0

    .line 552
    :goto_0
    return-void

    .line 539
    :cond_0
    move v9, v1

    move v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v4, v9

    .line 540
    .local v4, "min":I
    move v9, v1

    move v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v5, v9

    .line 542
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

    .line 544
    .local v6, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionChanging:Z

    .line 545
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 546
    move-object v9, v6

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v8, v9

    .line 547
    .local v8, "index":I
    move v9, v8

    move v10, v4

    if-lt v9, v10, :cond_1

    move v9, v8

    move v10, v5

    if-le v9, v10, :cond_2

    .line 548
    :cond_1
    move-object v9, v3

    move v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection(I)V

    .line 545
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 551
    .end local v8    # "index":I
    :cond_3
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionChanging:Z

    .line 552
    goto :goto_0
.end method

.method private discontinuousSelectAllToFirstRow()V
    .locals 7

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 848
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 858
    :goto_0
    return-void

    .line 850
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 851
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 853
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    move v3, v4

    .line 854
    .local v3, "index":I
    move-object v4, v1

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 855
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 857
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 858
    :cond_2
    goto :goto_0
.end method

.method private discontinuousSelectAllToLastRow()V
    .locals 7

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 862
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 871
    :goto_0
    return-void

    .line 864
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 865
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 867
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 868
    .local v3, "index":I
    move-object v4, v1

    move v5, v3

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getRowCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 870
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 871
    :cond_2
    goto :goto_0
.end method

.method private discontinuousSelectNextRow()V
    .locals 10

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v1, v6

    .line 797
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 820
    :goto_0
    return-void

    .line 799
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    if-eq v6, v7, :cond_1

    .line 800
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectNextRow()V

    .line 801
    goto :goto_0

    .line 804
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v2, v6

    .line 805
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v6, v2

    if-nez v6, :cond_2

    goto :goto_0

    .line 807
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    move v3, v6

    .line 808
    .local v3, "focusIndex":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 809
    .local v4, "newFocusIndex":I
    move v6, v4

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getRowCount()I

    move-result v7

    if-lt v6, v7, :cond_3

    goto :goto_0

    .line 811
    :cond_3
    move v6, v3

    move v5, v6

    .line 812
    .local v5, "startIndex":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v6, :cond_4

    .line 813
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v6, v3

    :goto_1
    move v5, v6

    .line 816
    :cond_4
    move-object v6, v1

    move v7, v5

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 817
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 819
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 820
    :cond_5
    goto :goto_0

    .line 813
    :cond_6
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v6

    goto :goto_1
.end method

.method private discontinuousSelectPageDown()V
    .locals 9

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v1, v5

    .line 836
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 844
    :goto_0
    return-void

    .line 838
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v2, v5

    .line 839
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 841
    :cond_1
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v5

    move v3, v5

    .line 842
    .local v3, "anchor":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    .line 843
    .local v4, "leadSelectedIndex":I
    move-object v5, v1

    move v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 844
    goto :goto_0
.end method

.method private discontinuousSelectPageUp()V
    .locals 9

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v1, v5

    .line 824
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 832
    :goto_0
    return-void

    .line 826
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v2, v5

    .line 827
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 829
    :cond_1
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v5

    move v3, v5

    .line 830
    .local v3, "anchor":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    .line 831
    .local v4, "leadSelectedIndex":I
    move-object v5, v1

    move v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 832
    goto :goto_0
.end method

.method private discontinuousSelectPreviousRow()V
    .locals 10

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v1, v6

    .line 770
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 793
    :goto_0
    return-void

    .line 772
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    if-eq v6, v7, :cond_1

    .line 773
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectPreviousRow()V

    .line 774
    goto :goto_0

    .line 777
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v2, v6

    .line 778
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v6, v2

    if-nez v6, :cond_2

    goto :goto_0

    .line 780
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    move v3, v6

    .line 781
    .local v3, "focusIndex":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 782
    .local v4, "newFocusIndex":I
    move v6, v4

    if-gez v6, :cond_3

    goto :goto_0

    .line 784
    :cond_3
    move v6, v3

    move v5, v6

    .line 785
    .local v5, "startIndex":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v6, :cond_4

    .line 786
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v6, v3

    :goto_1
    move v5, v6

    .line 789
    :cond_4
    move-object v6, v1

    move v7, v4

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 790
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 792
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 793
    :cond_5
    goto :goto_0

    .line 786
    :cond_6
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v6

    goto :goto_1
.end method

.method private focusFirstRow()V
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move-object v1, v2

    .line 409
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 412
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 413
    :cond_1
    goto :goto_0
.end method

.method private focusLastRow()V
    .locals 5

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    move-object v1, v2

    .line 417
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getRowCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 420
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 421
    :cond_1
    goto :goto_0
.end method

.method private focusNextRow()V
    .locals 5

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v1, v3

    .line 441
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 453
    :goto_0
    return-void

    .line 443
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 444
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 446
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->focusNext()V

    .line 448
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShortcutDown:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 449
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 452
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 453
    :cond_4
    goto :goto_0
.end method

.method private focusPageDown()V
    .locals 5

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 466
    .local v1, "newFocusIndex":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v2, v3

    .line 467
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 469
    goto :goto_0
.end method

.method private focusPageUp()V
    .locals 5

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 458
    .local v1, "newFocusIndex":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v2, v3

    .line 459
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 461
    :goto_0
    return-void

    .line 460
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 461
    goto :goto_0
.end method

.method private focusPreviousRow()V
    .locals 5

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v1, v3

    .line 425
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 437
    :goto_0
    return-void

    .line 427
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 428
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 430
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->focusPrevious()V

    .line 432
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShortcutDown:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 433
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 436
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 437
    :cond_4
    goto :goto_0
.end method

.method private getAnchor()I
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    return v0
.end method

.method private getRowCount()I
    .locals 2

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListView;

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListView;

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    goto :goto_0
.end method

.method private hasAnchor()Z
    .locals 2

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->hasNonDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    return v0
.end method

.method private synthetic lambda$new$177(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 10

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 248
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 249
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->hasDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->removeAnchor(Ljavafx/scene/control/Control;)V

    .line 254
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

    .line 256
    .local v2, "shift":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/ListView;

    invoke-virtual {v7}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v7

    move-object v3, v7

    .line 259
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionChanging:Z

    if-nez v7, :cond_1

    .line 260
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/MultipleSelectionModel;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 261
    move-object v7, v0

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 267
    :cond_1
    :goto_2
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v7

    move v4, v7

    .line 268
    .local v4, "addedSize":I
    move v7, v4

    if-lez v7, :cond_2

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->hasAnchor()Z

    move-result v7

    if-nez v7, :cond_2

    .line 269
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 270
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

    .line 271
    .local v6, "index":I
    move-object v7, v0

    move v8, v6

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 273
    .end local v5    # "addedSubList":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Integer;>;"
    .end local v6    # "index":I
    :cond_2
    goto :goto_0

    .line 254
    .end local v2    # "shift":I
    .end local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    .end local v4    # "addedSize":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 262
    .restart local v2    # "shift":I
    .restart local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    :cond_4
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->hasAnchor()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v8

    move v9, v2

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->isSelected(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 263
    move-object v7, v0

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    goto :goto_2

    .line 274
    .end local v2    # "shift":I
    .end local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    :cond_5
    return-void
.end method

.method private synthetic lambda$new$178(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v2

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 279
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    goto :goto_0

    .line 280
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v2

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 281
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    goto :goto_0

    .line 284
    :cond_2
    return-void
.end method

.method private scrollPageDown()V
    .locals 5

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    const/4 v3, -0x1

    move v1, v3

    .line 397
    .local v1, "newSelectedIndex":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    if-eqz v3, :cond_0

    .line 398
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 400
    :cond_0
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 405
    :goto_0
    return-void

    .line 402
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 403
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    .line 404
    :cond_2
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 405
    goto :goto_0
.end method

.method private scrollPageUp()V
    .locals 5

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    const/4 v3, -0x1

    move v1, v3

    .line 385
    .local v1, "newSelectedIndex":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    if-eqz v3, :cond_0

    .line 386
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 388
    :cond_0
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move-object v2, v3

    .line 391
    .local v2, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    .line 392
    :cond_2
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 393
    goto :goto_0
.end method

.method private selectAll()V
    .locals 3

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ListView;

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v2

    move-object v1, v2

    .line 705
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 707
    :goto_0
    return-void

    .line 706
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->selectAll()V

    .line 707
    goto :goto_0
.end method

.method private selectAllPageDown()V
    .locals 10

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v1, v6

    .line 628
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 652
    :goto_0
    return-void

    .line 630
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    move v2, v6

    .line 631
    .local v2, "leadIndex":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v6, :cond_1

    .line 632
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    move v6, v2

    :goto_1
    move v2, v6

    .line 633
    move-object v6, v0

    move v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 636
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v3, v6

    .line 639
    .local v3, "leadSelectedIndex":I
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 641
    .local v4, "adjust":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v5, v6

    .line 642
    .local v5, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v6, v5

    if-nez v6, :cond_4

    goto :goto_0

    .line 632
    .end local v3    # "leadSelectedIndex":I
    .end local v4    # "adjust":I
    .end local v5    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v6

    goto :goto_1

    .line 639
    .restart local v3    # "leadSelectedIndex":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    .line 644
    .restart local v4    # "adjust":I
    .restart local v5    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    :cond_4
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionChanging:Z

    .line 645
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v6, v7, :cond_5

    .line 646
    move-object v6, v5

    move v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    .line 651
    :goto_3
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionChanging:Z

    .line 652
    goto :goto_0

    .line 648
    :cond_5
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 649
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
    .line 599
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v1, v6

    .line 600
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 624
    :goto_0
    return-void

    .line 602
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v6

    move v2, v6

    .line 603
    .local v2, "leadIndex":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v6, :cond_1

    .line 604
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    move v6, v2

    :goto_1
    move v2, v6

    .line 605
    move-object v6, v0

    move v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 608
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v3, v6

    .line 611
    .local v3, "leadSelectedIndex":I
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 613
    .local v4, "adjust":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v5, v6

    .line 614
    .local v5, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v6, v5

    if-nez v6, :cond_4

    goto :goto_0

    .line 604
    .end local v3    # "leadSelectedIndex":I
    .end local v4    # "adjust":I
    .end local v5    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v6

    goto :goto_1

    .line 611
    .restart local v3    # "leadSelectedIndex":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    .line 616
    .restart local v4    # "adjust":I
    .restart local v5    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    :cond_4
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionChanging:Z

    .line 617
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v6, v7, :cond_5

    .line 618
    move-object v6, v5

    move v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    .line 623
    :goto_3
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectionChanging:Z

    .line 624
    goto :goto_0

    .line 620
    :cond_5
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 621
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
    .line 655
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 656
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 678
    :goto_0
    return-void

    .line 658
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 659
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 661
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    move v3, v4

    .line 663
    .local v3, "leadIndex":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v4, :cond_2

    .line 664
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->hasAnchor()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v4

    :goto_1
    move v3, v4

    .line 667
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 668
    move-object v4, v1

    move v5, v3

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 671
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 673
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v4, :cond_3

    .line 674
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 677
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 678
    :cond_4
    goto :goto_0

    .line 664
    :cond_5
    move v4, v3

    goto :goto_1
.end method

.method private selectAllToFocus(Z)V
    .locals 12

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move v1, p1

    .local v1, "setAnchorToFocusIndex":Z
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/ListView;

    move-object v2, v9

    .line 712
    .local v2, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getEditingIndex()I

    move-result v9

    if-ltz v9, :cond_0

    .line 728
    :goto_0
    return-void

    .line 714
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v9

    move-object v3, v9

    .line 715
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v9, v3

    if-nez v9, :cond_1

    goto :goto_0

    .line 717
    :cond_1
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v9

    move-object v4, v9

    .line 718
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v9, v4

    if-nez v9, :cond_2

    goto :goto_0

    .line 720
    :cond_2
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v9

    move v5, v9

    .line 721
    .local v5, "focusIndex":I
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v9

    move v6, v9

    .line 723
    .local v6, "anchor":I
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 724
    move v9, v6

    move v7, v9

    .line 725
    .local v7, "startPos":I
    move v9, v6

    move v10, v5

    if-le v9, v10, :cond_3

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_1
    move v8, v9

    .line 726
    .local v8, "endPos":I
    move-object v9, v3

    move v10, v7

    move v11, v8

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 727
    move-object v9, v0

    move v10, v1

    if-eqz v10, :cond_4

    move v10, v5

    :goto_2
    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 728
    goto :goto_0

    .line 725
    .end local v8    # "endPos":I
    :cond_3
    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 727
    .restart local v8    # "endPos":I
    :cond_4
    move v10, v6

    goto :goto_2
.end method

.method private selectAllToLastRow()V
    .locals 7

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 682
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 701
    :goto_0
    return-void

    .line 684
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 685
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 687
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    move v3, v4

    .line 689
    .local v3, "leadIndex":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v4, :cond_2

    .line 690
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->hasAnchor()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getAnchor()I

    move-result v4

    :goto_1
    move v3, v4

    .line 693
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 694
    move-object v4, v1

    move v5, v3

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getRowCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    .line 696
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    if-eqz v4, :cond_3

    .line 697
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 700
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 701
    :cond_4
    goto :goto_0

    .line 690
    :cond_5
    move v4, v3

    goto :goto_1
.end method

.method private selectFirstRow()V
    .locals 3

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getRowCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 588
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListView;

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 589
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 591
    :cond_0
    return-void
.end method

.method private selectLastRow()V
    .locals 4

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListView;

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getRowCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 595
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 596
    :cond_0
    return-void
.end method

.method private selectNextRow()V
    .locals 8

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ListView;

    move-object v1, v5

    .line 570
    .local v1, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v2, v5

    .line 571
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    .line 584
    :goto_0
    return-void

    .line 573
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v5

    move v3, v5

    .line 574
    .local v3, "focusIndex":I
    move v5, v3

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getRowCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    .line 575
    goto :goto_0

    .line 578
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v4, v5

    .line 579
    .local v4, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v5, v4

    if-nez v5, :cond_2

    goto :goto_0

    .line 581
    :cond_2
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 582
    move-object v5, v4

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 583
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onSelectNextRow:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onSelectNextRow:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 584
    :cond_3
    goto :goto_0
.end method

.method private selectPreviousRow()V
    .locals 6

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v3

    move-object v1, v3

    .line 556
    .local v1, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 566
    :goto_0
    return-void

    .line 558
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v3

    move v2, v3

    .line 559
    .local v2, "focusIndex":I
    move v3, v2

    if-gtz v3, :cond_1

    .line 560
    goto :goto_0

    .line 563
    :cond_1
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 564
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    .line 565
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onSelectPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 566
    goto :goto_0
.end method

.method private setAnchor(I)V
    .locals 5

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move v1, p1

    .local v1, "anchor":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    move v3, v1

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 352
    return-void

    .line 351
    :cond_0
    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method private toggleFocusOwnerSelection()V
    .locals 6

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 747
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 762
    :goto_0
    return-void

    .line 749
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ListView;

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 750
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 752
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    move v3, v4

    .line 754
    .local v3, "focusedIndex":I
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MultipleSelectionModel;->isSelected(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection(I)V

    .line 756
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 761
    :goto_1
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 762
    goto :goto_0

    .line 758
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
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v2, "SelectPreviousRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectPreviousRow()V

    .line 207
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v2, "SelectNextRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectNextRow()V

    goto :goto_0

    .line 175
    :cond_1
    const-string v2, "SelectFirstRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectFirstRow()V

    goto :goto_0

    .line 176
    :cond_2
    const-string v2, "SelectLastRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectLastRow()V

    goto :goto_0

    .line 177
    :cond_3
    const-string v2, "SelectAllToFirstRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectAllToFirstRow()V

    goto :goto_0

    .line 178
    :cond_4
    const-string v2, "SelectAllToLastRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectAllToLastRow()V

    goto :goto_0

    .line 179
    :cond_5
    const-string v2, "SelectAllPageUp"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectAllPageUp()V

    goto :goto_0

    .line 180
    :cond_6
    const-string v2, "SelectAllPageDown"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectAllPageDown()V

    goto :goto_0

    .line 181
    :cond_7
    const-string v2, "AlsoSelectNextRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->alsoSelectNextRow()V

    goto :goto_0

    .line 182
    :cond_8
    const-string v2, "AlsoSelectPreviousRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->alsoSelectPreviousRow()V

    goto :goto_0

    .line 183
    :cond_9
    const-string v2, "ClearSelection"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->clearSelection()V

    goto/16 :goto_0

    .line 184
    :cond_a
    const-string v2, "SelectAll"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectAll()V

    goto/16 :goto_0

    .line 185
    :cond_b
    const-string v2, "ScrollUp"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->scrollPageUp()V

    goto/16 :goto_0

    .line 186
    :cond_c
    const-string v2, "ScrollDown"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->scrollPageDown()V

    goto/16 :goto_0

    .line 187
    :cond_d
    const-string v2, "FocusPreviousRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->focusPreviousRow()V

    goto/16 :goto_0

    .line 188
    :cond_e
    const-string v2, "FocusNextRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->focusNextRow()V

    goto/16 :goto_0

    .line 189
    :cond_f
    const-string v2, "FocusPageUp"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->focusPageUp()V

    goto/16 :goto_0

    .line 190
    :cond_10
    const-string v2, "FocusPageDown"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->focusPageDown()V

    goto/16 :goto_0

    .line 191
    :cond_11
    const-string v2, "Activate"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->activate()V

    goto/16 :goto_0

    .line 192
    :cond_12
    const-string v2, "CancelEdit"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->cancelEdit()V

    goto/16 :goto_0

    .line 193
    :cond_13
    const-string v2, "FocusFirstRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->focusFirstRow()V

    goto/16 :goto_0

    .line 194
    :cond_14
    const-string v2, "FocusLastRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->focusLastRow()V

    goto/16 :goto_0

    .line 195
    :cond_15
    const-string v2, "toggleFocusOwnerSelection"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->toggleFocusOwnerSelection()V

    goto/16 :goto_0

    .line 197
    :cond_16
    const-string v2, "SelectAllToFocus"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectAllToFocus(Z)V

    goto/16 :goto_0

    .line 198
    :cond_17
    const-string v2, "SelectAllToFocusAndSetAnchor"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->selectAllToFocus(Z)V

    goto/16 :goto_0

    .line 200
    :cond_18
    const-string v2, "DiscontinuousSelectNextRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->discontinuousSelectNextRow()V

    goto/16 :goto_0

    .line 201
    :cond_19
    const-string v2, "DiscontinuousSelectPreviousRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->discontinuousSelectPreviousRow()V

    goto/16 :goto_0

    .line 202
    :cond_1a
    const-string v2, "DiscontinuousSelectPageUp"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->discontinuousSelectPageUp()V

    goto/16 :goto_0

    .line 203
    :cond_1b
    const-string v2, "DiscontinuousSelectPageDown"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->discontinuousSelectPageDown()V

    goto/16 :goto_0

    .line 204
    :cond_1c
    const-string v2, "DiscontinuousSelectAllToLastRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->discontinuousSelectAllToLastRow()V

    goto/16 :goto_0

    .line 205
    :cond_1d
    const-string v2, "DiscontinuousSelectAllToFirstRow"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->discontinuousSelectAllToFirstRow()V

    goto/16 :goto_0

    .line 206
    :cond_1e
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected callActionForEvent(Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
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
    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShiftDown:Z

    .line 214
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
    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->isShortcutDown:Z

    .line 216
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callActionForEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 217
    return-void

    .line 213
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 214
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->removeAnchor(Ljavafx/scene/control/Control;)V

    .line 346
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusListBehavior;->dispose()V

    .line 347
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->dispose()V

    .line 348
    return-void
.end method

.method protected matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 142
    .local v2, "action":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 143
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_5

    .line 144
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_1

    .line 145
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    const-string v3, "AlsoSelectNextRow"

    move-object v2, v3

    .line 169
    :cond_1
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    return-object v0

    .line 148
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isShortcutDown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    const-string v3, "FocusNextRow"

    move-object v2, v3

    goto :goto_0

    .line 151
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v3, v4, :cond_4

    const-string v3, "SelectNextRow"

    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_4
    const-string v3, "TraverseRight"

    goto :goto_1

    .line 155
    :cond_5
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    if-eq v3, v4, :cond_6

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_1

    .line 156
    :cond_6
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_1

    .line 157
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 158
    const-string v3, "AlsoSelectPreviousRow"

    move-object v2, v3

    goto :goto_0

    .line 160
    :cond_7
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isShortcutDown()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 161
    const-string v3, "FocusPreviousRow"

    move-object v2, v3

    goto :goto_0

    .line 163
    :cond_8
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v3, v4, :cond_9

    const-string v3, "SelectPreviousRow"

    :goto_2
    move-object v2, v3

    goto :goto_0

    :cond_9
    const-string v3, "TraverseLeft"

    goto :goto_2
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 365
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 366
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndex()I

    move-result v3

    move v2, v3

    .line 367
    .local v2, "index":I
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->setAnchor(I)V

    .line 370
    .end local v2    # "index":I
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->isFocusTraversable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->requestFocus()V

    .line 373
    :cond_1
    return-void
.end method

.method public setOnFocusNextRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusNextRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnFocusPreviousRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onFocusPreviousRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnMoveToFirstCell(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToFirstCell:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnMoveToLastCell(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onMoveToLastCell:Ljava/lang/Runnable;

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
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageDown:Ljavafx/util/Callback;

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
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onScrollPageUp:Ljavafx/util/Callback;

    return-void
.end method

.method public setOnSelectNextRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onSelectNextRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnSelectPreviousRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/ListViewBehavior;->onSelectPreviousRow:Ljava/lang/Runnable;

    return-void
.end method
