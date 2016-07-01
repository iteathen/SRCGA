.class public Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;
.super Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;
.source "ToggleButtonBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/ToggleButton;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior",
        "<TC;>;"
    }
.end annotation


# static fields
.field protected static final TOGGLE_BUTTON_BINDINGS:Ljava/util/List;
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
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->TOGGLE_BUTTON_BINDINGS:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->TOGGLE_BUTTON_BINDINGS:Ljava/util/List;

    sget-object v1, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->BUTTON_BINDINGS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 52
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->TOGGLE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "ToggleNext-Right"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 53
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->TOGGLE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TogglePrevious-Left"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 54
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->TOGGLE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "ToggleNext-Down"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->TOGGLE_BUTTON_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "TogglePrevious-Up"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 56
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ToggleButton;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/control/ToggleButton;, "TC;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->TOGGLE_BUTTON_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;-><init>(Ljavafx/scene/control/ButtonBase;Ljava/util/List;)V

    .line 44
    return-void
.end method

.method private nextToggleIndex(Ljavafx/collections/ObservableList;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/Toggle;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "toggles":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/Toggle;>;"
    move v2, p2

    .local v2, "from":I
    move v5, v2

    if-ltz v5, :cond_0

    move v5, v2

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 69
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    :goto_0
    return v0

    .line 64
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    :cond_1
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    move v4, v5

    .line 65
    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v2

    if-eq v5, v6, :cond_2

    move-object v5, v1

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Toggle;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    .local v3, "toggle":Ljavafx/scene/control/Toggle;
    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    .line 66
    invoke-virtual {v5}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    move v5, v4

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    move v4, v5

    goto :goto_1

    .line 69
    .end local v3    # "toggle":Ljavafx/scene/control/Toggle;
    :cond_2
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method private previousToggleIndex(Ljavafx/collections/ObservableList;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/Toggle;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "toggles":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/Toggle;>;"
    move v2, p2

    .local v2, "from":I
    move v5, v2

    if-ltz v5, :cond_0

    move v5, v2

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    :cond_0
    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    move v0, v5

    .line 83
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    :goto_0
    return v0

    .line 78
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    :cond_1
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->floorMod(II)I

    move-result v5

    move v4, v5

    .line 79
    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v2

    if-eq v5, v6, :cond_2

    move-object v5, v1

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Toggle;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    .local v3, "toggle":Ljavafx/scene/control/Toggle;
    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    .line 80
    invoke-virtual {v5}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    move v5, v4

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->floorMod(II)I

    move-result v5

    move v4, v5

    goto :goto_1

    .line 83
    .end local v3    # "toggle":Ljavafx/scene/control/Toggle;
    :cond_2
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method private toggleToTraverseAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    move-object v2, v4

    const/4 v4, -0x1

    move v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 157
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Not a toggle action"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :sswitch_0
    move-object v4, v2

    const-string v5, "ToggleNext-Right"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    :sswitch_1
    move-object v4, v2

    const-string v5, "ToggleNext-Down"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    :sswitch_2
    move-object v4, v2

    const-string v5, "TogglePrevious-Left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    move v3, v4

    goto :goto_0

    :sswitch_3
    move-object v4, v2

    const-string v5, "TogglePrevious-Up"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    move v3, v4

    goto :goto_0

    .line 149
    :pswitch_0
    const-string v4, "TraverseRight"

    move-object v0, v4

    .line 155
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    :goto_1
    return-object v0

    .line 151
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    :pswitch_1
    const-string v4, "TraverseDown"

    move-object v0, v4

    goto :goto_1

    .line 153
    :pswitch_2
    const-string v4, "TraverseLeft"

    move-object v0, v4

    goto :goto_1

    .line 155
    :pswitch_3
    const-string v4, "TraverseUp"

    move-object v0, v4

    goto :goto_1

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        -0x49210eca -> :sswitch_0
        0xf2e0229 -> :sswitch_2
        0x1d51913d -> :sswitch_3
        0x68f8aa48 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private traversingToNext(Ljava/lang/String;Ljavafx/geometry/NodeOrientation;)Z
    .locals 10

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "effectiveNodeOrientation":Ljavafx/geometry/NodeOrientation;
    move-object v6, v2

    sget-object v7, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 132
    .local v3, "rtl":Z
    move-object v6, v1

    move-object v4, v6

    const/4 v6, -0x1

    move v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    move v6, v5

    packed-switch v6, :pswitch_data_0

    .line 142
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Not a toggle action"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    .end local v3    # "rtl":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 132
    .restart local v3    # "rtl":Z
    :sswitch_0
    move-object v6, v4

    const-string v7, "ToggleNext-Right"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move v5, v6

    goto :goto_1

    :sswitch_1
    move-object v6, v4

    const-string v7, "ToggleNext-Down"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    move v5, v6

    goto :goto_1

    :sswitch_2
    move-object v6, v4

    const-string v7, "TogglePrevious-Left"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    move v5, v6

    goto :goto_1

    :sswitch_3
    move-object v6, v4

    const-string v7, "TogglePrevious-Up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    move v5, v6

    goto :goto_1

    .line 134
    :pswitch_0
    move v6, v3

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_2
    move v0, v6

    .line 140
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    :goto_3
    return v0

    .line 134
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    .line 136
    :pswitch_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_3

    .line 138
    :pswitch_2
    move v6, v3

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_4
    move v0, v6

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 140
    :pswitch_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_3

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        -0x49210eca -> :sswitch_0
        0xf2e0229 -> :sswitch_2
        0x1d51913d -> :sswitch_3
        0x68f8aa48 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;, "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior<TC;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v11

    check-cast v11, Ljavafx/scene/control/ToggleButton;

    move-object v2, v11

    .line 89
    .local v2, "toggleButton":Ljavafx/scene/control/ToggleButton;
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/ToggleButton;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v11

    move-object v3, v11

    .line 91
    .local v3, "toggleGroup":Ljavafx/scene/control/ToggleGroup;
    move-object v11, v3

    if-nez v11, :cond_0

    .line 92
    move-object v11, v0

    move-object v12, v1

    invoke-super {v11, v12}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->callAction(Ljava/lang/String;)V

    .line 93
    .line 128
    :goto_0
    return-void

    .line 95
    :cond_0
    move-object v11, v3

    invoke-virtual {v11}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v11

    move-object v4, v11

    .line 96
    .local v4, "toggles":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/Toggle;>;"
    move-object v11, v4

    move-object v12, v2

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    move v5, v11

    .line 98
    .local v5, "currentToggleIdx":I
    move-object v11, v1

    move-object v6, v11

    const/4 v11, -0x1

    move v7, v11

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_1
    :goto_1
    move v11, v7

    packed-switch v11, :pswitch_data_0

    .line 126
    move-object v11, v0

    move-object v12, v1

    invoke-super {v11, v12}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->callAction(Ljava/lang/String;)V

    .line 128
    :goto_2
    goto :goto_0

    .line 98
    :sswitch_0
    move-object v11, v6

    const-string v12, "ToggleNext-Right"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    move v7, v11

    goto :goto_1

    :sswitch_1
    move-object v11, v6

    const-string v12, "ToggleNext-Down"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    move v7, v11

    goto :goto_1

    :sswitch_2
    move-object v11, v6

    const-string v12, "TogglePrevious-Left"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x2

    move v7, v11

    goto :goto_1

    :sswitch_3
    move-object v11, v6

    const-string v12, "TogglePrevious-Up"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x3

    move v7, v11

    goto :goto_1

    .line 103
    :pswitch_0
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v13}, Ljavafx/scene/control/ToggleButton;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->traversingToNext(Ljava/lang/String;Ljavafx/geometry/NodeOrientation;)Z

    move-result v11

    move v8, v11

    .line 104
    .local v8, "traversingToNext":Z
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 105
    move-object v11, v0

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->toggleToTraverseAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-super {v11, v12}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->callAction(Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_2
    move v11, v8

    if-eqz v11, :cond_4

    .line 107
    move-object v11, v0

    move-object v12, v4

    move v13, v5

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->nextToggleIndex(Ljavafx/collections/ObservableList;I)I

    move-result v11

    move v9, v11

    .line 108
    .local v9, "nextToggleIndex":I
    move v11, v9

    move v12, v5

    if-ne v11, v12, :cond_3

    .line 109
    move-object v11, v0

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->toggleToTraverseAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-super {v11, v12}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->callAction(Ljava/lang/String;)V

    .line 115
    :goto_3
    goto :goto_2

    .line 111
    :cond_3
    move-object v11, v4

    move v12, v9

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/control/Toggle;

    move-object v10, v11

    .line 112
    .local v10, "toggle":Ljavafx/scene/control/Toggle;
    move-object v11, v3

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 113
    move-object v11, v10

    check-cast v11, Ljavafx/scene/control/Control;

    invoke-virtual {v11}, Ljavafx/scene/control/Control;->requestFocus()V

    goto :goto_3

    .line 116
    .end local v9    # "nextToggleIndex":I
    .end local v10    # "toggle":Ljavafx/scene/control/Toggle;
    :cond_4
    move-object v11, v0

    move-object v12, v4

    move v13, v5

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->previousToggleIndex(Ljavafx/collections/ObservableList;I)I

    move-result v11

    move v9, v11

    .line 117
    .local v9, "prevToggleIndex":I
    move v11, v9

    move v12, v5

    if-ne v11, v12, :cond_5

    .line 118
    move-object v11, v0

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;->toggleToTraverseAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-super {v11, v12}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;->callAction(Ljava/lang/String;)V

    .line 125
    :goto_4
    goto/16 :goto_2

    .line 120
    :cond_5
    move-object v11, v4

    move v12, v9

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/control/Toggle;

    move-object v10, v11

    .line 121
    .restart local v10    # "toggle":Ljavafx/scene/control/Toggle;
    move-object v11, v3

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 122
    move-object v11, v10

    check-cast v11, Ljavafx/scene/control/Control;

    invoke-virtual {v11}, Ljavafx/scene/control/Control;->requestFocus()V

    goto :goto_4

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        -0x49210eca -> :sswitch_0
        0xf2e0229 -> :sswitch_2
        0x1d51913d -> :sswitch_3
        0x68f8aa48 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
