.class public Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;
.super Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;
.source "ComboBoxListViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final COMBO_BOX_BINDINGS:Ljava/util/List;
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
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->COMBO_BOX_BINDINGS:Ljava/util/List;

    .line 59
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->COMBO_BOX_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    const-string v5, "selectPrevious"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->COMBO_BOX_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "selectNext"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->COMBO_BOX_BINDINGS:Ljava/util/List;

    sget-object v1, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->COMBO_BOX_BASE_BINDINGS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 62
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ComboBox;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "comboBox":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->COMBO_BOX_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;-><init>(Ljavafx/scene/control/ComboBoxBase;Ljava/util/List;)V

    .line 49
    return-void
.end method

.method private getComboBox()Ljavafx/scene/control/ComboBox;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ComboBox;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior<TT;>;"
    return-object v0
.end method

.method private selectNext()V
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->getComboBox()Ljavafx/scene/control/ComboBox;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v2

    move-object v1, v2

    .line 86
    .local v1, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/SelectionModel;->selectNext()V

    .line 88
    goto :goto_0
.end method

.method private selectPrevious()V
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->getComboBox()Ljavafx/scene/control/ComboBox;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v2

    move-object v1, v2

    .line 80
    .local v1, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/SelectionModel;->selectPrevious()V

    .line 82
    goto :goto_0
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;, "Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v2, "selectPrevious"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->selectPrevious()V

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v2, "selectNext"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/behavior/ComboBoxListViewBehavior;->selectNext()V

    goto :goto_0

    .line 70
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method
