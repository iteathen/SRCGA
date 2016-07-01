.class public abstract Ljavafx/scene/control/SkinBase;
.super Ljava/lang/Object;
.source "SkinBase.java"

# interfaces
.implements Ljavafx/scene/control/Skin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/SkinBase$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/Control;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/scene/control/Skin",
        "<TC;>;"
    }
.end annotation


# static fields
.field private static final mouseEventConsumer:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private children:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private control:Ljavafx/scene/control/Control;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Ljavafx/scene/control/SkinBase$$Lambda$1;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/SkinBase;->mouseEventConsumer:Ljavafx/event/EventHandler;

    return-void
.end method

.method protected constructor <init>(Ljavafx/scene/control/Control;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;, "TC;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 108
    move-object v2, v1

    if-nez v2, :cond_0

    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot pass null for control"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    .line 114
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->getControlChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    .line 117
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SkinBase;->consumeMouseEvents(Z)V

    .line 118
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/SkinBase;->lambda$static$3(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 736
    # getter for: Ljavafx/scene/control/SkinBase$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/SkinBase$StyleableProperties;->access$000()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$3(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "event":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 92
    return-void
.end method


# virtual methods
.method protected computeBaselineOffset(DDDD)D
    .locals 19

    .prologue
    .line 378
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide/from16 v1, p1

    .local v1, "topInset":D
    move-wide/from16 v3, p3

    .local v3, "rightInset":D
    move-wide/from16 v5, p5

    .local v5, "bottomInset":D
    move-wide/from16 v7, p7

    .local v7, "leftInset":D
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->size()I

    move-result v14

    move v9, v14

    .line 379
    .local v9, "size":I
    const/4 v14, 0x0

    move v10, v14

    .local v10, "i":I
    :goto_0
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_2

    .line 380
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move v15, v10

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/Node;

    move-object v11, v14

    .line 381
    .local v11, "child":Ljavafx/scene/Node;
    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/scene/Node;->isManaged()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 382
    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v14

    move-wide v12, v14

    .line 383
    .local v12, "offset":D
    move-wide v14, v12

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_1

    .line 384
    .line 379
    .end local v12    # "offset":D
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 386
    .restart local v12    # "offset":D
    :cond_1
    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v12

    add-double v14, v14, v16

    move-wide v0, v14

    .line 389
    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    .end local v11    # "child":Ljavafx/scene/Node;
    .end local v12    # "offset":D
    :goto_1
    return-wide v0

    .restart local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    :cond_2
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-wide v0, v14

    goto :goto_1
.end method

.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 292
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v12

    .end local v1    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v1
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 15

    .prologue
    .line 276
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v12

    .end local v1    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v1
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 29

    .prologue
    .line 242
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    .line 243
    .local v13, "minY":D
    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    .line 244
    .local v15, "maxY":D
    const/16 v22, 0x1

    move/from16 v17, v22

    .line 245
    .local v17, "firstManagedChild":Z
    const/16 v22, 0x0

    move/from16 v18, v22

    .local v18, "i":I
    :goto_0
    move/from16 v22, v18

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavafx/collections/ObservableList;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 246
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v22, v0

    move/from16 v23, v18

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/Node;

    move-object/from16 v19, v22

    .line 247
    .local v19, "node":Ljavafx/scene/Node;
    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->isManaged()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 248
    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v22

    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 249
    .local v20, "y":D
    move/from16 v22, v17

    if-nez v22, :cond_1

    .line 250
    move-wide/from16 v22, v13

    move-wide/from16 v24, v20

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v13, v22

    .line 251
    move-wide/from16 v22, v15

    move-wide/from16 v24, v20

    move-object/from16 v26, v19

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v26

    add-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v15, v22

    .line 245
    .end local v20    # "y":D
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 253
    .restart local v20    # "y":D
    :cond_1
    move-wide/from16 v22, v20

    move-wide/from16 v13, v22

    .line 254
    move-wide/from16 v22, v20

    move-object/from16 v24, v19

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v15, v22

    .line 255
    const/16 v22, 0x0

    move/from16 v17, v22

    goto :goto_1

    .line 259
    .end local v19    # "node":Ljavafx/scene/Node;
    .end local v20    # "y":D
    :cond_2
    move-wide/from16 v22, v15

    move-wide/from16 v24, v13

    sub-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 260
    .local v18, "minHeight":D
    move-wide/from16 v22, v5

    move-wide/from16 v24, v18

    add-double v22, v22, v24

    move-wide/from16 v24, v9

    add-double v22, v22, v24

    move-wide/from16 v2, v22

    .end local v2    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v2
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 29

    .prologue
    .line 207
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    .line 208
    .local v13, "minX":D
    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    .line 209
    .local v15, "maxX":D
    const/16 v22, 0x1

    move/from16 v17, v22

    .line 210
    .local v17, "firstManagedChild":Z
    const/16 v22, 0x0

    move/from16 v18, v22

    .local v18, "i":I
    :goto_0
    move/from16 v22, v18

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavafx/collections/ObservableList;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 211
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v22, v0

    move/from16 v23, v18

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/Node;

    move-object/from16 v19, v22

    .line 212
    .local v19, "node":Ljavafx/scene/Node;
    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->isManaged()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 213
    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v22

    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->getLayoutX()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 214
    .local v20, "x":D
    move/from16 v22, v17

    if-nez v22, :cond_1

    .line 215
    move-wide/from16 v22, v13

    move-wide/from16 v24, v20

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v13, v22

    .line 216
    move-wide/from16 v22, v15

    move-wide/from16 v24, v20

    move-object/from16 v26, v19

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v26

    add-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v15, v22

    .line 210
    .end local v20    # "x":D
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 218
    .restart local v20    # "x":D
    :cond_1
    move-wide/from16 v22, v20

    move-wide/from16 v13, v22

    .line 219
    move-wide/from16 v22, v20

    move-object/from16 v24, v19

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v15, v22

    .line 220
    const/16 v22, 0x0

    move/from16 v17, v22

    goto :goto_1

    .line 224
    .end local v19    # "node":Ljavafx/scene/Node;
    .end local v20    # "x":D
    :cond_2
    move-wide/from16 v22, v15

    move-wide/from16 v24, v13

    sub-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 225
    .local v18, "minWidth":D
    move-wide/from16 v22, v11

    move-wide/from16 v24, v18

    add-double v22, v22, v24

    move-wide/from16 v24, v7

    add-double v22, v22, v24

    move-wide/from16 v2, v22

    .end local v2    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v2
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 29

    .prologue
    .line 347
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    .line 348
    .local v13, "minY":D
    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    .line 349
    .local v15, "maxY":D
    const/16 v22, 0x1

    move/from16 v17, v22

    .line 350
    .local v17, "firstManagedChild":Z
    const/16 v22, 0x0

    move/from16 v18, v22

    .local v18, "i":I
    :goto_0
    move/from16 v22, v18

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavafx/collections/ObservableList;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 351
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v22, v0

    move/from16 v23, v18

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/Node;

    move-object/from16 v19, v22

    .line 352
    .local v19, "node":Ljavafx/scene/Node;
    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->isManaged()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 353
    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v22

    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 354
    .local v20, "y":D
    move/from16 v22, v17

    if-nez v22, :cond_1

    .line 355
    move-wide/from16 v22, v13

    move-wide/from16 v24, v20

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v13, v22

    .line 356
    move-wide/from16 v22, v15

    move-wide/from16 v24, v20

    move-object/from16 v26, v19

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v26

    add-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v15, v22

    .line 350
    .end local v20    # "y":D
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 358
    .restart local v20    # "y":D
    :cond_1
    move-wide/from16 v22, v20

    move-wide/from16 v13, v22

    .line 359
    move-wide/from16 v22, v20

    move-object/from16 v24, v19

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v15, v22

    .line 360
    const/16 v22, 0x0

    move/from16 v17, v22

    goto :goto_1

    .line 364
    .end local v19    # "node":Ljavafx/scene/Node;
    .end local v20    # "y":D
    :cond_2
    move-wide/from16 v22, v15

    move-wide/from16 v24, v13

    sub-double v22, v22, v24

    move-wide/from16 v2, v22

    .end local v2    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v2
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 29

    .prologue
    .line 311
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    .line 312
    .local v13, "minX":D
    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    .line 313
    .local v15, "maxX":D
    const/16 v22, 0x1

    move/from16 v17, v22

    .line 314
    .local v17, "firstManagedChild":Z
    const/16 v22, 0x0

    move/from16 v18, v22

    .local v18, "i":I
    :goto_0
    move/from16 v22, v18

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavafx/collections/ObservableList;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 315
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v22, v0

    move/from16 v23, v18

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/Node;

    move-object/from16 v19, v22

    .line 316
    .local v19, "node":Ljavafx/scene/Node;
    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->isManaged()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 317
    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v22

    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->getLayoutX()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 318
    .local v20, "x":D
    move/from16 v22, v17

    if-nez v22, :cond_1

    .line 319
    move-wide/from16 v22, v13

    move-wide/from16 v24, v20

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v13, v22

    .line 320
    move-wide/from16 v22, v15

    move-wide/from16 v24, v20

    move-object/from16 v26, v19

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v26

    add-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v15, v22

    .line 314
    .end local v20    # "x":D
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 322
    .restart local v20    # "x":D
    :cond_1
    move-wide/from16 v22, v20

    move-wide/from16 v13, v22

    .line 323
    move-wide/from16 v22, v20

    move-object/from16 v24, v19

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v15, v22

    .line 324
    const/16 v22, 0x0

    move/from16 v17, v22

    goto :goto_1

    .line 328
    .end local v19    # "node":Ljavafx/scene/Node;
    .end local v20    # "x":D
    :cond_2
    move-wide/from16 v22, v15

    move-wide/from16 v24, v13

    sub-double v22, v22, v24

    move-wide/from16 v2, v22

    .end local v2    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v2
.end method

.method protected final consumeMouseEvents(Z)V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 179
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    sget-object v4, Ljavafx/scene/control/SkinBase;->mouseEventConsumer:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    sget-object v3, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    sget-object v4, Ljavafx/scene/control/SkinBase;->mouseEventConsumer:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Control;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    .line 143
    return-void
.end method

.method protected varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljavafx/scene/AccessibleAction;
    .param p2, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 771
    .local p0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-void
.end method

.method public final getChildren()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    invoke-static {}, Ljavafx/scene/control/SkinBase;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-object v0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-object v0
.end method

.method public final getSkinnable()Ljavafx/scene/control/Control;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Ljavafx/scene/control/Skinnable;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-object v0
.end method

.method protected layoutChildren(DDDD)V
    .locals 27

    .prologue
    .line 166
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide/from16 v1, p1

    .local v1, "contentX":D
    move-wide/from16 v3, p3

    .local v3, "contentY":D
    move-wide/from16 v5, p5

    .local v5, "contentWidth":D
    move-wide/from16 v7, p7

    .local v7, "contentHeight":D
    const/4 v12, 0x0

    move v9, v12

    .local v9, "i":I
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    move v10, v12

    .local v10, "max":I
    :goto_0
    move v12, v9

    move v13, v10

    if-ge v12, v13, :cond_1

    .line 167
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/control/SkinBase;->children:Ljavafx/collections/ObservableList;

    move v13, v9

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v11, v12

    .line 168
    .local v11, "child":Ljavafx/scene/Node;
    move-object v12, v11

    invoke-virtual {v12}, Ljavafx/scene/Node;->isManaged()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 169
    move-object v12, v0

    move-object v13, v11

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    sget-object v24, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v25, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v12 .. v25}, Ljavafx/scene/control/SkinBase;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 166
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 172
    .end local v11    # "child":Ljavafx/scene/Node;
    :cond_1
    return-void
.end method

.method protected layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 32

    .prologue
    .line 587
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object/from16 v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "areaX":D
    move-wide/from16 v4, p4

    .local v4, "areaY":D
    move-wide/from16 v6, p6

    .local v6, "areaWidth":D
    move-wide/from16 v8, p8

    .local v8, "areaHeight":D
    move-wide/from16 v10, p10

    .local v10, "areaBaselineOffset":D
    move-object/from16 v12, p12

    .local v12, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v13, p13

    .local v13, "valignment":Ljavafx/geometry/VPos;
    move-object v14, v0

    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    sget-object v26, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    invoke-virtual/range {v14 .. v30}, Ljavafx/scene/control/SkinBase;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 589
    return-void
.end method

.method protected layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 32

    .prologue
    .line 643
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object/from16 v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "areaX":D
    move-wide/from16 v4, p4

    .local v4, "areaY":D
    move-wide/from16 v6, p6

    .local v6, "areaWidth":D
    move-wide/from16 v8, p8

    .local v8, "areaHeight":D
    move-wide/from16 v10, p10

    .local v10, "areaBaselineOffset":D
    move-object/from16 v12, p12

    .local v12, "margin":Ljavafx/geometry/Insets;
    move-object/from16 v13, p13

    .local v13, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v14, p14

    .local v14, "valignment":Ljavafx/geometry/VPos;
    move-object v15, v0

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-object/from16 v27, v12

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    invoke-virtual/range {v15 .. v31}, Ljavafx/scene/control/SkinBase;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 645
    return-void
.end method

.method protected layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 36

    .prologue
    .line 702
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object/from16 v3, p1

    .local v3, "child":Ljavafx/scene/Node;
    move-wide/from16 v4, p2

    .local v4, "areaX":D
    move-wide/from16 v6, p4

    .local v6, "areaY":D
    move-wide/from16 v8, p6

    .local v8, "areaWidth":D
    move-wide/from16 v10, p8

    .local v10, "areaHeight":D
    move-wide/from16 v12, p10

    .local v12, "areaBaselineOffset":D
    move-object/from16 v14, p12

    .local v14, "margin":Ljavafx/geometry/Insets;
    move/from16 v15, p13

    .local v15, "fillWidth":Z
    move/from16 v16, p14

    .local v16, "fillHeight":Z
    move-object/from16 v17, p15

    .local v17, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v18, p16

    .local v18, "valignment":Ljavafx/geometry/VPos;
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move-object/from16 v30, v14

    move/from16 v31, v15

    move/from16 v32, v16

    move-object/from16 v33, v17

    move-object/from16 v34, v18

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    move-object/from16 v35, v0

    .line 704
    invoke-virtual/range {v35 .. v35}, Ljavafx/scene/control/Control;->isSnapToPixel()Z

    move-result v35

    .line 702
    invoke-static/range {v19 .. v35}, Ljavafx/scene/layout/Region;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 705
    return-void
.end method

.method protected positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 30

    .prologue
    .line 497
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object/from16 v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "areaX":D
    move-wide/from16 v4, p4

    .local v4, "areaY":D
    move-wide/from16 v6, p6

    .local v6, "areaWidth":D
    move-wide/from16 v8, p8

    .local v8, "areaHeight":D
    move-wide/from16 v10, p10

    .local v10, "areaBaselineOffset":D
    move-object/from16 v12, p12

    .local v12, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v13, p13

    .local v13, "valignment":Ljavafx/geometry/VPos;
    move-object v14, v0

    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    sget-object v26, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-virtual/range {v14 .. v28}, Ljavafx/scene/control/SkinBase;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 499
    return-void
.end method

.method protected positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 32

    .prologue
    .line 534
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object/from16 v3, p1

    .local v3, "child":Ljavafx/scene/Node;
    move-wide/from16 v4, p2

    .local v4, "areaX":D
    move-wide/from16 v6, p4

    .local v6, "areaY":D
    move-wide/from16 v8, p6

    .local v8, "areaWidth":D
    move-wide/from16 v10, p8

    .local v10, "areaHeight":D
    move-wide/from16 v12, p10

    .local v12, "areaBaselineOffset":D
    move-object/from16 v14, p12

    .local v14, "margin":Ljavafx/geometry/Insets;
    move-object/from16 v15, p13

    .local v15, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v16, p14

    .local v16, "valignment":Ljavafx/geometry/VPos;
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    move-object/from16 v30, v16

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    move-object/from16 v31, v0

    .line 536
    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/control/Control;->isSnapToPixel()Z

    move-result v31

    .line 534
    invoke-static/range {v17 .. v31}, Ljavafx/scene/layout/Region;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 537
    return-void
.end method

.method public final pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V
    .locals 7

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, p1

    .local v1, "pseudoClass":Ljavafx/css/PseudoClass;
    move v2, p2

    .local v2, "active":Z
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    move-object v3, v4

    .line 752
    .local v3, "ctl":Ljavafx/scene/control/Control;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 753
    move-object v4, v3

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/Control;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 755
    :cond_0
    return-void
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-object v0
.end method

.method protected snapPosition(D)D
    .locals 7

    .prologue
    .line 466
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->isSnapToPixel()Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    :cond_0
    move-wide v4, v2

    goto :goto_0
.end method

.method protected snapSize(D)D
    .locals 7

    .prologue
    .line 456
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->isSnapToPixel()Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    :cond_0
    move-wide v4, v2

    goto :goto_0
.end method

.method protected snapSpace(D)D
    .locals 7

    .prologue
    .line 446
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->isSnapToPixel()Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    :cond_0
    move-wide v4, v2

    goto :goto_0
.end method

.method protected snappedBottomInset()D
    .locals 3

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->snappedBottomInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v0
.end method

.method protected snappedLeftInset()D
    .locals 3

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v0
.end method

.method protected snappedRightInset()D
    .locals 3

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v0
.end method

.method protected snappedTopInset()D
    .locals 3

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SkinBase;->control:Ljavafx/scene/control/Control;

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->snappedTopInset()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SkinBase;, "Ljavafx/scene/control/SkinBase<TC;>;"
    return-wide v0
.end method
