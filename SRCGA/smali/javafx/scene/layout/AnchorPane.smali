.class public Ljavafx/scene/layout/AnchorPane;
.super Ljavafx/scene/layout/Pane;
.source "AnchorPane.java"


# static fields
.field private static final BOTTOM_ANCHOR:Ljava/lang/String; = "pane-bottom-anchor"

.field private static final LEFT_ANCHOR:Ljava/lang/String; = "pane-left-anchor"

.field private static final RIGHT_ANCHOR:Ljava/lang/String; = "pane-right-anchor"

.field private static final TOP_ANCHOR:Ljava/lang/String; = "pane-top-anchor"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/AnchorPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 229
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/AnchorPane;
    move-object v1, p1

    .local v1, "children":[Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 238
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/AnchorPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 239
    return-void
.end method

.method public static clearConstraints(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/AnchorPane;->setTopAnchor(Ljavafx/scene/Node;Ljava/lang/Double;)V

    .line 215
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/AnchorPane;->setRightAnchor(Ljavafx/scene/Node;Ljava/lang/Double;)V

    .line 216
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/AnchorPane;->setBottomAnchor(Ljavafx/scene/Node;Ljava/lang/Double;)V

    .line 217
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/AnchorPane;->setLeftAnchor(Ljavafx/scene/Node;Ljava/lang/Double;)V

    .line 218
    return-void
.end method

.method private computeChildHeight(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D
    .locals 18

    .prologue
    .line 313
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/AnchorPane;
    move-object/from16 v2, p1

    .local v2, "child":Ljavafx/scene/Node;
    move-object/from16 v3, p2

    .local v3, "topAnchor":Ljava/lang/Double;
    move-object/from16 v4, p3

    .local v4, "bottomAnchor":Ljava/lang/Double;
    move-wide/from16 v5, p4

    .local v5, "areaHeight":D
    move-wide/from16 v7, p6

    .local v7, "width":D
    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v4

    if-eqz v10, :cond_0

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/Node;->isResizable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 314
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/AnchorPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v10

    move-object v9, v10

    .line 315
    .local v9, "insets":Ljavafx/geometry/Insets;
    move-wide v10, v5

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-wide v1, v10

    .line 317
    .end local v1    # "this":Ljavafx/scene/layout/AnchorPane;
    .end local v9    # "insets":Ljavafx/geometry/Insets;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/AnchorPane;
    :cond_0
    move-object v10, v1

    move-object v11, v2

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    sget-object v14, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    move-wide v15, v7

    invoke-virtual/range {v10 .. v16}, Ljavafx/scene/layout/AnchorPane;->computeChildPrefAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v10

    move-wide v1, v10

    goto :goto_0
.end method

.method private computeChildWidth(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D
    .locals 18

    .prologue
    .line 305
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/AnchorPane;
    move-object/from16 v2, p1

    .local v2, "child":Ljavafx/scene/Node;
    move-object/from16 v3, p2

    .local v3, "leftAnchor":Ljava/lang/Double;
    move-object/from16 v4, p3

    .local v4, "rightAnchor":Ljava/lang/Double;
    move-wide/from16 v5, p4

    .local v5, "areaWidth":D
    move-wide/from16 v7, p6

    .local v7, "height":D
    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v4

    if-eqz v10, :cond_0

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/Node;->isResizable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 306
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/AnchorPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v10

    move-object v9, v10

    .line 307
    .local v9, "insets":Ljavafx/geometry/Insets;
    move-wide v10, v5

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-wide v1, v10

    .line 309
    .end local v1    # "this":Ljavafx/scene/layout/AnchorPane;
    .end local v9    # "insets":Ljavafx/geometry/Insets;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/AnchorPane;
    :cond_0
    move-object v10, v1

    move-object v11, v2

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    sget-object v14, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    move-wide v15, v7

    const/16 v17, 0x1

    invoke-virtual/range {v10 .. v17}, Ljavafx/scene/layout/AnchorPane;->computeChildPrefAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v10

    move-wide v1, v10

    goto :goto_0
.end method

.method private computeHeight(ZD)D
    .locals 34

    .prologue
    .line 282
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/AnchorPane;
    move/from16 v4, p1

    .local v4, "minimum":Z
    move-wide/from16 v5, p2

    .local v5, "width":D
    const-wide/16 v22, 0x0

    move-wide/from16 v7, v22

    .line 283
    .local v7, "max":D
    move-wide/from16 v22, v5

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_1

    move-wide/from16 v22, v5

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/AnchorPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/AnchorPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v24

    sub-double v22, v22, v24

    :goto_0
    move-wide/from16 v9, v22

    .line 284
    .local v9, "contentWidth":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getManagedChildren()Ljava/util/List;

    move-result-object v22

    move-object/from16 v11, v22

    .line 285
    .local v11, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v22, v11

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v12, v22

    :goto_1
    move-object/from16 v22, v12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v22, v12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/Node;

    move-object/from16 v13, v22

    .line 286
    .local v13, "child":Ljavafx/scene/Node;
    move-object/from16 v22, v13

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getTopAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v14, v22

    .line 287
    .local v14, "topAnchor":Ljava/lang/Double;
    move-object/from16 v22, v13

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getBottomAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v15, v22

    .line 289
    .local v15, "bottomAnchor":Ljava/lang/Double;
    move-object/from16 v22, v14

    if-eqz v22, :cond_2

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 290
    :goto_2
    move-wide/from16 v16, v22

    .line 291
    .local v16, "top":D
    move-object/from16 v22, v15

    if-eqz v22, :cond_4

    move-object/from16 v22, v15

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    :goto_3
    move-wide/from16 v18, v22

    .line 292
    .local v18, "bottom":D
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    move-wide/from16 v20, v22

    .line 293
    .local v20, "childWidth":D
    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-wide/from16 v22, v9

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_0

    .line 294
    move-object/from16 v22, v3

    move-object/from16 v23, v13

    move-object/from16 v24, v13

    invoke-static/range {v24 .. v24}, Ljavafx/scene/layout/AnchorPane;->getLeftAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v25, v13

    invoke-static/range {v25 .. v25}, Ljavafx/scene/layout/AnchorPane;->getRightAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v25

    move-wide/from16 v26, v9

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/AnchorPane;->computeChildWidth(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 296
    :cond_0
    move-wide/from16 v22, v7

    move-wide/from16 v24, v16

    move/from16 v26, v4

    if-eqz v26, :cond_5

    move-object/from16 v26, v14

    if-eqz v26, :cond_5

    move-object/from16 v26, v15

    if-eqz v26, :cond_5

    move-object/from16 v26, v13

    move-wide/from16 v27, v20

    .line 297
    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v26

    :goto_4
    add-double v24, v24, v26

    move-wide/from16 v26, v18

    add-double v24, v24, v26

    .line 296
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v7, v22

    .line 298
    goto/16 :goto_1

    .line 283
    .end local v9    # "contentWidth":D
    .end local v11    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v13    # "child":Ljavafx/scene/Node;
    .end local v14    # "topAnchor":Ljava/lang/Double;
    .end local v15    # "bottomAnchor":Ljava/lang/Double;
    .end local v16    # "top":D
    .end local v18    # "bottom":D
    .end local v20    # "childWidth":D
    :cond_1
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 289
    .restart local v9    # "contentWidth":D
    .restart local v11    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .restart local v13    # "child":Ljavafx/scene/Node;
    .restart local v14    # "topAnchor":Ljava/lang/Double;
    .restart local v15    # "bottomAnchor":Ljava/lang/Double;
    :cond_2
    move-object/from16 v22, v15

    if-eqz v22, :cond_3

    const-wide/16 v22, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v22, v13

    .line 290
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v22

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v24

    add-double v22, v22, v24

    goto/16 :goto_2

    .line 291
    .restart local v16    # "top":D
    :cond_4
    const-wide/16 v22, 0x0

    goto :goto_3

    .line 297
    .restart local v18    # "bottom":D
    .restart local v20    # "childWidth":D
    :cond_5
    move-object/from16 v26, v3

    move-object/from16 v27, v13

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    const/16 v30, 0x0

    move-wide/from16 v31, v20

    invoke-virtual/range {v26 .. v32}, Ljavafx/scene/layout/AnchorPane;->computeChildPrefAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v26

    goto :goto_4

    .line 300
    .end local v13    # "child":Ljavafx/scene/Node;
    .end local v14    # "topAnchor":Ljava/lang/Double;
    .end local v15    # "bottomAnchor":Ljava/lang/Double;
    .end local v16    # "top":D
    .end local v18    # "bottom":D
    .end local v20    # "childWidth":D
    :cond_6
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v22

    move-object/from16 v12, v22

    .line 301
    .local v12, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v22

    move-wide/from16 v24, v7

    add-double v22, v22, v24

    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v3, v22

    .end local v3    # "this":Ljavafx/scene/layout/AnchorPane;
    return-wide v3
.end method

.method private computeWidth(ZD)D
    .locals 34

    .prologue
    .line 258
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/AnchorPane;
    move/from16 v4, p1

    .local v4, "minimum":Z
    move-wide/from16 v5, p2

    .local v5, "height":D
    const-wide/16 v22, 0x0

    move-wide/from16 v7, v22

    .line 259
    .local v7, "max":D
    move-wide/from16 v22, v5

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_1

    move-wide/from16 v22, v5

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/AnchorPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/AnchorPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v24

    sub-double v22, v22, v24

    :goto_0
    move-wide/from16 v9, v22

    .line 260
    .local v9, "contentHeight":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getManagedChildren()Ljava/util/List;

    move-result-object v22

    move-object/from16 v11, v22

    .line 261
    .local v11, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v22, v11

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v12, v22

    :goto_1
    move-object/from16 v22, v12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v22, v12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/Node;

    move-object/from16 v13, v22

    .line 262
    .local v13, "child":Ljavafx/scene/Node;
    move-object/from16 v22, v13

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getLeftAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v14, v22

    .line 263
    .local v14, "leftAnchor":Ljava/lang/Double;
    move-object/from16 v22, v13

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getRightAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v15, v22

    .line 265
    .local v15, "rightAnchor":Ljava/lang/Double;
    move-object/from16 v22, v14

    if-eqz v22, :cond_2

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 266
    :goto_2
    move-wide/from16 v16, v22

    .line 267
    .local v16, "left":D
    move-object/from16 v22, v15

    if-eqz v22, :cond_4

    move-object/from16 v22, v15

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    :goto_3
    move-wide/from16 v18, v22

    .line 268
    .local v18, "right":D
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    move-wide/from16 v20, v22

    .line 269
    .local v20, "childHeight":D
    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-wide/from16 v22, v9

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_0

    .line 271
    move-object/from16 v22, v3

    move-object/from16 v23, v13

    move-object/from16 v24, v13

    invoke-static/range {v24 .. v24}, Ljavafx/scene/layout/AnchorPane;->getTopAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v25, v13

    invoke-static/range {v25 .. v25}, Ljavafx/scene/layout/AnchorPane;->getBottomAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v25

    move-wide/from16 v26, v9

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/AnchorPane;->computeChildHeight(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 273
    :cond_0
    move-wide/from16 v22, v7

    move-wide/from16 v24, v16

    move/from16 v26, v4

    if-eqz v26, :cond_5

    move-object/from16 v26, v14

    if-eqz v26, :cond_5

    move-object/from16 v26, v15

    if-eqz v26, :cond_5

    move-object/from16 v26, v13

    move-wide/from16 v27, v20

    .line 274
    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v26

    :goto_4
    add-double v24, v24, v26

    move-wide/from16 v26, v18

    add-double v24, v24, v26

    .line 273
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v7, v22

    .line 275
    goto/16 :goto_1

    .line 259
    .end local v9    # "contentHeight":D
    .end local v11    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v13    # "child":Ljavafx/scene/Node;
    .end local v14    # "leftAnchor":Ljava/lang/Double;
    .end local v15    # "rightAnchor":Ljava/lang/Double;
    .end local v16    # "left":D
    .end local v18    # "right":D
    .end local v20    # "childHeight":D
    :cond_1
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 265
    .restart local v9    # "contentHeight":D
    .restart local v11    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .restart local v13    # "child":Ljavafx/scene/Node;
    .restart local v14    # "leftAnchor":Ljava/lang/Double;
    .restart local v15    # "rightAnchor":Ljava/lang/Double;
    :cond_2
    move-object/from16 v22, v15

    if-eqz v22, :cond_3

    const-wide/16 v22, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v22, v13

    .line 266
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v22

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->getLayoutX()D

    move-result-wide v24

    add-double v22, v22, v24

    goto/16 :goto_2

    .line 267
    .restart local v16    # "left":D
    :cond_4
    const-wide/16 v22, 0x0

    goto :goto_3

    .line 274
    .restart local v18    # "right":D
    .restart local v20    # "childHeight":D
    :cond_5
    move-object/from16 v26, v3

    move-object/from16 v27, v13

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    const/16 v30, 0x0

    move-wide/from16 v31, v20

    const/16 v33, 0x0

    invoke-virtual/range {v26 .. v33}, Ljavafx/scene/layout/AnchorPane;->computeChildPrefAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v26

    goto :goto_4

    .line 277
    .end local v13    # "child":Ljavafx/scene/Node;
    .end local v14    # "leftAnchor":Ljava/lang/Double;
    .end local v15    # "rightAnchor":Ljava/lang/Double;
    .end local v16    # "left":D
    .end local v18    # "right":D
    .end local v20    # "childHeight":D
    :cond_6
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v22

    move-object/from16 v12, v22

    .line 278
    .local v12, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v22

    move-wide/from16 v24, v7

    add-double v22, v22, v24

    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v3, v22

    .end local v3    # "this":Ljavafx/scene/layout/AnchorPane;
    return-wide v3
.end method

.method public static getBottomAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;
    .locals 3

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "pane-bottom-anchor"

    invoke-static {v1, v2}, Ljavafx/scene/layout/AnchorPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static getLeftAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "pane-left-anchor"

    invoke-static {v1, v2}, Ljavafx/scene/layout/AnchorPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static getRightAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "pane-right-anchor"

    invoke-static {v1, v2}, Ljavafx/scene/layout/AnchorPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static getTopAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "pane-top-anchor"

    invoke-static {v1, v2}, Ljavafx/scene/layout/AnchorPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static setBottomAnchor(Ljavafx/scene/Node;Ljava/lang/Double;)V
    .locals 5

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Double;
    move-object v2, v0

    const-string v3, "pane-bottom-anchor"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/AnchorPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public static setLeftAnchor(Ljavafx/scene/Node;Ljava/lang/Double;)V
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Double;
    move-object v2, v0

    const-string v3, "pane-left-anchor"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/AnchorPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public static setRightAnchor(Ljavafx/scene/Node;Ljava/lang/Double;)V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Double;
    move-object v2, v0

    const-string v3, "pane-right-anchor"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/AnchorPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public static setTopAnchor(Ljavafx/scene/Node;Ljava/lang/Double;)V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Double;
    move-object v2, v0

    const-string v3, "pane-top-anchor"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/AnchorPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected computeMinHeight(D)D
    .locals 9

    .prologue
    .line 246
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/AnchorPane;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    const/4 v5, 0x1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/AnchorPane;->computeHeight(ZD)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/AnchorPane;
    return-wide v1
.end method

.method protected computeMinWidth(D)D
    .locals 9

    .prologue
    .line 242
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/AnchorPane;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    const/4 v5, 0x1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/AnchorPane;->computeWidth(ZD)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/AnchorPane;
    return-wide v1
.end method

.method protected computePrefHeight(D)D
    .locals 9

    .prologue
    .line 254
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/AnchorPane;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    const/4 v5, 0x0

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/AnchorPane;->computeHeight(ZD)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/AnchorPane;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 9

    .prologue
    .line 250
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/AnchorPane;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    const/4 v5, 0x0

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/AnchorPane;->computeWidth(ZD)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/AnchorPane;
    return-wide v1
.end method

.method protected layoutChildren()V
    .locals 31

    .prologue
    .line 321
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/AnchorPane;
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v22

    move-object/from16 v4, v22

    .line 322
    .local v4, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getManagedChildren()Ljava/util/List;

    move-result-object v22

    move-object/from16 v5, v22

    .line 323
    .local v5, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v6, v22

    :goto_0
    move-object/from16 v22, v6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v22, v6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/Node;

    move-object/from16 v7, v22

    .line 324
    .local v7, "child":Ljavafx/scene/Node;
    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getTopAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v8, v22

    .line 325
    .local v8, "topAnchor":Ljava/lang/Double;
    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getBottomAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v9, v22

    .line 326
    .local v9, "bottomAnchor":Ljava/lang/Double;
    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getLeftAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v10, v22

    .line 327
    .local v10, "leftAnchor":Ljava/lang/Double;
    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getRightAnchor(Ljavafx/scene/Node;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v11, v22

    .line 328
    .local v11, "rightAnchor":Ljava/lang/Double;
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v22

    move-object/from16 v12, v22

    .line 329
    .local v12, "childLayoutBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v22

    move-object/from16 v13, v22

    .line 331
    .local v13, "bias":Ljavafx/geometry/Orientation;
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getLayoutX()D

    move-result-wide v22

    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 332
    .local v14, "x":D
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v22

    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 336
    .local v16, "y":D
    move-object/from16 v22, v13

    sget-object v23, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 340
    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/AnchorPane;->getHeight()D

    move-result-wide v26

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/AnchorPane;->computeChildHeight(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 341
    .local v20, "h":D
    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/AnchorPane;->getWidth()D

    move-result-wide v26

    move-wide/from16 v28, v20

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/AnchorPane;->computeChildWidth(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 351
    .local v18, "w":D
    :goto_1
    move-object/from16 v22, v10

    if-eqz v22, :cond_4

    .line 352
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v22

    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 357
    :cond_0
    :goto_2
    move-object/from16 v22, v8

    if-eqz v22, :cond_5

    .line 358
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v22

    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 363
    :cond_1
    :goto_3
    move-object/from16 v22, v7

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    move-wide/from16 v27, v18

    move-wide/from16 v29, v20

    invoke-virtual/range {v22 .. v30}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 364
    goto/16 :goto_0

    .line 342
    .end local v18    # "w":D
    .end local v20    # "h":D
    :cond_2
    move-object/from16 v22, v13

    sget-object v23, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 343
    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/AnchorPane;->getWidth()D

    move-result-wide v26

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/AnchorPane;->computeChildWidth(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 344
    .restart local v18    # "w":D
    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/AnchorPane;->getHeight()D

    move-result-wide v26

    move-wide/from16 v28, v18

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/AnchorPane;->computeChildHeight(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .restart local v20    # "h":D
    goto :goto_1

    .line 347
    .end local v18    # "w":D
    .end local v20    # "h":D
    :cond_3
    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/AnchorPane;->getWidth()D

    move-result-wide v26

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/AnchorPane;->computeChildWidth(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 348
    .restart local v18    # "w":D
    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/AnchorPane;->getHeight()D

    move-result-wide v26

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-direct/range {v22 .. v29}, Ljavafx/scene/layout/AnchorPane;->computeChildHeight(Ljavafx/scene/Node;Ljava/lang/Double;Ljava/lang/Double;DD)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .restart local v20    # "h":D
    goto/16 :goto_1

    .line 353
    :cond_4
    move-object/from16 v22, v11

    if-eqz v22, :cond_0

    .line 354
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getWidth()D

    move-result-wide v22

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-wide/from16 v24, v18

    sub-double v22, v22, v24

    move-wide/from16 v14, v22

    goto/16 :goto_2

    .line 359
    :cond_5
    move-object/from16 v22, v9

    if-eqz v22, :cond_1

    .line 360
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/AnchorPane;->getHeight()D

    move-result-wide v22

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-wide/from16 v24, v20

    sub-double v22, v22, v24

    move-wide/from16 v16, v22

    goto/16 :goto_3

    .line 365
    .end local v7    # "child":Ljavafx/scene/Node;
    .end local v8    # "topAnchor":Ljava/lang/Double;
    .end local v9    # "bottomAnchor":Ljava/lang/Double;
    .end local v10    # "leftAnchor":Ljava/lang/Double;
    .end local v11    # "rightAnchor":Ljava/lang/Double;
    .end local v12    # "childLayoutBounds":Ljavafx/geometry/Bounds;
    .end local v13    # "bias":Ljavafx/geometry/Orientation;
    .end local v14    # "x":D
    .end local v16    # "y":D
    .end local v18    # "w":D
    .end local v20    # "h":D
    :cond_6
    return-void
.end method
