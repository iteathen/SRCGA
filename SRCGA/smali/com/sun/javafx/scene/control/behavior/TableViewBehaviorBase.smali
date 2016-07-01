.class public abstract Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "TableViewBehaviorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/Control;",
        "T:",
        "Ljava/lang/Object;",
        "TC:",
        "Ljavafx/scene/control/TableColumnBase",
        "<TT;*>;>",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<TC;>;"
    }
.end annotation


# static fields
.field protected static final TABLE_VIEW_BINDINGS:Ljava/util/List;
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
.field protected isShiftDown:Z

.field protected isShortcutDown:Z

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

.field private onSelectLeftCell:Ljava/lang/Runnable;

.field private onSelectNextRow:Ljava/lang/Runnable;

.field private onSelectPreviousRow:Ljava/lang/Runnable;

.field private onSelectRightCell:Ljava/lang/Runnable;

.field protected final selectedCellsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TablePositionBase;",
            ">;"
        }
    .end annotation
.end field

.field protected selectionChanging:Z

.field private final selectionHistory:Lcom/sun/javafx/scene/control/SizeLimitedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/SizeLimitedList",
            "<",
            "Ljavafx/scene/control/TablePositionBase;",
            ">;"
        }
    .end annotation
.end field

.field private selectionPathDeviated:Z

.field protected final weakSelectedCellsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TablePositionBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    .line 69
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseNext"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraversePrevious"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectFirstRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectLastRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectLeftCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectLeftCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectRightCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectRightCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectPreviousRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseLeft"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseLeft"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 90
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "SelectNextRow"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 98
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 99
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 100
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 102
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectPrevious"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectPrevious"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectNext"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectNext"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 107
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 108
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 114
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectLeftCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectLeftCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectRightCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "AlsoSelectRightCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 120
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 121
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusRightCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 122
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusRightCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusLeftCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 124
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "FocusLeftCell"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 126
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 127
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 128
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 129
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 131
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 132
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 133
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectPreviousColumn"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "DiscontinuousSelectNextColumn"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shortcut()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 135
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 136
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 137
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 138
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 140
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    .line 146
    :goto_0
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    const-string v4, "Activate"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    const-string v4, "Activate"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->F2:Ljavafx/scene/input/KeyCode;

    const-string v4, "Activate"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 151
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    const-string v4, "CancelEdit"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 152
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

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

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/scene/control/Control;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;, "TC;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Control;Ljava/util/List;)V
    .locals 8
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
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;, "TC;"
    move-object v2, p2

    .local v2, "bindings":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/behavior/KeyBinding;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    if-nez v5, :cond_0

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->TABLE_VIEW_BINDINGS:Ljava/util/List;

    :goto_0
    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 219
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShortcutDown:Z

    .line 220
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    .line 221
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionPathDeviated:Z

    .line 222
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionChanging:Z

    .line 224
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/SizeLimitedList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/SizeLimitedList;-><init>(I)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionHistory:Lcom/sun/javafx/scene/control/SizeLimitedList;

    .line 226
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectedCellsListener:Ljavafx/collections/ListChangeListener;

    .line 273
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectedCellsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->weakSelectedCellsListener:Ljavafx/collections/WeakListChangeListener;

    .line 290
    return-void

    .line 289
    :cond_0
    move-object v5, v2

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->lambda$new$219(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->lambda$alsoSelectPrevious$220()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->lambda$alsoSelectNext$221()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->lambda$alsoSelectLeftCell$222()V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->lambda$alsoSelectRightCell$223()V

    return-void
.end method

.method private synthetic lambda$alsoSelectLeftCell$222()V
    .locals 2

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableSelectionModel;->selectLeftCell()V

    .line 684
    return-void
.end method

.method private synthetic lambda$alsoSelectNext$221()V
    .locals 2

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableSelectionModel;->selectBelowCell()V

    .line 670
    return-void
.end method

.method private synthetic lambda$alsoSelectPrevious$220()V
    .locals 2

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableSelectionModel;->selectAboveCell()V

    .line 644
    return-void
.end method

.method private synthetic lambda$alsoSelectRightCell$223()V
    .locals 2

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableSelectionModel;->selectRightCell()V

    .line 692
    return-void
.end method

.method private synthetic lambda$new$219(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 228
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 229
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->hasDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 230
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/javafx/scene/control/behavior/TreeTableCellBehavior;->removeAnchor(Ljavafx/scene/control/Control;)V

    .line 234
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v9

    if-nez v9, :cond_1

    .line 235
    goto :goto_0

    .line 238
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v9

    move-object v2, v9

    .line 239
    .local v2, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v9, v2

    if-nez v9, :cond_2

    .line 271
    .end local v2    # "sm":Ljavafx/scene/control/TableSelectionModel;
    :goto_1
    return-void

    .line 241
    .restart local v2    # "sm":Ljavafx/scene/control/TableSelectionModel;
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v9

    move-object v3, v9

    .line 242
    .local v3, "anchor":Ljavafx/scene/control/TablePositionBase;
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v9

    move v4, v9

    .line 244
    .local v4, "cellSelectionEnabled":Z
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v9

    move v5, v9

    .line 245
    .local v5, "addedSize":I
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v9

    move-object v6, v9

    .line 247
    .local v6, "addedSubList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePositionBase;>;"
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_2
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TablePositionBase;

    move-object v8, v9

    .line 248
    .local v8, "tpb":Ljavafx/scene/control/TablePositionBase;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionHistory:Lcom/sun/javafx/scene/control/SizeLimitedList;

    move-object v10, v8

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/SizeLimitedList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 249
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionHistory:Lcom/sun/javafx/scene/control/SizeLimitedList;

    move-object v10, v8

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/SizeLimitedList;->add(Ljava/lang/Object;)V

    .line 251
    :cond_3
    goto :goto_2

    .line 254
    .end local v8    # "tpb":Ljavafx/scene/control/TablePositionBase;
    :cond_4
    move v9, v5

    if-lez v9, :cond_5

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->hasAnchor()Z

    move-result v9

    if-nez v9, :cond_5

    .line 255
    move-object v9, v6

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TablePositionBase;

    move-object v7, v9

    .line 256
    .local v7, "tp":Ljavafx/scene/control/TablePositionBase;
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(Ljavafx/scene/control/TablePositionBase;)V

    .line 259
    .end local v7    # "tp":Ljavafx/scene/control/TablePositionBase;
    :cond_5
    move-object v9, v3

    if-eqz v9, :cond_6

    move v9, v4

    if-eqz v9, :cond_6

    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionPathDeviated:Z

    if-nez v9, :cond_6

    .line 262
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_3
    move v9, v7

    move v10, v5

    if-ge v9, v10, :cond_6

    .line 263
    move-object v9, v6

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TablePositionBase;

    move-object v8, v9

    .line 264
    .local v8, "tp":Ljavafx/scene/control/TablePositionBase;
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v10

    if-eq v9, v10, :cond_7

    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 265
    move-object v9, v0

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setSelectionPathDeviated(Z)V

    .line 266
    .line 270
    .end local v7    # "i":I
    .end local v8    # "tp":Ljavafx/scene/control/TablePositionBase;
    :cond_6
    goto/16 :goto_0

    .line 262
    .restart local v7    # "i":I
    .restart local v8    # "tp":Ljavafx/scene/control/TablePositionBase;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 271
    .end local v2    # "sm":Ljavafx/scene/control/TableSelectionModel;
    .end local v3    # "anchor":Ljavafx/scene/control/TablePositionBase;
    .end local v4    # "cellSelectionEnabled":Z
    .end local v5    # "addedSize":I
    .end local v6    # "addedSubList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TablePositionBase;>;"
    .end local v7    # "i":I
    .end local v8    # "tp":Ljavafx/scene/control/TablePositionBase;
    :cond_8
    goto/16 :goto_1
.end method

.method private setSelectionPathDeviated(Z)V
    .locals 4

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move v1, p1

    .local v1, "selectionPathDeviated":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionPathDeviated:Z

    .line 471
    return-void
.end method


# virtual methods
.method protected activate()V
    .locals 7

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 923
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 936
    :goto_0
    return-void

    .line 925
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 926
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 928
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v4

    move-object v3, v4

    .line 929
    .local v3, "cell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 930
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(Ljavafx/scene/control/TablePositionBase;)V

    .line 933
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v4

    if-ltz v4, :cond_2

    .line 934
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->editCell(ILjavafx/scene/control/TableColumnBase;)V

    .line 936
    :cond_2
    goto :goto_0
.end method

.method protected alsoSelectLeftCell()V
    .locals 4

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    const/4 v2, -0x1

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->updateCellHorizontalSelection(ILjava/lang/Runnable;)V

    .line 686
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectLeftCell:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 687
    return-void
.end method

.method protected alsoSelectNext()V
    .locals 6

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v3

    move-object v1, v3

    .line 657
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 679
    :goto_0
    return-void

    .line 659
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v3, v4, :cond_1

    .line 660
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectNextRow()V

    .line 661
    goto :goto_0

    .line 664
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v3

    move-object v2, v3

    .line 665
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    .line 667
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 668
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->updateCellVerticalSelection(ILjava/lang/Runnable;)V

    .line 678
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectNextRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 679
    goto :goto_0

    .line 672
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v3, :cond_4

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->hasAnchor()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 673
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->updateRowSelection(I)V

    goto :goto_1

    .line 675
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->selectNext()V

    goto :goto_1
.end method

.method protected alsoSelectPrevious()V
    .locals 6

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v3

    move-object v1, v3

    .line 631
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 653
    :goto_0
    return-void

    .line 633
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v3, v4, :cond_1

    .line 634
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectPreviousRow()V

    .line 635
    goto :goto_0

    .line 638
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v3

    move-object v2, v3

    .line 639
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    .line 641
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 642
    move-object v3, v0

    const/4 v4, -0x1

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->updateCellVerticalSelection(ILjava/lang/Runnable;)V

    .line 652
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 653
    goto :goto_0

    .line 646
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v3, :cond_4

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->hasAnchor()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 647
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->updateRowSelection(I)V

    goto :goto_1

    .line 649
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->selectPrevious()V

    goto :goto_1
.end method

.method protected alsoSelectRightCell()V
    .locals 4

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    const/4 v2, 0x1

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->updateCellHorizontalSelection(ILjava/lang/Runnable;)V

    .line 694
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectRightCell:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 695
    return-void
.end method

.method protected callAction(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 157
    .local v2, "rtl":Z
    const-string v3, "SelectPreviousRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectPreviousRow()V

    .line 199
    :goto_1
    return-void

    .line 155
    .end local v2    # "rtl":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 158
    .restart local v2    # "rtl":Z
    :cond_1
    const-string v3, "SelectNextRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectNextRow()V

    goto :goto_1

    .line 159
    :cond_2
    const-string v3, "SelectLeftCell"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectRightCell()V

    goto :goto_1

    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectLeftCell()V

    goto :goto_1

    .line 160
    :cond_4
    const-string v3, "SelectRightCell"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    if-eqz v3, :cond_5

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectLeftCell()V

    goto :goto_1

    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectRightCell()V

    goto :goto_1

    .line 161
    :cond_6
    const-string v3, "SelectFirstRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectFirstRow()V

    goto :goto_1

    .line 162
    :cond_7
    const-string v3, "SelectLastRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectLastRow()V

    goto :goto_1

    .line 163
    :cond_8
    const-string v3, "SelectAll"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectAll()V

    goto :goto_1

    .line 164
    :cond_9
    const-string v3, "SelectAllPageUp"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectAllPageUp()V

    goto :goto_1

    .line 165
    :cond_a
    const-string v3, "SelectAllPageDown"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectAllPageDown()V

    goto/16 :goto_1

    .line 166
    :cond_b
    const-string v3, "SelectAllToFirstRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectAllToFirstRow()V

    goto/16 :goto_1

    .line 167
    :cond_c
    const-string v3, "SelectAllToLastRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectAllToLastRow()V

    goto/16 :goto_1

    .line 168
    :cond_d
    const-string v3, "AlsoSelectNext"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->alsoSelectNext()V

    goto/16 :goto_1

    .line 169
    :cond_e
    const-string v3, "AlsoSelectPrevious"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->alsoSelectPrevious()V

    goto/16 :goto_1

    .line 170
    :cond_f
    const-string v3, "AlsoSelectLeftCell"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v2

    if-eqz v3, :cond_10

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->alsoSelectRightCell()V

    goto/16 :goto_1

    :cond_10
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->alsoSelectLeftCell()V

    goto/16 :goto_1

    .line 171
    :cond_11
    const-string v3, "AlsoSelectRightCell"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v2

    if-eqz v3, :cond_12

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->alsoSelectLeftCell()V

    goto/16 :goto_1

    :cond_12
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->alsoSelectRightCell()V

    goto/16 :goto_1

    .line 172
    :cond_13
    const-string v3, "ClearSelection"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->clearSelection()V

    goto/16 :goto_1

    .line 173
    :cond_14
    const-string v3, "ScrollUp"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->scrollUp()V

    goto/16 :goto_1

    .line 174
    :cond_15
    const-string v3, "ScrollDown"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->scrollDown()V

    goto/16 :goto_1

    .line 175
    :cond_16
    const-string v3, "FocusPreviousRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusPreviousRow()V

    goto/16 :goto_1

    .line 176
    :cond_17
    const-string v3, "FocusNextRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusNextRow()V

    goto/16 :goto_1

    .line 177
    :cond_18
    const-string v3, "FocusLeftCell"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v2

    if-eqz v3, :cond_19

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusRightCell()V

    goto/16 :goto_1

    :cond_19
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusLeftCell()V

    goto/16 :goto_1

    .line 178
    :cond_1a
    const-string v3, "FocusRightCell"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v2

    if-eqz v3, :cond_1b

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusLeftCell()V

    goto/16 :goto_1

    :cond_1b
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusRightCell()V

    goto/16 :goto_1

    .line 179
    :cond_1c
    const-string v3, "Activate"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->activate()V

    goto/16 :goto_1

    .line 180
    :cond_1d
    const-string v3, "CancelEdit"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->cancelEdit()V

    goto/16 :goto_1

    .line 181
    :cond_1e
    const-string v3, "FocusFirstRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusFirstRow()V

    goto/16 :goto_1

    .line 182
    :cond_1f
    const-string v3, "FocusLastRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusLastRow()V

    goto/16 :goto_1

    .line 183
    :cond_20
    const-string v3, "toggleFocusOwnerSelection"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->toggleFocusOwnerSelection()V

    goto/16 :goto_1

    .line 185
    :cond_21
    const-string v3, "SelectAllToFocus"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectAllToFocus(Z)V

    goto/16 :goto_1

    .line 186
    :cond_22
    const-string v3, "SelectAllToFocusAndSetAnchor"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectAllToFocus(Z)V

    goto/16 :goto_1

    .line 188
    :cond_23
    const-string v3, "FocusPageUp"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusPageUp()V

    goto/16 :goto_1

    .line 189
    :cond_24
    const-string v3, "FocusPageDown"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->focusPageDown()V

    goto/16 :goto_1

    .line 190
    :cond_25
    const-string v3, "DiscontinuousSelectNextRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectNextRow()V

    goto/16 :goto_1

    .line 191
    :cond_26
    const-string v3, "DiscontinuousSelectPreviousRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectPreviousRow()V

    goto/16 :goto_1

    .line 192
    :cond_27
    const-string v3, "DiscontinuousSelectNextColumn"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v3, v2

    if-eqz v3, :cond_28

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectPreviousColumn()V

    goto/16 :goto_1

    :cond_28
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectNextColumn()V

    goto/16 :goto_1

    .line 193
    :cond_29
    const-string v3, "DiscontinuousSelectPreviousColumn"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v3, v2

    if-eqz v3, :cond_2a

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectNextColumn()V

    goto/16 :goto_1

    :cond_2a
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectPreviousColumn()V

    goto/16 :goto_1

    .line 194
    :cond_2b
    const-string v3, "DiscontinuousSelectPageUp"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectPageUp()V

    goto/16 :goto_1

    .line 195
    :cond_2c
    const-string v3, "DiscontinuousSelectPageDown"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectPageDown()V

    goto/16 :goto_1

    .line 196
    :cond_2d
    const-string v3, "DiscontinuousSelectAllToLastRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectAllToLastRow()V

    goto/16 :goto_1

    .line 197
    :cond_2e
    const-string v3, "DiscontinuousSelectAllToFirstRow"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->discontinuousSelectAllToFirstRow()V

    goto/16 :goto_1

    .line 198
    :cond_2f
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected callActionForEvent(Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
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
    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    .line 206
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
    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShortcutDown:Z

    .line 208
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callActionForEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 209
    return-void

    .line 205
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 206
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected cancelEdit()V
    .locals 4

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->editCell(ILjavafx/scene/control/TableColumnBase;)V

    .line 919
    return-void
.end method

.method protected clearSelection()V
    .locals 3

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v2

    move-object v1, v2

    .line 605
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 608
    :goto_0
    return-void

    .line 607
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TableSelectionModel;->clearSelection()V

    .line 608
    goto :goto_0
.end method

.method protected clearSelectionOutsideRange(IILjavafx/scene/control/TableColumnBase;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "end":I
    move-object/from16 v3, p3

    .local v3, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TT;*>;"
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v10

    move-object v4, v10

    .line 612
    .local v4, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v10, v4

    if-nez v10, :cond_0

    .line 627
    :goto_0
    return-void

    .line 614
    :cond_0
    move v10, v1

    move v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v5, v10

    .line 615
    .local v5, "min":I
    move v10, v1

    move v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v6, v10

    .line 617
    .local v6, "max":I
    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/control/TableSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v10

    .line 619
    .local v7, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionChanging:Z

    .line 620
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_1
    move v10, v8

    move-object v11, v7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 621
    move-object v10, v7

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v9, v10

    .line 622
    .local v9, "index":I
    move v10, v9

    move v11, v5

    if-lt v10, v11, :cond_1

    move v10, v9

    move v11, v6

    if-le v10, v11, :cond_2

    .line 623
    :cond_1
    move-object v10, v4

    move v11, v9

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TableSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumnBase;)V

    .line 620
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 626
    .end local v9    # "index":I
    :cond_3
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionChanging:Z

    .line 627
    goto :goto_0
.end method

.method protected discontinuousSelectAllToFirstRow()V
    .locals 8

    .prologue
    .line 1303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v5

    move-object v1, v5

    .line 1304
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 1322
    :goto_0
    return-void

    .line 1306
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v5

    move-object v2, v5

    .line 1307
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 1309
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v5

    move v3, v5

    .line 1311
    .local v3, "index":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1312
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    .line 1313
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableFocusModel;->focus(I)V

    .line 1321
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1322
    :cond_2
    goto :goto_0

    .line 1315
    :cond_3
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_2
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_4

    .line 1316
    move-object v5, v1

    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 1315
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1318
    :cond_4
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_1
.end method

.method protected discontinuousSelectAllToLastRow()V
    .locals 8

    .prologue
    .line 1325
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v5

    move-object v1, v5

    .line 1326
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 1342
    :goto_0
    return-void

    .line 1328
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v5

    move-object v2, v5

    .line 1329
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 1331
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 1333
    .local v3, "index":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1334
    move-object v5, v1

    move v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getItemCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    .line 1341
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1342
    :cond_3
    goto :goto_0

    .line 1336
    :cond_4
    move v5, v3

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1337
    move-object v5, v1

    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 1336
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected discontinuousSelectNextColumn()V
    .locals 7

    .prologue
    .line 1262
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 1263
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 1266
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v4, v2

    if-nez v4, :cond_2

    goto :goto_0

    .line 1268
    :cond_2
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getColumn(Ljavafx/scene/control/TableColumnBase;I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    move-object v3, v4

    .line 1269
    .local v3, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 1270
    goto :goto_0
.end method

.method protected discontinuousSelectNextRow()V
    .locals 12

    .prologue
    .line 1216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v8

    move-object v1, v8

    .line 1217
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v8, v1

    if-nez v8, :cond_0

    .line 1248
    :goto_0
    return-void

    .line 1219
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v8

    sget-object v9, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    if-eq v8, v9, :cond_1

    .line 1220
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectNextRow()V

    .line 1221
    goto :goto_0

    .line 1224
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v8

    move-object v2, v8

    .line 1225
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v8, v2

    if-nez v8, :cond_2

    goto :goto_0

    .line 1227
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v8

    move v3, v8

    .line 1228
    .local v3, "focusIndex":I
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 1229
    .local v4, "newFocusIndex":I
    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_3

    goto :goto_0

    .line 1231
    :cond_3
    move v8, v3

    move v5, v8

    .line 1232
    .local v5, "startIndex":I
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v8

    :goto_1
    move-object v6, v8

    .line 1233
    .local v6, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v8, :cond_4

    .line 1234
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v8

    if-nez v8, :cond_7

    move v8, v3

    :goto_2
    move v5, v8

    .line 1237
    :cond_4
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1238
    move-object v8, v1

    move v9, v5

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    .line 1239
    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TableFocusModel;->focus(I)V

    .line 1247
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusNextRow:Ljava/lang/Runnable;

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusNextRow:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1248
    :cond_5
    goto :goto_0

    .line 1232
    .end local v6    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 1234
    .restart local v6    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_7
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v8

    goto :goto_2

    .line 1241
    :cond_8
    move v8, v5

    move v7, v8

    .local v7, "i":I
    :goto_4
    move v8, v7

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_9

    .line 1242
    move-object v8, v1

    move v9, v7

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 1241
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1244
    :cond_9
    move-object v8, v2

    move v9, v4

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_3
.end method

.method protected discontinuousSelectPageDown()V
    .locals 9

    .prologue
    .line 1288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v5

    move-object v1, v5

    .line 1289
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1291
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v5

    move-object v2, v5

    .line 1292
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 1294
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->hasAnchor()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    :goto_1
    move v3, v5

    .line 1295
    .local v3, "anchor":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    .line 1297
    .local v4, "leadSelectedIndex":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1298
    move-object v5, v1

    move v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    .line 1300
    :cond_2
    goto :goto_0

    .line 1294
    .end local v3    # "anchor":I
    .end local v4    # "leadSelectedIndex":I
    :cond_3
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v5

    goto :goto_1
.end method

.method protected discontinuousSelectPageUp()V
    .locals 9

    .prologue
    .line 1273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v5

    move-object v1, v5

    .line 1274
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1276
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v5

    move-object v2, v5

    .line 1277
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 1279
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->hasAnchor()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    :goto_1
    move v3, v5

    .line 1280
    .local v3, "anchor":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    .line 1282
    .local v4, "leadSelectedIndex":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1283
    move-object v5, v1

    move v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    .line 1285
    :cond_2
    goto :goto_0

    .line 1279
    .end local v3    # "anchor":I
    .end local v4    # "leadSelectedIndex":I
    :cond_3
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v5

    goto :goto_1
.end method

.method protected discontinuousSelectPreviousColumn()V
    .locals 7

    .prologue
    .line 1251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 1252
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 1255
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v4, v2

    if-nez v4, :cond_2

    goto :goto_0

    .line 1257
    :cond_2
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getColumn(Ljavafx/scene/control/TableColumnBase;I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    move-object v3, v4

    .line 1258
    .local v3, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 1259
    goto :goto_0
.end method

.method protected discontinuousSelectPreviousRow()V
    .locals 12

    .prologue
    .line 1181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v8

    move-object v1, v8

    .line 1182
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v8, v1

    if-nez v8, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1184
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v8

    sget-object v9, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    if-eq v8, v9, :cond_1

    .line 1185
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectPreviousRow()V

    .line 1186
    goto :goto_0

    .line 1189
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v8

    move-object v2, v8

    .line 1190
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v8, v2

    if-nez v8, :cond_2

    goto :goto_0

    .line 1192
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v8

    move v3, v8

    .line 1193
    .local v3, "focusIndex":I
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 1194
    .local v4, "newFocusIndex":I
    move v8, v4

    if-gez v8, :cond_3

    goto :goto_0

    .line 1196
    :cond_3
    move v8, v3

    move v5, v8

    .line 1197
    .local v5, "startIndex":I
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v8

    :goto_1
    move-object v6, v8

    .line 1198
    .local v6, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v8, :cond_4

    .line 1199
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v8

    if-nez v8, :cond_7

    move v8, v3

    :goto_2
    move v5, v8

    .line 1202
    :cond_4
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1203
    move-object v8, v1

    move v9, v4

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    .line 1204
    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TableFocusModel;->focus(I)V

    .line 1212
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusPreviousRow:Ljava/lang/Runnable;

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1213
    :cond_5
    goto :goto_0

    .line 1197
    .end local v6    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 1199
    .restart local v6    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_7
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v8

    goto :goto_2

    .line 1206
    :cond_8
    move v8, v4

    move v7, v8

    .local v7, "i":I
    :goto_4
    move v8, v7

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_9

    .line 1207
    move-object v8, v1

    move v9, v7

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 1206
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1209
    :cond_9
    move-object v8, v2

    move v9, v4

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_3
.end method

.method protected abstract editCell(ILjavafx/scene/control/TableColumnBase;)V
.end method

.method protected focusFirstRow()V
    .locals 6

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v3

    move-object v1, v3

    .line 505
    .local v1, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 511
    :goto_0
    return-void

    .line 507
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    move-object v2, v3

    .line 508
    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 510
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 511
    :cond_1
    goto :goto_0

    .line 507
    .end local v2    # "tc":Ljavafx/scene/control/TableColumnBase;
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    goto :goto_1
.end method

.method protected focusLastRow()V
    .locals 6

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v3

    move-object v1, v3

    .line 515
    .local v1, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 521
    :goto_0
    return-void

    .line 517
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    move-object v2, v3

    .line 518
    .local v2, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 520
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 521
    :cond_1
    goto :goto_0

    .line 517
    .end local v2    # "tc":Ljavafx/scene/control/TableColumnBase;
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    goto :goto_1
.end method

.method protected focusLeftCell()V
    .locals 4

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v3

    move-object v1, v3

    .line 565
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 572
    :goto_0
    return-void

    .line 567
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v3

    move-object v2, v3

    .line 568
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 570
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableFocusModel;->focusLeftCell()V

    .line 571
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusPreviousRow:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 572
    :cond_2
    goto :goto_0
.end method

.method protected focusNextRow()V
    .locals 6

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v3

    move-object v1, v3

    .line 545
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 561
    :goto_0
    return-void

    .line 547
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v3

    move-object v2, v3

    .line 548
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 551
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableFocusModel;->focusBelowCell()V

    .line 556
    :goto_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShortcutDown:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v3

    if-nez v3, :cond_3

    .line 557
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(ILjavafx/scene/control/TableColumnBase;)V

    .line 560
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusNextRow:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusNextRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 561
    :cond_4
    goto :goto_0

    .line 553
    :cond_5
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableFocusModel;->focusNext()V

    goto :goto_1
.end method

.method protected focusPageDown()V
    .locals 7

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v1, v4

    .line 597
    .local v1, "newFocusIndex":I
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 598
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    move-object v3, v4

    .line 600
    .local v3, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v2

    move v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 601
    goto :goto_0

    .line 599
    .end local v3    # "tc":Ljavafx/scene/control/TableColumnBase;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    goto :goto_1
.end method

.method protected focusPageUp()V
    .locals 7

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v1, v4

    .line 588
    .local v1, "newFocusIndex":I
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 589
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    move-object v3, v4

    .line 591
    .local v3, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v2

    move v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 592
    goto :goto_0

    .line 590
    .end local v3    # "tc":Ljavafx/scene/control/TableColumnBase;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    goto :goto_1
.end method

.method protected focusPreviousRow()V
    .locals 6

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v3

    move-object v1, v3

    .line 525
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 541
    :goto_0
    return-void

    .line 527
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v3

    move-object v2, v3

    .line 528
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 530
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 531
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableFocusModel;->focusAboveCell()V

    .line 536
    :goto_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShortcutDown:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v3

    if-nez v3, :cond_3

    .line 537
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(ILjavafx/scene/control/TableColumnBase;)V

    .line 540
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusPreviousRow:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 541
    :cond_4
    goto :goto_0

    .line 533
    :cond_5
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableFocusModel;->focusPrevious()V

    goto :goto_1
.end method

.method protected focusRightCell()V
    .locals 4

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v3

    move-object v1, v3

    .line 576
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 583
    :goto_0
    return-void

    .line 578
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v3

    move-object v2, v3

    .line 579
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 581
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableFocusModel;->focusRightCell()V

    .line 582
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusNextRow:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusNextRow:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 583
    :cond_2
    goto :goto_0
.end method

.method protected getAnchor()Ljavafx/scene/control/TablePositionBase;
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TablePositionBase;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    return-object v0
.end method

.method protected getColumn(I)Ljavafx/scene/control/TableColumnBase;
    .locals 4

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    return-object v0
.end method

.method protected getColumn(Ljavafx/scene/control/TableColumnBase;I)Ljavafx/scene/control/TableColumnBase;
    .locals 6

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "tc":Ljavafx/scene/control/TableColumnBase;
    move v2, p2

    .local v2, "delta":I
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I

    move-result v4

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    return-object v0
.end method

.method protected abstract getFocusModel()Ljavafx/scene/control/TableFocusModel;
.end method

.method protected abstract getFocusedCell()Ljavafx/scene/control/TablePositionBase;
.end method

.method protected abstract getItemCount()I
.end method

.method protected abstract getSelectedCells()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljavafx/scene/control/TablePositionBase;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getSelectionModel()Ljavafx/scene/control/TableSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableSelectionModel",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract getTablePosition(ILjavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/TablePositionBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;)",
            "Ljavafx/scene/control/TablePositionBase",
            "<TTC;>;"
        }
    .end annotation
.end method

.method protected abstract getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;
.end method

.method protected abstract getVisibleLeafColumns()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I
.end method

.method protected hasAnchor()Z
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->hasNonDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    return v0
.end method

.method protected isRTL()Z
    .locals 3

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v1

    sget-object v2, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 453
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->isFocusTraversable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->requestFocus()V

    .line 456
    :cond_0
    return-void
.end method

.method protected scrollDown()V
    .locals 7

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 490
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TablePositionBase;

    move-object v2, v4

    .line 494
    .local v2, "selectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    const/4 v4, -0x1

    move v3, v4

    .line 495
    .local v3, "newSelectedIndex":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageDown:Ljavafx/util/Callback;

    if-eqz v4, :cond_2

    .line 496
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    .line 498
    :cond_2
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_0

    .line 500
    :cond_3
    move-object v4, v1

    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V

    .line 501
    goto :goto_0
.end method

.method protected scrollUp()V
    .locals 7

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 475
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TablePositionBase;

    move-object v2, v4

    .line 479
    .local v2, "selectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    const/4 v4, -0x1

    move v3, v4

    .line 480
    .local v3, "newSelectedIndex":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageUp:Ljavafx/util/Callback;

    if-eqz v4, :cond_2

    .line 481
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    .line 483
    :cond_2
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_0

    .line 485
    :cond_3
    move-object v4, v1

    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V

    .line 486
    goto :goto_0
.end method

.method protected selectAll()V
    .locals 3

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v2

    move-object v1, v2

    .line 969
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 971
    :goto_0
    return-void

    .line 970
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TableSelectionModel;->selectAll()V

    .line 971
    goto :goto_0
.end method

.method protected selectAllPageDown()V
    .locals 12

    .prologue
    .line 1082
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v7

    move-object v1, v7

    .line 1083
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1085
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v7

    move-object v2, v7

    .line 1086
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v7, v2

    if-nez v7, :cond_1

    goto :goto_0

    .line 1088
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v7

    move v3, v7

    .line 1089
    .local v3, "leadIndex":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    :goto_1
    move-object v4, v7

    .line 1090
    .local v4, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v7, :cond_2

    .line 1091
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    if-nez v7, :cond_5

    move v7, v3

    :goto_2
    move v3, v7

    .line 1092
    move-object v7, v0

    move v8, v3

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(ILjavafx/scene/control/TableColumnBase;)V

    .line 1095
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageDown:Ljavafx/util/Callback;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v5, v7

    .line 1097
    .local v5, "leadSelectedIndex":I
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionChanging:Z

    .line 1098
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v7

    if-eqz v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v7

    sget-object v8, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v7, v8, :cond_7

    .line 1099
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1100
    move-object v7, v1

    move v8, v5

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 1115
    :goto_3
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionChanging:Z

    .line 1116
    goto :goto_0

    .line 1089
    .end local v4    # "col":Ljavafx/scene/control/TableColumnBase;
    .end local v5    # "leadSelectedIndex":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 1091
    .restart local v4    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_5
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    goto :goto_2

    .line 1102
    .restart local v5    # "leadSelectedIndex":I
    :cond_6
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableSelectionModel;->select(I)V

    goto :goto_3

    .line 1105
    :cond_7
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->clearSelection()V

    .line 1107
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1108
    move-object v7, v1

    move v8, v3

    move-object v9, v4

    move v10, v5

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/control/TableSelectionModel;->selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_3

    .line 1111
    :cond_8
    move v7, v3

    move v8, v5

    if-ge v7, v8, :cond_9

    const/4 v7, 0x1

    :goto_4
    move v6, v7

    .line 1112
    .local v6, "adjust":I
    move-object v7, v1

    move v8, v3

    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    goto :goto_3

    .line 1111
    .end local v6    # "adjust":I
    :cond_9
    const/4 v7, -0x1

    goto :goto_4
.end method

.method protected selectAllPageUp()V
    .locals 12

    .prologue
    .line 1046
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v7

    move-object v1, v7

    .line 1047
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1049
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v7

    move-object v2, v7

    .line 1050
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v7, v2

    if-nez v7, :cond_1

    goto :goto_0

    .line 1052
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v7

    move v3, v7

    .line 1053
    .local v3, "leadIndex":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    :goto_1
    move-object v4, v7

    .line 1054
    .local v4, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v7, :cond_2

    .line 1055
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    if-nez v7, :cond_5

    move v7, v3

    :goto_2
    move v3, v7

    .line 1056
    move-object v7, v0

    move v8, v3

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(ILjavafx/scene/control/TableColumnBase;)V

    .line 1059
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageUp:Ljavafx/util/Callback;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v5, v7

    .line 1061
    .local v5, "leadSelectedIndex":I
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionChanging:Z

    .line 1062
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v7

    if-eqz v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v7

    sget-object v8, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v7, v8, :cond_7

    .line 1063
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1064
    move-object v7, v1

    move v8, v5

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 1078
    :goto_3
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionChanging:Z

    .line 1079
    goto :goto_0

    .line 1053
    .end local v4    # "col":Ljavafx/scene/control/TableColumnBase;
    .end local v5    # "leadSelectedIndex":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 1055
    .restart local v4    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_5
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    goto :goto_2

    .line 1066
    .restart local v5    # "leadSelectedIndex":I
    :cond_6
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableSelectionModel;->select(I)V

    goto :goto_3

    .line 1069
    :cond_7
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->clearSelection()V

    .line 1070
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1071
    move-object v7, v1

    move v8, v3

    move-object v9, v4

    move v10, v5

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/control/TableSelectionModel;->selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_3

    .line 1074
    :cond_8
    move v7, v3

    move v8, v5

    if-ge v7, v8, :cond_9

    const/4 v7, 0x1

    :goto_4
    move v6, v7

    .line 1075
    .local v6, "adjust":I
    move-object v7, v1

    move v8, v3

    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    goto :goto_3

    .line 1074
    .end local v6    # "adjust":I
    :cond_9
    const/4 v7, -0x1

    goto :goto_4
.end method

.method protected selectAllToFirstRow()V
    .locals 12

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v7

    move-object v1, v7

    .line 975
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 1013
    :goto_0
    return-void

    .line 977
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v7

    move-object v2, v7

    .line 978
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v7, v2

    if-nez v7, :cond_1

    goto :goto_0

    .line 980
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v7

    sget-object v8, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    :goto_1
    move v3, v7

    .line 981
    .local v3, "isSingleSelection":Z
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    move-object v4, v7

    .line 982
    .local v4, "focusedCell":Ljavafx/scene/control/TablePositionBase;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    move-object v5, v7

    .line 983
    .local v5, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    move v6, v7

    .line 985
    .local v6, "leadIndex":I
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v7, :cond_2

    .line 986
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    if-nez v7, :cond_6

    move v7, v6

    :goto_2
    move v6, v7

    .line 989
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->clearSelection()V

    .line 990
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v7

    if-nez v7, :cond_8

    .line 993
    move v7, v3

    if-eqz v7, :cond_7

    .line 994
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableSelectionModel;->select(I)V

    .line 998
    :goto_3
    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/control/TableFocusModel;->focus(I)V

    .line 1008
    :goto_4
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v7, :cond_3

    .line 1009
    move-object v7, v0

    move v8, v6

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(ILjavafx/scene/control/TableColumnBase;)V

    .line 1012
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 1013
    :cond_4
    goto :goto_0

    .line 980
    .end local v3    # "isSingleSelection":Z
    .end local v4    # "focusedCell":Ljavafx/scene/control/TablePositionBase;
    .end local v5    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v6    # "leadIndex":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 986
    .restart local v3    # "isSingleSelection":Z
    .restart local v4    # "focusedCell":Ljavafx/scene/control/TablePositionBase;
    .restart local v5    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .restart local v6    # "leadIndex":I
    :cond_6
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    goto :goto_2

    .line 996
    :cond_7
    move-object v7, v1

    move v8, v6

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    goto :goto_3

    .line 1000
    :cond_8
    move v7, v3

    if-eqz v7, :cond_9

    .line 1001
    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 1005
    :goto_5
    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_4

    .line 1003
    :cond_9
    move-object v7, v1

    move v8, v6

    move-object v9, v5

    const/4 v10, -0x1

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/control/TableSelectionModel;->selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_5
.end method

.method protected selectAllToFocus(Z)V
    .locals 15

    .prologue
    .line 939
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move/from16 v1, p1

    .local v1, "setAnchorToFocusIndex":Z
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v10

    move-object v2, v10

    .line 940
    .local v2, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v10, v2

    if-nez v10, :cond_0

    .line 965
    :goto_0
    return-void

    .line 942
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v10

    move-object v3, v10

    .line 943
    .local v3, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v10, v3

    if-nez v10, :cond_1

    goto :goto_0

    .line 945
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v10

    move-object v4, v10

    .line 946
    .local v4, "focusedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v10

    move v5, v10

    .line 948
    .local v5, "focusRow":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v10

    move-object v6, v10

    .line 949
    .local v6, "anchor":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v10

    move v7, v10

    .line 951
    .local v7, "anchorRow":I
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/TableSelectionModel;->clearSelection()V

    .line 952
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 953
    move v10, v7

    move v8, v10

    .line 954
    .local v8, "startPos":I
    move v10, v7

    move v11, v5

    if-le v10, v11, :cond_2

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    :goto_1
    move v9, v10

    .line 955
    .local v9, "endPos":I
    move-object v10, v2

    move v11, v8

    move v12, v9

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    .line 956
    .line 964
    .end local v8    # "startPos":I
    .end local v9    # "endPos":I
    :goto_2
    move-object v10, v0

    move v11, v1

    if-eqz v11, :cond_4

    move-object v11, v4

    :goto_3
    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(Ljavafx/scene/control/TablePositionBase;)V

    .line 965
    goto :goto_0

    .line 954
    .restart local v8    # "startPos":I
    :cond_2
    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 960
    .end local v8    # "startPos":I
    :cond_3
    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v11}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v11

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v12

    move-object v13, v4

    .line 961
    invoke-virtual {v13}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v13

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v14

    .line 960
    invoke-virtual {v10, v11, v12, v13, v14}, Ljavafx/scene/control/TableSelectionModel;->selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_2

    .line 964
    :cond_4
    move-object v11, v6

    goto :goto_3
.end method

.method protected selectAllToLastRow()V
    .locals 12

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v7

    move-object v1, v7

    .line 1017
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 1043
    :goto_0
    return-void

    .line 1019
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v7

    move-object v2, v7

    .line 1020
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v7, v2

    if-nez v7, :cond_1

    goto :goto_0

    .line 1022
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getItemCount()I

    move-result v7

    move v3, v7

    .line 1023
    .local v3, "itemCount":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    move-object v4, v7

    .line 1024
    .local v4, "focusedCell":Ljavafx/scene/control/TablePositionBase;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v7

    move-object v5, v7

    .line 1025
    .local v5, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    move v6, v7

    .line 1027
    .local v6, "leadIndex":I
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v7, :cond_2

    .line 1028
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    if-nez v7, :cond_5

    move v7, v6

    :goto_1
    move v6, v7

    .line 1031
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->clearSelection()V

    .line 1032
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/TableSelectionModel;->isCellSelectionEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1033
    move-object v7, v1

    move v8, v6

    move v9, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    .line 1038
    :goto_2
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v7, :cond_3

    .line 1039
    move-object v7, v0

    move v8, v6

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(ILjavafx/scene/control/TableColumnBase;)V

    .line 1042
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 1043
    :cond_4
    goto :goto_0

    .line 1028
    :cond_5
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    goto :goto_1

    .line 1035
    :cond_6
    move-object v7, v1

    move v8, v6

    move-object v9, v5

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/control/TableSelectionModel;->selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_2
.end method

.method protected selectCell(II)V
    .locals 13

    .prologue
    .line 893
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move v1, p1

    .local v1, "rowDiff":I
    move v2, p2

    .local v2, "columnDiff":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v10

    move-object v3, v10

    .line 894
    .local v3, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v10, v3

    if-nez v10, :cond_0

    .line 915
    :goto_0
    return-void

    .line 896
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v10

    move-object v4, v10

    .line 897
    .local v4, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v10, v4

    if-nez v10, :cond_1

    goto :goto_0

    .line 899
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v10

    move-object v5, v10

    .line 900
    .local v5, "focusedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v10

    move v6, v10

    .line 901
    .local v6, "currentRow":I
    move-object v10, v0

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I

    move-result v10

    move v7, v10

    .line 903
    .local v7, "currentColumn":I
    move v10, v1

    if-gez v10, :cond_2

    move v10, v6

    if-gtz v10, :cond_2

    goto :goto_0

    .line 904
    :cond_2
    move v10, v1

    if-lez v10, :cond_3

    move v10, v6

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getItemCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_3

    goto :goto_0

    .line 905
    :cond_3
    move v10, v2

    if-gez v10, :cond_4

    move v10, v7

    if-gtz v10, :cond_4

    goto :goto_0

    .line 906
    :cond_4
    move v10, v2

    if-lez v10, :cond_5

    move v10, v7

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_5

    goto :goto_0

    .line 907
    :cond_5
    move v10, v2

    if-lez v10, :cond_6

    move v10, v7

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    goto :goto_0

    .line 909
    :cond_6
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v10

    move-object v8, v10

    .line 910
    .local v8, "tc":Ljavafx/scene/control/TableColumnBase;
    move-object v10, v0

    move-object v11, v8

    move v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getColumn(Ljavafx/scene/control/TableColumnBase;I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v10

    move-object v8, v10

    .line 912
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v10

    move v11, v1

    add-int/2addr v10, v11

    move v9, v10

    .line 913
    .local v9, "row":I
    move-object v10, v3

    move v11, v9

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/TableSelectionModel;->clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V

    .line 914
    move-object v10, v0

    move v11, v9

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(ILjavafx/scene/control/TableColumnBase;)V

    .line 915
    goto :goto_0
.end method

.method protected selectFirstRow()V
    .locals 7

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 852
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 859
    :goto_0
    return-void

    .line 854
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v2, v4

    .line 855
    .local v2, "selection":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TablePositionBase;>;"
    move-object v4, v2

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    move-object v3, v4

    .line 856
    .local v3, "selectedColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V

    .line 858
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToFirstCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToFirstCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 859
    :cond_1
    goto :goto_0

    .line 855
    .end local v3    # "selectedColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_2
    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TablePositionBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    goto :goto_1
.end method

.method protected selectLastRow()V
    .locals 7

    .prologue
    .line 862
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 863
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 870
    :goto_0
    return-void

    .line 865
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v2, v4

    .line 866
    .local v2, "selection":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TablePositionBase;>;"
    move-object v4, v2

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    move-object v3, v4

    .line 867
    .local v3, "selectedColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V

    .line 869
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToLastCell:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToLastCell:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 870
    :cond_1
    goto :goto_0

    .line 866
    .end local v3    # "selectedColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_2
    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TablePositionBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v4

    goto :goto_1
.end method

.method protected selectLeftCell()V
    .locals 4

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectCell(II)V

    .line 884
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectLeftCell:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectLeftCell:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 885
    :cond_0
    return-void
.end method

.method protected selectNextRow()V
    .locals 4

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectCell(II)V

    .line 879
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectNextRow:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectNextRow:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 880
    :cond_0
    return-void
.end method

.method protected selectPreviousRow()V
    .locals 4

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectCell(II)V

    .line 874
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectPreviousRow:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectPreviousRow:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 875
    :cond_0
    return-void
.end method

.method protected selectRightCell()V
    .locals 4

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectCell(II)V

    .line 889
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectRightCell:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectRightCell:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 890
    :cond_0
    return-void
.end method

.method protected setAnchor(ILjavafx/scene/control/TableColumnBase;)V
    .locals 7

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(Ljavafx/scene/control/TablePositionBase;)V

    .line 414
    return-void

    .line 413
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getTablePosition(ILjavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/TablePositionBase;

    move-result-object v4

    goto :goto_0
.end method

.method protected setAnchor(Ljavafx/scene/control/TablePositionBase;)V
    .locals 5

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "tp":Ljavafx/scene/control/TablePositionBase;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TableCellBehaviorBase;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 305
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setSelectionPathDeviated(Z)V

    .line 306
    return-void
.end method

.method public setOnFocusNextRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusNextRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnFocusPreviousRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onFocusPreviousRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnMoveToFirstCell(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToFirstCell:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnMoveToLastCell(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onMoveToLastCell:Ljava/lang/Runnable;

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
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageDown:Ljavafx/util/Callback;

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
    .line 417
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onScrollPageUp:Ljavafx/util/Callback;

    return-void
.end method

.method public setOnSelectLeftCell(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectLeftCell:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnSelectNextRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectNextRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnSelectPreviousRow(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectPreviousRow:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnSelectRightCell(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->onSelectRightCell:Ljava/lang/Runnable;

    return-void
.end method

.method protected toggleFocusOwnerSelection()V
    .locals 7

    .prologue
    .line 1119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 1120
    .local v1, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1122
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 1123
    .local v2, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 1125
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v4

    move-object v3, v4

    .line 1127
    .local v3, "focusedCell":Ljavafx/scene/control/TablePositionBase;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1128
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumnBase;)V

    .line 1129
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 1134
    :goto_1
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(ILjavafx/scene/control/TableColumnBase;)V

    .line 1135
    goto :goto_0

    .line 1131
    :cond_2
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_1
.end method

.method protected updateCellHorizontalSelection(ILjava/lang/Runnable;)V
    .locals 18

    .prologue
    .line 781
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move/from16 v1, p1

    .local v1, "delta":I
    move-object/from16 v2, p2

    .local v2, "defaultAction":Ljava/lang/Runnable;
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v14

    move-object v3, v14

    .line 782
    .local v3, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v14, v3

    if-eqz v14, :cond_0

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v14

    sget-object v15, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v14, v15, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v14

    move-object v4, v14

    .line 785
    .local v4, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v14, v4

    if-nez v14, :cond_2

    goto :goto_0

    .line 787
    :cond_2
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v14

    move-object v5, v14

    .line 788
    .local v5, "focusedCell":Ljavafx/scene/control/TablePositionBase;
    move-object v14, v5

    if-eqz v14, :cond_3

    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v14

    if-nez v14, :cond_4

    :cond_3
    goto :goto_0

    .line 790
    :cond_4
    const/4 v14, 0x0

    move v6, v14

    .line 791
    .local v6, "atEnd":Z
    move-object v14, v0

    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v15

    move/from16 v16, v1

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getColumn(Ljavafx/scene/control/TableColumnBase;I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v14

    move-object v7, v14

    .line 792
    .local v7, "adjacentColumn":Ljavafx/scene/control/TableColumnBase;
    move-object v14, v7

    if-nez v14, :cond_5

    .line 795
    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v14

    move-object v7, v14

    .line 796
    const/4 v14, 0x1

    move v6, v14

    .line 799
    :cond_5
    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v14

    move v8, v14

    .line 801
    .local v8, "focusedCellRow":I
    move-object v14, v0

    iget-boolean v14, v14, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v14, :cond_b

    move-object v14, v3

    move v15, v8

    move-object/from16 v16, v7

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 802
    move v14, v6

    if-eqz v14, :cond_6

    .line 803
    goto :goto_0

    .line 807
    :cond_6
    const/4 v14, 0x0

    move v9, v14

    .line 808
    .local v9, "backtracking":Z
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v14

    move-object v10, v14

    .line 809
    .local v10, "selectedCells":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TablePositionBase;>;"
    move-object v14, v10

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_7

    .line 810
    move-object v14, v10

    move-object v15, v10

    invoke-interface {v15}, Ljavafx/collections/ObservableList;->size()I

    move-result v15

    const/16 v16, 0x2

    add-int/lit8 v15, v15, -0x2

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/TablePositionBase;

    move-object v11, v14

    .line 811
    .local v11, "secondToLastSelectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v14

    move v15, v8

    if-ne v14, v15, :cond_8

    move-object v14, v11

    .line 812
    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x1

    :goto_1
    move v9, v14

    .line 817
    .end local v11    # "secondToLastSelectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    :cond_7
    move-object v14, v0

    iget-boolean v14, v14, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionPathDeviated:Z

    if-eqz v14, :cond_a

    move v14, v9

    if-eqz v14, :cond_9

    move-object v14, v5

    .line 818
    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v14

    .line 819
    :goto_2
    move-object v11, v14

    .line 821
    .local v11, "cellColumnToClear":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v14, v3

    move v15, v8

    move-object/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumnBase;)V

    .line 822
    move-object v14, v4

    move v15, v8

    move-object/from16 v16, v7

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 823
    .line 840
    .end local v9    # "backtracking":Z
    .end local v10    # "selectedCells":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TablePositionBase;>;"
    .end local v11    # "cellColumnToClear":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :goto_3
    goto/16 :goto_0

    .line 812
    .restart local v9    # "backtracking":Z
    .restart local v10    # "selectedCells":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TablePositionBase;>;"
    .local v11, "secondToLastSelectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    :cond_8
    const/4 v14, 0x0

    goto :goto_1

    .line 818
    .end local v11    # "secondToLastSelectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    :cond_9
    move-object v14, v7

    goto :goto_2

    :cond_a
    move-object v14, v5

    .line 819
    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v14

    goto :goto_2

    .line 823
    .end local v9    # "backtracking":Z
    .end local v10    # "selectedCells":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TablePositionBase;>;"
    :cond_b
    move-object v14, v0

    iget-boolean v14, v14, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v14, :cond_d

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v14

    if-eqz v14, :cond_d

    move-object v14, v0

    iget-boolean v14, v14, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionPathDeviated:Z

    if-nez v14, :cond_d

    .line 824
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v14

    move v9, v14

    .line 827
    .local v9, "anchorColumn":I
    move-object v14, v0

    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getVisibleLeafIndex(Ljavafx/scene/control/TableColumnBase;)I

    move-result v14

    move v15, v1

    add-int/2addr v14, v15

    move v10, v14

    .line 828
    .local v10, "newColumn":I
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->size()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v10, v14

    .line 830
    move v14, v9

    move v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v11, v14

    .line 831
    .local v11, "start":I
    move v14, v9

    move v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v12, v14

    .line 833
    .local v12, "end":I
    move v14, v11

    move v13, v14

    .local v13, "_col":I
    :goto_4
    move v14, v13

    move v15, v12

    if-gt v14, v15, :cond_c

    .line 834
    move-object v14, v3

    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v15

    move-object/from16 v16, v0

    move/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getColumn(I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 833
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 836
    :cond_c
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v15}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v15

    move-object/from16 v16, v0

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getColumn(I)Ljavafx/scene/control/TableColumnBase;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 837
    goto/16 :goto_3

    .line 838
    .end local v9    # "anchorColumn":I
    .end local v10    # "newColumn":I
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "_col":I
    :cond_d
    move-object v14, v2

    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_3
.end method

.method protected updateCellVerticalSelection(ILjava/lang/Runnable;)V
    .locals 15

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move/from16 v1, p1

    .local v1, "delta":I
    move-object/from16 v2, p2

    .local v2, "defaultAction":Ljava/lang/Runnable;
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v11

    move-object v3, v11

    .line 724
    .local v3, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v11, v3

    if-eqz v11, :cond_0

    move-object v11, v3

    invoke-virtual {v11}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v11

    sget-object v12, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v11, v12, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v11

    move-object v4, v11

    .line 727
    .local v4, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v11, v4

    if-nez v11, :cond_2

    goto :goto_0

    .line 729
    :cond_2
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v11

    move-object v5, v11

    .line 730
    .local v5, "focusedCell":Ljavafx/scene/control/TablePositionBase;
    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v11

    move v6, v11

    .line 732
    .local v6, "focusedCellRow":I
    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v11, :cond_7

    move-object v11, v3

    move v12, v6

    move v13, v1

    add-int/2addr v12, v13

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/TableSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 733
    move v11, v6

    move v12, v1

    add-int/2addr v11, v12

    move v7, v11

    .line 736
    .local v7, "newFocusOwner":I
    const/4 v11, 0x0

    move v8, v11

    .line 737
    .local v8, "backtracking":Z
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionHistory:Lcom/sun/javafx/scene/control/SizeLimitedList;

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/SizeLimitedList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_3

    .line 738
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionHistory:Lcom/sun/javafx/scene/control/SizeLimitedList;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sun/javafx/scene/control/SizeLimitedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/control/TablePositionBase;

    move-object v9, v11

    .line 739
    .local v9, "secondToLastSelectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move-object v11, v9

    invoke-virtual {v11}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v11

    move v12, v7

    if-ne v11, v12, :cond_4

    move-object v11, v9

    .line 740
    invoke-virtual {v11}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v11

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/control/TablePositionBase;->getColumn()I

    move-result v12

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    :goto_1
    move v8, v11

    .line 745
    .end local v9    # "secondToLastSelectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    :cond_3
    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionPathDeviated:Z

    if-eqz v11, :cond_6

    move v11, v8

    if-eqz v11, :cond_5

    move v11, v6

    :goto_2
    move v9, v11

    .line 749
    .local v9, "cellRowToClear":I
    move-object v11, v3

    move v12, v9

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/TableSelectionModel;->clearSelection(ILjavafx/scene/control/TableColumnBase;)V

    .line 750
    move-object v11, v4

    move v12, v7

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 751
    .line 778
    .end local v7    # "newFocusOwner":I
    .end local v8    # "backtracking":Z
    .end local v9    # "cellRowToClear":I
    :goto_3
    goto :goto_0

    .line 740
    .restart local v7    # "newFocusOwner":I
    .restart local v8    # "backtracking":Z
    .local v9, "secondToLastSelectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 745
    .end local v9    # "secondToLastSelectedCell":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    :cond_5
    move v11, v7

    goto :goto_2

    :cond_6
    move v11, v6

    goto :goto_2

    .line 751
    .end local v7    # "newFocusOwner":I
    .end local v8    # "backtracking":Z
    :cond_7
    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->isShiftDown:Z

    if-eqz v11, :cond_b

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v11

    if-eqz v11, :cond_b

    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->selectionPathDeviated:Z

    if-nez v11, :cond_b

    .line 752
    move-object v11, v4

    invoke-virtual {v11}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v11

    move v12, v1

    add-int/2addr v11, v12

    move v7, v11

    .line 755
    .local v7, "newRow":I
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getItemCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v12, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v7, v11

    .line 757
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v11

    move v12, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 758
    .local v8, "start":I
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v11

    move v12, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v9, v11

    .line 760
    .local v9, "end":I
    move-object v11, v3

    invoke-virtual {v11}, Ljavafx/scene/control/TableSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    .line 761
    move-object v11, v0

    move v12, v8

    move v13, v9

    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->clearSelectionOutsideRange(IILjavafx/scene/control/TableColumnBase;)V

    .line 764
    :cond_8
    move v11, v8

    move v10, v11

    .local v10, "_row":I
    :goto_4
    move v11, v10

    move v12, v9

    if-gt v11, v12, :cond_a

    .line 765
    move-object v11, v3

    move v12, v10

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/TableSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 766
    .line 764
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 768
    :cond_9
    move-object v11, v3

    move v12, v10

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    goto :goto_5

    .line 770
    :cond_a
    move-object v11, v4

    move v12, v7

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/TableFocusModel;->focus(ILjavafx/scene/control/TableColumnBase;)V

    .line 771
    goto/16 :goto_3

    .line 772
    .end local v7    # "newRow":I
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v10    # "_row":I
    :cond_b
    move-object v11, v4

    invoke-virtual {v11}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v11

    move v7, v11

    .line 773
    .local v7, "focusIndex":I
    move-object v11, v3

    move v12, v7

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/TableSelectionModel;->isSelected(ILjavafx/scene/control/TableColumnBase;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 774
    move-object v11, v3

    move v12, v7

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/TableSelectionModel;->select(ILjavafx/scene/control/TableColumnBase;)V

    .line 776
    :cond_c
    move-object v11, v2

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_3
.end method

.method protected updateRowSelection(I)V
    .locals 10

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase<TC;TT;TTC;>;"
    move v1, p1

    .local v1, "delta":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getSelectionModel()Ljavafx/scene/control/TableSelectionModel;

    move-result-object v6

    move-object v2, v6

    .line 699
    .local v2, "sm":Ljavafx/scene/control/TableSelectionModel;
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v6

    sget-object v7, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v6, v7, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusModel()Ljavafx/scene/control/TableFocusModel;

    move-result-object v6

    move-object v3, v6

    .line 702
    .local v3, "fm":Ljavafx/scene/control/TableFocusModel;
    move-object v6, v3

    if-nez v6, :cond_2

    goto :goto_0

    .line 704
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TableFocusModel;->getFocusedIndex()I

    move-result v6

    move v7, v1

    add-int/2addr v6, v7

    move v4, v6

    .line 705
    .local v4, "newRow":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getAnchor()Ljavafx/scene/control/TablePositionBase;

    move-result-object v6

    move-object v5, v6

    .line 707
    .local v5, "anchor":Ljavafx/scene/control/TablePositionBase;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->hasAnchor()Z

    move-result v6

    if-nez v6, :cond_3

    .line 708
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->getFocusedCell()Ljavafx/scene/control/TablePositionBase;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->setAnchor(Ljavafx/scene/control/TablePositionBase;)V

    .line 711
    :cond_3
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TableSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 712
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    move v8, v4

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/behavior/TableViewBehaviorBase;->clearSelectionOutsideRange(IILjavafx/scene/control/TableColumnBase;)V

    .line 715
    :cond_4
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v6

    move v7, v4

    if-le v6, v7, :cond_5

    .line 716
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    .line 720
    :goto_1
    goto :goto_0

    .line 718
    :cond_5
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/TablePositionBase;->getRow()I

    move-result v7

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/TableSelectionModel;->selectRange(II)V

    goto :goto_1
.end method
