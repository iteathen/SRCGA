.class public abstract Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "CellBehaviorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/scene/control/Cell;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ANCHOR_PROPERTY_KEY:Ljava/lang/String; = "anchor"

.field private static final IS_DEFAULT_ANCHOR_KEY:Ljava/lang/String; = "isDefaultAnchor"


# instance fields
.field private latePress:Z


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Cell;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Cell;, "TT;"
    move-object v2, p2

    .local v2, "bindings":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/behavior/KeyBinding;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 106
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->latePress:Z

    .line 118
    return-void
.end method

.method public static getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Control;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "defaultResponse":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->hasNonDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 63
    invoke-virtual {v2}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "anchor"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "control":Ljavafx/scene/control/Control;
    return-object v0

    .restart local v0    # "control":Ljavafx/scene/control/Control;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private static hasAnchor(Ljavafx/scene/control/Control;)Z
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    const-string v2, "anchor"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "control":Ljavafx/scene/control/Control;
    return v0

    .restart local v0    # "control":Ljavafx/scene/control/Control;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasDefaultAnchor(Ljavafx/scene/control/Control;)Z
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "isDefaultAnchor"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v1, v2

    .line 83
    .local v1, "isDefaultAnchor":Ljava/lang/Boolean;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->hasAnchor(Ljavafx/scene/control/Control;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "control":Ljavafx/scene/control/Control;
    return v0

    .restart local v0    # "control":Ljavafx/scene/control/Control;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasNonDefaultAnchor(Ljavafx/scene/control/Control;)Z
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "isDefaultAnchor"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v1, v2

    .line 78
    .local v1, "isDefaultAnchor":Ljava/lang/Boolean;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->hasAnchor(Ljavafx/scene/control/Control;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "control":Ljavafx/scene/control/Control;
    return v0

    .restart local v0    # "control":Ljavafx/scene/control/Control;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeAnchor(Ljavafx/scene/control/Control;)V
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    const-string v2, "anchor"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    const-string v2, "isDefaultAnchor"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    return-void
.end method

.method public static setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Control;",
            "TT;Z)V"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "anchor":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "isDefaultAnchor":Z
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_0

    .line 69
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->removeAnchor(Ljavafx/scene/control/Control;)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "anchor"

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "isDefaultAnchor"

    move v5, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected doSelect(DDLjavafx/scene/input/MouseButton;IZZ)V
    .locals 25

    .prologue
    .line 178
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-object/from16 v8, p5

    .local v8, "button":Ljavafx/scene/input/MouseButton;
    move/from16 v9, p6

    .local v9, "clickCount":I
    move/from16 v10, p7

    .local v10, "shiftDown":Z
    move/from16 v11, p8

    .local v11, "shortcutDown":Z
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v19

    check-cast v19, Ljavafx/scene/control/Cell;

    move-object/from16 v12, v19

    .line 180
    .local v12, "cell":Ljavafx/scene/control/Cell;, "TT;"
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getCellContainer()Ljavafx/scene/control/Control;

    move-result-object v19

    move-object/from16 v13, v19

    .line 184
    .local v13, "cellContainer":Ljavafx/scene/control/Control;
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/Cell;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v19, v12

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-virtual/range {v19 .. v23}, Ljavafx/scene/control/Cell;->contains(DD)Z

    move-result v19

    if-nez v19, :cond_1

    .line 185
    .line 243
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getIndex()I

    move-result v19

    move/from16 v14, v19

    .line 189
    .local v14, "index":I
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/Cell;->isSelected()Z

    move-result v19

    move/from16 v15, v19

    .line 190
    .local v15, "selected":Z
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v19

    move-object/from16 v16, v19

    .line 191
    .local v16, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<*>;"
    move-object/from16 v19, v16

    if-nez v19, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v19

    move-object/from16 v17, v19

    .line 194
    .local v17, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<*>;"
    move-object/from16 v19, v17

    if-nez v19, :cond_3

    goto :goto_0

    .line 198
    :cond_3
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->handleDisclosureNode(DD)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 199
    goto :goto_0

    .line 203
    :cond_4
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->isClickPositionValid(DD)Z

    move-result v19

    if-nez v19, :cond_5

    goto :goto_0

    .line 209
    :cond_5
    move/from16 v19, v10

    if-eqz v19, :cond_9

    .line 210
    move-object/from16 v19, v13

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->hasNonDefaultAnchor(Ljavafx/scene/control/Control;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 211
    move-object/from16 v19, v13

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->setAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;Z)V

    .line 217
    :cond_6
    :goto_1
    move-object/from16 v19, v8

    sget-object v20, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v19, v8

    sget-object v20, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move/from16 v19, v15

    if-nez v19, :cond_8

    .line 218
    :cond_7
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v19

    sget-object v20, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 219
    move-object/from16 v19, v3

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->simpleSelect(Ljavafx/scene/input/MouseButton;IZ)V

    .line 243
    :cond_8
    :goto_2
    goto/16 :goto_0

    .line 214
    :cond_9
    move-object/from16 v19, v13

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->removeAnchor(Ljavafx/scene/control/Control;)V

    goto :goto_1

    .line 221
    :cond_a
    move/from16 v19, v11

    if-eqz v19, :cond_c

    .line 222
    move/from16 v19, v15

    if-eqz v19, :cond_b

    .line 224
    move-object/from16 v19, v16

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection(I)V

    .line 225
    move-object/from16 v19, v17

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/FocusModel;->focus(I)V

    goto :goto_2

    .line 228
    :cond_b
    move-object/from16 v19, v16

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    goto :goto_2

    .line 230
    :cond_c
    move/from16 v19, v10

    if-eqz v19, :cond_d

    move/from16 v19, v9

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 233
    move-object/from16 v19, v13

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getAnchor(Ljavafx/scene/control/Control;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v18, v19

    .line 235
    .local v18, "focusedIndex":I
    move-object/from16 v19, v3

    move/from16 v20, v18

    move/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->selectRows(II)V

    .line 237
    move-object/from16 v19, v17

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 238
    goto :goto_2

    .line 239
    .end local v18    # "focusedIndex":I
    :cond_d
    move-object/from16 v19, v3

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->simpleSelect(Ljavafx/scene/input/MouseButton;IZ)V

    goto :goto_2
.end method

.method protected abstract edit(Ljavafx/scene/control/Cell;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract getCellContainer()Ljavafx/scene/control/Control;
.end method

.method protected abstract getFocusModel()Ljavafx/scene/control/FocusModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/FocusModel",
            "<*>;"
        }
    .end annotation
.end method

.method protected getIndex()I
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    instance-of v1, v1, Ljavafx/scene/control/IndexedCell;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v1}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected abstract getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<*>;"
        }
    .end annotation
.end method

.method protected handleClicks(Ljavafx/scene/input/MouseButton;IZ)V
    .locals 6

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move v2, p2

    .local v2, "clickCount":I
    move v3, p3

    .local v3, "isAlreadySelected":Z
    move-object v4, v1

    sget-object v5, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v4, v5, :cond_0

    .line 264
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v4, v3

    if-eqz v4, :cond_1

    .line 265
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Cell;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->edit(Ljavafx/scene/control/Cell;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 268
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->edit(Ljavafx/scene/control/Cell;)V

    goto :goto_0

    .line 269
    :cond_2
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Cell;

    invoke-virtual {v4}, Ljavafx/scene/control/Cell;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Cell;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->edit(Ljavafx/scene/control/Cell;)V

    goto :goto_0
.end method

.method protected handleDisclosureNode(DD)Z
    .locals 7

    .prologue
    .line 126
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    const/4 v6, 0x0

    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    return v1
.end method

.method protected isClickPositionValid(DD)Z
    .locals 7

    .prologue
    .line 129
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    return v1
.end method

.method protected isSelected()Z
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Cell;

    invoke-virtual {v1}, Ljavafx/scene/control/Cell;->isSelected()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    return v0
.end method

.method public mouseDragged(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->latePress:Z

    .line 165
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 12

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->latePress:Z

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->isSelected()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->latePress:Z

    .line 148
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->latePress:Z

    if-nez v3, :cond_0

    .line 149
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v9

    move-object v10, v2

    .line 150
    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v10

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/input/MouseEvent;->isShortcutDown()Z

    move-result v11

    .line 149
    invoke-virtual/range {v3 .. v11}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->doSelect(DDLjavafx/scene/input/MouseButton;IZZ)V

    goto :goto_0
.end method

.method public mouseReleased(Ljavafx/scene/input/MouseEvent;)V
    .locals 12

    .prologue
    .line 156
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->latePress:Z

    if-eqz v3, :cond_0

    .line 157
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->latePress:Z

    .line 158
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v9

    move-object v10, v2

    .line 159
    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v10

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/input/MouseEvent;->isShortcutDown()Z

    move-result v11

    .line 158
    invoke-virtual/range {v3 .. v11}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->doSelect(DDLjavafx/scene/input/MouseButton;IZZ)V

    .line 161
    :cond_0
    return-void
.end method

.method selectRows(II)V
    .locals 15

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move/from16 v1, p1

    .local v1, "focusedIndex":I
    move/from16 v2, p2

    .local v2, "index":I
    move v10, v1

    move v11, v2

    if-ge v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_0
    move v3, v10

    .line 279
    .local v3, "asc":Z
    move v10, v1

    move v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v4, v10

    .line 280
    .local v4, "minRow":I
    move v10, v1

    move v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v5, v10

    .line 285
    .local v5, "maxRow":I
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v10

    .line 286
    .local v6, "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v8, v10

    .local v8, "max":I
    :goto_1
    move v10, v7

    move v11, v8

    if-ge v10, v11, :cond_3

    .line 287
    move-object v10, v6

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v9, v10

    .line 288
    .local v9, "selectedIndex":I
    move v10, v9

    move v11, v4

    if-lt v10, v11, :cond_0

    move v10, v9

    move v11, v5

    if-le v10, v11, :cond_1

    .line 289
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v10

    move v11, v9

    invoke-virtual {v10, v11}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection(I)V

    .line 286
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 276
    .end local v3    # "asc":Z
    .end local v4    # "minRow":I
    .end local v5    # "maxRow":I
    .end local v6    # "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    .end local v8    # "max":I
    .end local v9    # "selectedIndex":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 293
    .restart local v3    # "asc":Z
    .restart local v4    # "minRow":I
    .restart local v5    # "maxRow":I
    .restart local v6    # "selectedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "i":I
    .restart local v8    # "max":I
    :cond_3
    move v10, v4

    move v11, v5

    if-ne v10, v11, :cond_4

    .line 298
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v10

    move v11, v4

    invoke-virtual {v10, v11}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    .line 310
    :goto_2
    return-void

    .line 304
    :cond_4
    move v10, v3

    if-eqz v10, :cond_5

    .line 305
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v10

    move v11, v4

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    goto :goto_2

    .line 307
    :cond_5
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v10

    move v11, v5

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/MultipleSelectionModel;->selectRange(II)V

    goto :goto_2
.end method

.method protected simpleSelect(Ljavafx/scene/input/MouseButton;IZ)V
    .locals 11

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase<TT;>;"
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move v2, p2

    .local v2, "clickCount":I
    move v3, p3

    .local v3, "shortcutDown":Z
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getIndex()I

    move-result v7

    move v4, v7

    .line 247
    .local v4, "index":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v7

    move-object v5, v7

    .line 248
    .local v5, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<*>;"
    move-object v7, v5

    move v8, v4

    invoke-virtual {v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->isSelected(I)Z

    move-result v7

    move v6, v7

    .line 250
    .local v6, "isAlreadySelected":Z
    move v7, v6

    if-eqz v7, :cond_0

    move v7, v3

    if-eqz v7, :cond_0

    .line 251
    move-object v7, v5

    move v8, v4

    invoke-virtual {v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection(I)V

    .line 252
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 253
    const/4 v7, 0x0

    move v6, v7

    .line 258
    :goto_0
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;->handleClicks(Ljavafx/scene/input/MouseButton;IZ)V

    .line 259
    return-void

    .line 255
    :cond_0
    move-object v7, v5

    move v8, v4

    invoke-virtual {v7, v8}, Ljavafx/scene/control/MultipleSelectionModel;->clearAndSelect(I)V

    goto :goto_0
.end method
