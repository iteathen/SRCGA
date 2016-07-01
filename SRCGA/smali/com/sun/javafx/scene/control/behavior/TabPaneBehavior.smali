.class public Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "TabPaneBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/TabPane;",
        ">;"
    }
.end annotation


# static fields
.field private static final CTRL_PAGE_DOWN:Ljava/lang/String; = "Ctrl_Page_Down"

.field private static final CTRL_PAGE_UP:Ljava/lang/String; = "Ctrl_Page_Up"

.field private static final CTRL_SHIFT_TAB:Ljava/lang/String; = "Ctrl_Shift_Tab"

.field private static final CTRL_TAB:Ljava/lang/String; = "Ctrl_Tab"

.field private static final END:Ljava/lang/String; = "End"

.field private static final HOME:Ljava/lang/String; = "Home"

.field protected static final TAB_PANE_BINDINGS:Ljava/util/List;
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
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    .line 52
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 53
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 54
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseLeft"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseRight"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 56
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "Home"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 57
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "End"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "Ctrl_Page_Up"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "Ctrl_Page_Down"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "Ctrl_Tab"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "Ctrl_Shift_Tab"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TabPane;)V
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v1, p1

    .local v1, "tabPane":Ljavafx/scene/control/TabPane;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->TAB_PANE_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 116
    return-void
.end method

.method private findValidTab(II)I
    .locals 11

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move v1, p1

    .local v1, "startIndex":I
    move v2, p2

    .local v2, "delta":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TabPane;

    move-object v3, v8

    .line 167
    .local v3, "tabPane":Ljavafx/scene/control/TabPane;
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v4, v8

    .line 168
    .local v4, "tabs":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/Tab;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    .line 170
    .local v5, "max":I
    move v8, v1

    move v6, v8

    .line 172
    .local v6, "index":I
    :cond_0
    move-object v8, v0

    move v9, v6

    move v10, v2

    add-int/2addr v9, v10

    move v10, v5

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->nextIndex(II)I

    move-result v8

    move v6, v8

    .line 173
    move-object v8, v4

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/Tab;

    move-object v7, v8

    .line 174
    .local v7, "tab":Ljavafx/scene/control/Tab;
    move-object v8, v7

    if-eqz v8, :cond_1

    move-object v8, v7

    invoke-virtual {v8}, Ljavafx/scene/control/Tab;->isDisable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 175
    move v8, v6

    move v0, v8

    .line 179
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    :goto_0
    return v0

    .line 177
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    :cond_1
    move v8, v6

    move v9, v1

    if-ne v8, v9, :cond_0

    .line 179
    const/4 v8, -0x1

    move v0, v8

    goto :goto_0
.end method

.method private moveSelection(I)V
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move v1, p1

    .local v1, "delta":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v3

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->moveSelection(II)V

    .line 153
    return-void
.end method

.method private moveSelection(II)V
    .locals 9

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move v1, p1

    .local v1, "startIndex":I
    move v2, p2

    .local v2, "delta":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    move-object v3, v6

    .line 157
    .local v3, "tabPane":Ljavafx/scene/control/TabPane;
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->findValidTab(II)I

    move-result v6

    move v4, v6

    .line 158
    .local v4, "tabIndex":I
    move v6, v4

    const/4 v7, -0x1

    if-le v6, v7, :cond_0

    .line 159
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v6

    move-object v5, v6

    .line 160
    .local v5, "selectionModel":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<Ljavafx/scene/control/Tab;>;"
    move-object v6, v5

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/SelectionModel;->select(I)V

    .line 162
    .end local v5    # "selectionModel":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<Ljavafx/scene/control/Tab;>;"
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->requestFocus()V

    .line 163
    return-void
.end method

.method private nextIndex(II)I
    .locals 7

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move v1, p1

    .local v1, "value":I
    move v2, p2

    .local v2, "max":I
    const/4 v5, 0x0

    move v3, v5

    .line 184
    .local v3, "min":I
    move v5, v1

    move v6, v2

    rem-int/2addr v5, v6

    move v4, v5

    .line 185
    .local v4, "r":I
    move v5, v4

    if-lez v5, :cond_1

    move v5, v2

    if-gez v5, :cond_1

    .line 186
    move v5, v4

    move v6, v2

    add-int/2addr v5, v6

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    move v4, v5

    .line 190
    :cond_0
    :goto_0
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    return v0

    .line 187
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    :cond_1
    move v5, v4

    if-gez v5, :cond_0

    move v5, v2

    if-lez v5, :cond_0

    .line 188
    move v5, v4

    move v6, v2

    add-int/2addr v5, v6

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 67
    .local v2, "rtl":Z
    const-string v3, "TraverseLeft"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "TraverseRight"

    move-object v4, v1

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "TraverseUp"

    move-object v4, v1

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->selectPreviousTab()V

    .line 94
    :cond_3
    :goto_1
    return-void

    .line 65
    .end local v2    # "rtl":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 73
    .restart local v2    # "rtl":Z
    :cond_5
    const-string v3, "TraverseRight"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    if-eqz v3, :cond_8

    :cond_6
    const-string v3, "TraverseLeft"

    move-object v4, v1

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    if-nez v3, :cond_8

    :cond_7
    const-string v3, "TraverseDown"

    move-object v4, v1

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 76
    :cond_8
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->selectNextTab()V

    goto :goto_1

    .line 79
    :cond_9
    const-string v3, "Ctrl_Tab"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "Ctrl_Page_Down"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 80
    :cond_a
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->selectNextTab()V

    goto :goto_1

    .line 81
    :cond_b
    const-string v3, "Ctrl_Shift_Tab"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "Ctrl_Page_Up"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 82
    :cond_c
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->selectPreviousTab()V

    goto :goto_1

    .line 83
    :cond_d
    const-string v3, "Home"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 84
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->moveSelection(II)V

    goto :goto_1

    .line 87
    :cond_e
    const-string v3, "End"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 88
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TabPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->moveSelection(II)V

    goto/16 :goto_1

    .line 92
    :cond_f
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public canCloseTab(Ljavafx/scene/control/Tab;)Z
    .locals 9

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    new-instance v3, Ljavafx/event/Event;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    sget-object v7, Ljavafx/scene/control/Tab;->TAB_CLOSE_REQUEST_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5, v6, v7}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    move-object v2, v3

    .line 124
    .local v2, "event":Ljavafx/event/Event;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 125
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/event/Event;->isConsumed()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public closeTab(Ljavafx/scene/control/Tab;)V
    .locals 9

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TabPane;

    move-object v2, v4

    .line 131
    .local v2, "tabPane":Ljavafx/scene/control/TabPane;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 132
    .local v3, "index":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 133
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 135
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getOnClosed()Ljavafx/event/EventHandler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 136
    move-object v4, v1

    new-instance v5, Ljavafx/event/Event;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    sget-object v7, Ljavafx/scene/control/Tab;->CLOSED_EVENT:Ljavafx/event/EventType;

    invoke-direct {v6, v7}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 138
    :cond_1
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 106
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    move-object v2, v3

    .line 107
    .local v2, "tp":Ljavafx/scene/control/TabPane;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->requestFocus()V

    .line 108
    return-void
.end method

.method public selectNextTab()V
    .locals 3

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->moveSelection(I)V

    .line 144
    return-void
.end method

.method public selectPreviousTab()V
    .locals 3

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v1, v0

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->moveSelection(I)V

    .line 149
    return-void
.end method

.method public selectTab(Ljavafx/scene/control/Tab;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TabPane;

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
